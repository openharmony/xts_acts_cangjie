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

package entry

import ohos.hilog.*
import std.collection.{forEach}
import std.math.{MathExtension, abs}
import std.convert.*
import std.process.*

class HilogChannel {
    HilogChannel(
        let domain: UInt32,
        let kind: Int32,
        let tag: String
    ) {}

    func debug(message: String): Unit {
        Hilog.debug(domain, tag, message)
    }

    func info(message: String): Unit {
        Hilog.info(domain, tag, message)
    }

    func warn(message: String): Unit {
        Hilog.warn(domain, tag, message)
    }

    func error(message: String): Unit {
        Hilog.error(domain, tag, message)
    }
}

let _ = {
    => Process.current.setEnv("GCOV_PREFIX", "/data/storage/el1/base/cov")
}()

@FastNative
foreign func dlsym(handle: CPointer<Unit>, name: CString): CPointer<Unit>

func gcov_dump(): Unit {
    unsafe {
        let cName = LibC.mallocCString("__gcov_dump")
        let handle = dlsym(CPointer<Unit>(), cName)
        LibC.free(cName)
        if (handle.isNull()) {
            return
        }
        let call = CFunc<() -> Unit>(handle)
        call()
    }
    Hilog.error(0, "test", "call gcov_dump")
}

let logger = HilogChannel(0, 0, "CangjieTest")

foreign func malloc(size: UIntNative): CPointer<Unit>

foreign func free(cPointer: CPointer<Unit>): Unit

public class Assert {
    public static func isFalse(actual: Bool, reason!: String = "") {
        if (actual) {
            let message = "isFalse, result=true, reason=${reason}"
            logger.error(message)
            fail(message, reason)
        } else {
            logger.info("isFalse, result=false, reason=${reason}")
        }
    }
    public static func isTrue(actual: Bool, reason!: String = "") {
        if (actual) {
            logger.info("isTrue, result=true, reason=${reason}")
        } else {
            let message = "isTrue, result=false, reason=${reason}"
            logger.error(message)
            fail(message, reason)
        }
    }
    public static func isUnreachable(reason!: String = "") {
        logger.error("unreachable, ${reason}")
        fail("isUnreachable", reason)
    }
    public static func isNone<T>(actual: Option<T>, reason!: String = "") {
        let argStr = if (actual is ToString) {
            "(${actual as ToString ?? ""})"
        } else {
            ""
        }
        match (actual) {
            case None => ()
            case Some(_) => fail("isNone${argStr}", reason)
        }
    }
    public static func isSome<T>(actual: Option<T>, reason!: String = "") {
        match (actual) {
            case None => fail("isSome", reason)
            case Some(_) => ()
        }
    }
    public static func notEquals<T>(unexpected: T, actual: T, reason!: String = "") where T <: Equatable<T> {
        if (unexpected == actual) {
            let argStr = if (actual is ToString) {
                "(unexpected='${unexpected as ToString ?? ""}', actual='${actual as ToString ?? ""}')"
            } else {
                ""
            }
            logger.error("notEquals${argStr}")
        } else {
            logger.info("notEquals success")
        }
    }
    public static func equals<T>(expected: T, actual: T, reason!: String = "") where T <: Equatable<T> {
        if (expected != actual) {
            let argStr = if (actual is ToString) {
                "(expected='${expected as ToString ?? ""}', actual='${actual as ToString ?? ""}')"
            } else {
                ""
            }
            throw AssertException(argStr)
        } else {
        }
    }
    public static func approxEquals(expected: Float64, actual: Float64, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-4, reason: reason)
    }
    public static func approxEquals(expected: Float32, actual: Float32, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-3f32, reason: reason)
    }
    public static func approxEquals(expected: Float16, actual: Float16, reason!: String = "") {
        approxEquals(expected, actual, abs(expected) * 1e-2f16, reason: reason)
    }
    public static func approxEquals(expected: Float64, actual: Float64, tolerance: Float64, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            logger.error(
                """
approxEquals64(expected =${expected.format(".30e")},
                                           actual   =${actual
                    .format(".30e")},
                                           tolerance=${tolerance})""")
        } else {
            logger.info("approxEquals success: ${reason}")
        }
    }
    public static func approxEquals(expected: Float32, actual: Float32, tolerance: Float32, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            fail(
                """
approxEquals32(expected =${expected.format(".20e")},
                                           actual   =${actual
                    .format(".20e")},
                                           tolerance=${tolerance})""",
                reason
            )
        }
    }
    public static func approxEquals(expected: Float16, actual: Float16, tolerance: Float16, reason!: String = "") {
        let actualTolerance = abs(expected - actual)
        if (isNaN(actualTolerance) || isNaN(tolerance) || actualTolerance > tolerance) {
            fail(
                """
approxEquals16(expected =${expected.format(".10e")},
                                           actual   =${actual
                    .format(".10e")},
                                           tolerance=${tolerance})""",
                reason
            )
        }
    }
    public static func throws(f: () -> Unit, check!: (Exception) -> Bool = {_ => true}, reason!: String = "") {
        try {
            f()
        } catch (e: Exception) {
            if (check(e)) {
                return
            }
            let exceptionMessage = e.toString().lazySplit("\n").next() ?? ""
            let reasonStr = if (reason.isEmpty()) {
                ""
            } else {
                " Reason: '${reason}'"
            }
            throw AssertException(
                "Assertion 'throws' failed: the exception with the message '${exceptionMessage}' is not what was expected.${reasonStr}"
            )
        }
        fail("throws", reason)
    }
}

public class AssertException <: Exception {
    public AssertException(private let assertionMessage: String) {}
    public override func toString(): String {
        "AssertException: ${this.assertionMessage}"
    }
}

func isNaN<T>(item: T): Bool {
    false
}

func fail(assertionName: String, reason: String) {
    try {
        throw Exception()
    } catch (e: Exception) {
        let sb = StringBuilder(assertionName)
        sb.append("\n")
        e.getStackTrace() |>
            forEach<StackTraceElement> {
            s: StackTraceElement => sb.append(
                "\t\tat ${s.declaringClass}.${s.methodName}(${s.fileName}:${s.lineNumber})\n")
        }
        logger.error(sb.toString())
    }
}
