/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ohos_app_cangjie_entry_test.unittest_support

import std.fs.Path
import std.fs.Directory
import std.collection.filter
import std.fs.FileInfo
import std.collection.first
import std.fs.File
import std.collection.forEach
import std.collection.ArrayList
import std.convert.Parsable
import std.collection.any
import std.collection.HashMap
import std.collection.ArrayList
import std.unittest.common.Configuration
import std.unittest.TestClass
import std.unittest.TestSuite
import std.unittest.XmlReporter
import kit.AbilityKit.BundleManager
import kit.AbilityKit.BundleFlag
import kit.AbilityKit.Want
import kit.PerformanceAnalysisKit.Hilog
import kit.TestKit.AbilityDelegatorRegistry
import kit.TestKit.AbilityDelegator
import kit.TestKit.TestRunner
import std.env.setVariable
import std.unittest.KeyDryRun
import std.unicode.UnicodeStringExtension
import std.convert.*

@When[coverage == "true"]
foreign func __gcov_dump(): Unit

@When[coverage == "true"]
public func gcov_dump(coveragePath: String): Unit {
    Hilog.info(0, "Cangjie-Test", "execute test with coverage")
    unsafe { __gcov_dump() }
    let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
    abilityDelegator.print("GENERATE_COVERAGE: ${coveragePath}")
}

@When[coverage == "false"]
public func gcov_dump(coveragePath: String): Unit {
    Hilog.info(0, "Cangjie-Test", "execute test without coverage")
}

public func registerTestSuite(testClassInstanceGenerator: () -> TestClass): Unit {
    OpenHarmonyTestRunner
        .testClassInstanceGenerators
        .add(testClassInstanceGenerator)
}

public class OpenHarmonyTestRunner <: TestRunner {
    public static let configuration = Configuration()
    public static let testSuiteMap = HashMap<String, TestSuite>()
    public static let testClassInstanceGenerators = ArrayList<() -> TestClass>()
    private static func getDetailedInfoOf(e: Exception): String {
        let sb = StringBuilder("exception: ${e.toString()}\n")
        e.getStackTrace() |> forEach {
            s => sb.append("         at ${s.declaringClass}.${s.methodName}(${s.fileName}:${s.lineNumber})\n")
        }
        sb.toString()
    }

    private static func joinStrings(list: ArrayList<String>, separator: String): String {
        if (list.isEmpty()) {
            return ""
        }
        let sb = StringBuilder()
        for (i in 0..list.size) {
            if (i > 0) {
                sb.append(separator)
            }
            sb.append(list[i])
        }
        sb.toString()
    }

    private func readXmlFileLineByLine(testClassName: String, abilityDelegator: AbilityDelegator): Unit {
        let testReportXmlFileName = "test-default.${testClassName}.xml"
        match (Directory.readFrom("/data/storage/el1/base/tests") |>
            filter {fileInfo => fileInfo.name == testReportXmlFileName} |> first) {
            case None =>
                Hilog.error(1, "Cangjie-Test", "${testReportXmlFileName} not found.")
                return
            case Some(testReportXmlFileInfo) =>
                let testReportXmlFilePath = testReportXmlFileInfo.path
                let testReportXmlFileContent = File.readFrom(testReportXmlFilePath)
                let xmlString = removeSkippedTestcases(String.fromUtf8(testReportXmlFileContent))
                let lines = xmlString.split("\n", removeEmpty: true)
                var lineIndex = 0
                let tempArray = ArrayList<String>()
                for (line in lines) {
                    let trimmedLine = line.trimAscii()
                    if (trimmedLine.isEmpty()) {
                        continue
                    }
                    tempArray.add(line)
                    lineIndex++
                    if (tempArray.size == 20) {
                        let output = OpenHarmonyTestRunner.joinStrings(tempArray, "\n")
                        abilityDelegator.print(output)
                        tempArray.clear()
                    }
                }
                if (tempArray.size > 0) {
                    let output = OpenHarmonyTestRunner.joinStrings(tempArray, "\n")
                    abilityDelegator.print(output)
                }
                Hilog.info(0, "Cangjie-Test", "Total lines read: ${lineIndex}")
        }
    }

