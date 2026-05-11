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

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import std.collection.*
import std.fs.*
import std.sync.*
import ohos.ark_interop.*
import ohos.hilog.*

private var curContext_: ?JSContext = None
private let allTests_ = HashMap<String, TestClass>()

func registerTestSuite(name: String, creator: () -> TestClass): Unit {
    allTests_.add(name, creator())
}

private func runAllTests(context: JSContext): Unit {
    curContext_ = context

    let reporter = XmlReporter(Path("/data/storage/el1/base/report"))
    let reports = ArrayList<(String, TestReport)>()

    for ((name, clazz) in allTests_) {
        let suite = clazz.asTestSuite()
        let report = suite.runTests()
        reports.add((name, report))
    }
    for ((name, report) in reports) {
        report.reportTo(reporter)
        Hilog.error(0, "unittest", "resulting: ${name}, passed: ${report.passedCount}/${report.caseCount}")
    }
}

let _ = JSModule.registerFunc("runPureTests") {
    context => return context.function {
        context, _ =>
        let promise = context.promiseCapability()
        let result = promise.toJSValue()
        spawn {
            runAllTests(context)
            context.postJSTask {
                promise.resolve(context.undefined().toJSValue())
            }
        }
        return result
    }
}

func getJSContext(): JSContext {
    curContext_.getOrThrow()
}

private enum Result<T, E> {
    | Ok(T)
    | Err(E)
}

func await<T>(context: JSContext, f: () -> T): T {
    if (context.isInBindThread()) {
        return f()
    }
    let result = Box(None<Result<T, Exception>>)
    let monitor = Monitor()
    context.postJSTask {
        result.value = try {
            Result.Ok(f())
        } catch (e: Exception) {
            Result.Err(e)
        } finally {
            synchronized(monitor) {
                monitor.notify()
            }
        }
    }

    synchronized(monitor) {
        monitor.wait(timeout: Duration.second * 6)
    }
    match (result.value) {
        case None => throw Exception("await timeout")
        case Some(result) => match (result) {
            case Ok(value) => value
            case Err(e) => throw e
        }
    }
}
