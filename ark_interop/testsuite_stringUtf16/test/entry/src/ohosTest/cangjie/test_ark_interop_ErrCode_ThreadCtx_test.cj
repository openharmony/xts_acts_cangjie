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

package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import std.sync.*
import std.time.*

let sharedThreadRuntime = JSRuntime()
let sharedThreadContext = sharedThreadRuntime.mainContext

@Test
class TestErrCodeThreadCtx {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0500
     * @tc.name      : testThreadMismatchGlobal
     * @tc.desc      : 测试非绑定线程 spawn 内访问 JSContext.global 属性抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchGlobal(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.global.toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0510
     * @tc.name      : testThreadMismatchEnv
     * @tc.desc      : 测试非绑定线程 spawn 内访问 JSContext.env 属性抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchEnv(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.env
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }



    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0520
     * @tc.name      : testThreadMismatchNull
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.null() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchNull(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.null().toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0530
     * @tc.name      : testThreadMismatchBoolean
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.boolean() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchBoolean(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.boolean(true).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0540
     * @tc.name      : testThreadMismatchString
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.string() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchString(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.string("t").toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0550
     * @tc.name      : testThreadMismatchObject
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.object() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchObject(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.object().toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0560
     * @tc.name      : testThreadMismatchFunction
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.function() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchFunction(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.function({ ctx: JSContext, _: JSCallInfo => ctx.undefined().toJSValue() }).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0570
     * @tc.name      : testThreadMismatchArray
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.array() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchArray(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.array([context.number(1.0f64).toJSValue()]).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0580
     * @tc.name      : testThreadMismatchClazz
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.clazz() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchClazz(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.clazz({ ctx: JSContext, _: JSCallInfo => ctx.object().toJSValue() }).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0590
     * @tc.name      : testThreadMismatchExternal
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.external() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchExternal(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.external(MyData()).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0600
     * @tc.name      : testThreadMismatchPromiseCapability
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.promiseCapability() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchPromiseCapability(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.promiseCapability().toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0610
     * @tc.name      : testThreadMismatchArrayBuffer
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.arrayBuffer() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchArrayBuffer(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.arrayBuffer(8i32).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0620
     * @tc.name      : testThreadMismatchSymbol
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.symbol() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchSymbol(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.symbol(description: "t").toJSValue(context)
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0630
     * @tc.name      : testThreadMismatchBigint
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.bigint() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchBigint(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.bigint(1i64).toJSValue()
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0640
     * @tc.name      : testThreadMismatchRequireSystemNativeModule
     * @tc.desc      : 测试非绑定线程 spawn 内调用 JSContext.requireSystemNativeModule() 抛 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testThreadMismatchRequireSystemNativeModule(): Unit {
        let context = sharedThreadContext
        let result = AtomicInt32(0)
        let done = AtomicBool(false)
        spawn {
            try {
                let _ = context.requireSystemNativeModule("hilog")
            } catch (e: BusinessException) {
                result.store(e.code)
            }
            done.store(true)
        }
        var waited = 0
        while (!done.load() && waited < 100) {
            sleep(Duration.millisecond * 20)
            waited++
        }
        @Expect(done.load())
        @Expect(result.load(), 34300004i32)
    }

}