    private func removeSkippedTestcases(xml: String): String {
        func isIndentChar(b: Byte): Bool {
            return b == 32 || b == 9
        }

        func lineStart(pos: Int64): Int64 {
            var i = pos
            while (i > 0 && xml[i - 1] != 10 && xml[i - 1] != 13) {
                i--
            }
            return i
        }

        func canRemoveIndent(from: Int64, to: Int64): Bool {
            var i = from
            while (i < to) {
                if (!isIndentChar(xml[i])) {
                    return false
                }
                i++
            }
            return true
        }

        func nextLine(pos: Int64): Int64 {
            if (pos < xml.size && xml[pos] == 13) {
                return if (pos + 1 < xml.size && xml[pos + 1] == 10) {
                    pos + 2
                } else {
                    pos + 1
                }
            }
            return if (pos < xml.size && xml[pos] == 10) {
                pos + 1
            } else {
                pos
            }
        }

        func decreaseAttr(tag: String, name: String, count: Int64): String {
            let key = name + "=\""
            if (let None <- tag.indexOf(key)) {
                return tag
            }

            let valueStart = tag
                .indexOf(key)
                .getOrThrow() + key.size
            let valueEnd = tag
                .indexOf("\"", valueStart)
                .getOrThrow()
            let oldValue = Int64.parse(tag[valueStart..valueEnd])
            let newValue = if (oldValue > count) {
                oldValue - count
            } else {
                0
            }

            return tag[0..valueStart] + "${newValue}" + tag[valueEnd..tag.size]
        }

        func updateTestsuiteAttrs(source: String, count: Int64): String {
            if (count == 0) {
                return source
            }

            let startOpt = source.indexOf("<testsuite")
            if (let None <- startOpt) {
                return source
            }

            let start = startOpt.getOrThrow()
            let end = source
                .indexOf(">", start)
                .getOrThrow()
            var tag = source[start..(end + 1)]

            tag = decreaseAttr(tag, "tests", count)
            tag = decreaseAttr(tag, "skipped", count)

            return source[0..start] + tag + source[(end + 1)..source.size]
        }

        func formatXml(source: String): String {
            let out = StringBuilder()
            var depth: Int64 = 0

            for (raw in source.lines()) {
                let line = raw.trimAscii()
                if (line.isEmpty()) {
                    continue
                }

                if (line.startsWith("</")) {
                    depth--
                }
                if (depth < 0) {
                    depth = 0
                }

                out.append("    " * depth)
                out.append(line)
                out.append("\n")

                if (line.startsWith("<") && !line.startsWith("</") && !line.startsWith("<?") && !line.startsWith("<!") &&
                    !line.endsWith("/>") && !line.contains("</")) {
                    depth++
                }
            }

            return out.toString()
        }

        let out = StringBuilder()
        var pos: Int64 = 0
        var removed: Int64 = 0

        while (true) {
            let startOpt = xml.indexOf("<testcase", pos)
            if (let None <- startOpt) {
                out.append(xml[pos..xml.size])
                break
            }

            let start = startOpt.getOrThrow()
            let endOpt = xml.indexOf("</testcase>", start)
            if (let None <- endOpt) {
                out.append(xml[pos..xml.size])
                break
            }

            let end = endOpt.getOrThrow() + "</testcase>".size
            let testcase = xml[start..end]

            if (testcase.contains("<skipped")) {
                let lineStartPos = lineStart(start)
                let removeStart = if (canRemoveIndent(lineStartPos, start)) {
                    lineStartPos
                } else {
                    start
                }

                out.append(xml[pos..removeStart])
                pos = nextLine(end)
                removed++
            } else {
                out.append(xml[pos..end])
                pos = end
            }
        }
        return formatXml(updateTestsuiteAttrs(out.toString(), removed))
    }

    private func executeTestClass(testClassName: String): Unit {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        Hilog.info(0, "Cangjie-Test", "EXECUTE_CLASS_START: \"${testClassName}\"")
        abilityDelegator.print("EXECUTE_CLASS_START: \"${testClassName}\"")
        let testSuite = match (OpenHarmonyTestRunner
            .testSuiteMap
            .get(testClassName)) {
            case None => return
            case Some(testClassInstanceGenerator) => testClassInstanceGenerator
        }

        testSuite
            .runTests(configuration)
            .reportTo(XmlReporter(Path("/data/storage/el1/base")))
        readXmlFileLineByLine(testClassName, abilityDelegator)

        Hilog.info(0, "Cangjie-Test", "EXECUTE_CLASS_END: \"${testClassName}\"")
        abilityDelegator.print("EXECUTE_CLASS_END: \"${testClassName}\"")
    }

    private func executeAllTestClasses(): Unit {
        for (testClassName in OpenHarmonyTestRunner
                .testSuiteMap
                .keys()) {
            executeTestClass(testClassName)
        }
    }
    private func executeTestCase(testClassName: String, testCaseName: String): Unit {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        abilityDelegator.print("EXECUTE_CLASS_START: \"${testClassName}\"")
        Hilog.info(0, "Cangjie-Test", "EXECUTE_METHOD_START: \"${testClassName}#${testCaseName}\"")
        let testSuite = match (OpenHarmonyTestRunner
            .testSuiteMap
            .get(testClassName)) {
            case None => return
            case Some(testClassInstanceGenerator) => testClassInstanceGenerator
        }
        let configuration = Configuration()
        configuration.setByName("filter", "${testClassName}.${testCaseName}")
        testSuite
            .runTests(configuration)
            .reportTo(XmlReporter(Path("/data/storage/el1/base")))
        readXmlFileLineByLine(testClassName, abilityDelegator)

        Hilog.info(0, "Cangjie-Test", "EXECUTE_METHOD_END: \"${testClassName}#${testCaseName}\"")
        abilityDelegator.print("EXECUTE_CLASS_END: \"${testClassName}\"")
    }

    private func reportTestReport(testReportName: String): Unit {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let abilityDelegatorArguments = AbilityDelegatorRegistry.getArguments()
        let bundleName = abilityDelegatorArguments.bundleName
        abilityDelegator.print("REPORT_TEST_RESULT: /data/app/el1/100/base/${bundleName}/tests/${testReportName}")
    }
    public override func onPrepare(): Unit {
        Hilog.info(0, "Cangjie-Test", "OpenHarmonyTestRunner onPrepare")
        for (testClassInstanceGenerator in OpenHarmonyTestRunner.testClassInstanceGenerators) {
            let testClassInstance = try {
                testClassInstanceGenerator()
            } catch (e: Exception) {
                Hilog.error(1, "Cangjie-Test",
                    "exception occurred during testsuite generation:\n${getDetailedInfoOf(e)}")
                continue
            }
            let testSuite = testClassInstance.asTestSuite()
            let testSuiteName = testSuite.name
            Hilog.info(0, "Cangjie-Test", "Registering TestSuite ${testSuiteName}")
            OpenHarmonyTestRunner
                .testSuiteMap
                .add(testSuiteName, testSuite)
        }
    }
    public override func onRun(): Unit {
        Hilog.info(0, "Cangjie-Test", "OpenHarmonyTestRunner onRun")
        let abilityDelegatorArguments = AbilityDelegatorRegistry.getArguments()
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        Hilog.info(0, "Cangjie-Test", "bundleName = ${abilityDelegatorArguments.bundleName}")
        Hilog.info(0, "Cangjie-Test",
            "abilityDelegatorArguments.testRunnerClassName = ${abilityDelegatorArguments.testRunnerClassName}")
        Hilog.info(0, "Cangjie-Test",
            "abilityDelegatorArguments.testCaseNames = ${abilityDelegatorArguments.testCaseNames}")
        Hilog.info(0, "Cangjie-Test", "abilityDelegatorArguments.parameters = ${abilityDelegatorArguments.parameters}")
        Hilog.info(0, "Cangjie-Test", "Started running tests.")
        abilityDelegator.print("OpenHarmonyTestRunner onRun")
        let parameters = abilityDelegatorArguments.parameters
        let bundleName = abilityDelegatorArguments.bundleName
        let bundleInfo = BundleManager.getBundleInfoForSelf(
            BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        let moduleName = match (parameters.get("-m")) {
            case None =>
                abilityDelegator.finishTest("Module name was not specified.", -1)
                return
            case Some(moduleName) =>
                if (bundleInfo.hapModulesInfo |> any {hapModuleInfo => hapModuleInfo.name == moduleName}) {
                    moduleName
                } else {
                    abilityDelegator.finishTest(
                        "No module with name \"${moduleName}\" was found in bundle ${bundleName}.", -1)
                    return
                }
        }

        let dryRun: Bool = match (parameters.get("-s dryRun")) {
            case None => false
            case Some(dryRun) => dryRun.toLower() == "true"
        }

        if (dryRun) {
            configuration.set(KeyDryRun.dryRun, true)
        }

        let abilityName = match (bundleInfo.hapModulesInfo |> filter {hapModuleInfo => hapModuleInfo.name == moduleName} |>
            first) {
            case None =>
                abilityDelegator.finishTest("No module with name \"${moduleName}\" was found in bundle ${bundleName}.",
                    -1)
                return
            case Some(hapModuleInfo) =>
                let mainElementName = hapModuleInfo.mainElementName
                Hilog.info(0, "Cangjie-Test", "mainElementName = ${mainElementName}")
                mainElementName
        }
        let want = Want(bundleName: bundleName, moduleName: moduleName, abilityName: abilityName)
        abilityDelegator.startAbility(want)
        let timeOut = match (parameters.get("-s timeout")) {
            case None => None<Int64>
            case Some(timeOutText) => match (Int64.tryParse(timeOutText)) {
                case None =>
                    abilityDelegator.finishTest("The parameter \"timeout\": ${timeOutText} is invalid", -1)
                    return
                case Some(timeOutValue) => timeOutValue
            }
        }
        spawn {
            try {
                match (parameters.get("-s class")) {
                    case None => executeAllTestClasses()
                    case Some(text) => text.split(",", removeEmpty: true) |> forEach {
                        t: String =>
                            let pair = t.split("#", removeEmpty: true)
                            let testClassName = match (pair.get(0)) {
                                case None => return
                                case Some(text) => text.trimAscii()
                            }
                            match (pair.get(1)) {
                                case None => executeTestClass(testClassName)
                                case Some(testCaseName) => executeTestCase(testClassName, testCaseName)
                            }
                    }
                }
            } catch (e: Exception) {
                Hilog.error(1, "Cangjie-Test", "an exception occurred:\n${getDetailedInfoOf(e)}")
            }
            setVariable("GCOV_PREFIX", "/data/storage/el1/base/cov")
            gcov_dump("/data/app/el1/100/base/${bundleName}/cov/")
            if (dryRun) {
                abilityDelegator.finishTest("DryRun test finished.", 0)
            } else {
                abilityDelegator.finishTest("Test finished.", 0)
            }
        }
    }
}

let _ = TestRunner.registerCreator("OpenHarmonyTestRunner") {OpenHarmonyTestRunner()}