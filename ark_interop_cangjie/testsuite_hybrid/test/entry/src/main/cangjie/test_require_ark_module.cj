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

package ohos_app_cangjie_entry

import std.unittest.*
import std.unittest.testmacro.*
import ohos.ark_interop.*
import ohos.business_exception.*

@Test
class TestRequireArkModule {
    static func loadAndCall(context: JSContext, specifier: String) {
        var value = context.requireArkModule(specifier)
        @Expect(value.isObject())
        let module = value.asObject()
        value = module["call"]
        @Expect(value.isFunction())
        let call = value.asFunction()
        call.call()
    }

    static func callSync(context: JSContext, callback: ()->Unit): Unit {
        await (context) {
            context.global.callMethod("callSync", context.function { context, _ =>
                callback()
                context.undefined().toJSValue()
            }.toJSValue())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLoadLocal
     * @tc.name      : testLoadLocal
     * @tc.desc      : check application info_test_testLoadLocal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLoadLocal() {
        let context = getJSContext()
        callSync (context) {
            loadAndCall(context, "entry/src/main/ets/localets")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLoadHar
     * @tc.name      : testLoadHar
     * @tc.desc      : check application info_test_testLoadHar
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLoadHar() {
        let context = getJSContext()
        callSync (context) {
            loadAndCall(context, "localhar/src/main/ets/Local")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLoadHsp
     * @tc.name      : testLoadHsp
     * @tc.desc      : check application info_test_testLoadHsp
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLoadHsp() {
        let context = getJSContext()
        callSync (context) {
            loadAndCall(context, "localhsp/src/main/ets/Local")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testAppNapi
     * @tc.name      : testAppNapi
     * @tc.desc      : check application info_test_testAppNapi
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testAppNapi() {
        let context = getJSContext()
        callSync (context) {
            loadAndCall(context, "libentry_c.so")
        }
    }

    static func loadOnly(context: JSContext, specifier: String) {
        var value = context.requireArkModule(specifier)
        @Expect(value.isObject())
        value.asObject()
    }

    /*
     * @tc.number    : Sub_Cangjie_testOhpmHar
     * @tc.name      : testOhpmHar
     * @tc.desc      : check application info_test_testOhpmHar
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testOhpmHar() {
        let context = getJSContext()
        callSync (context) {
            let module = loadOnly(context, "@ohos/lottie/src/main/js/main")
            let variable = module["initialDefaultFrame"]
            @Expect(variable.isNumber())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testPubSys
     * @tc.name      : testPubSys
     * @tc.desc      : check application info_test_testPubSys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testPubSys() {
        let context = getJSContext()
        callSync (context) {
            let module = loadOnly(context, "@ohos.hilog")
            let value = module["info"]
            @Expect(value.isFunction())
            let info = value.asFunction()
            info.call(
                context.number(0).toJSValue(),
                context.string("test").toJSValue(),
                context.string("call pub sys").toJSValue()
            )
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testHmsNapi
     * @tc.name      : testHmsNapi
     * @tc.desc      : check application info_test_testHmsNapi
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testHmsNapi() {
        let context = getJSContext()
        callSync (context) {
            let module = loadOnly(context, "@hms.core.AAID")
            let result = module.callMethod("getAAID")
            @Expect(result.isPromise())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testHmsHsp
     * @tc.name      : testHmsHsp
     * @tc.desc      : check application info_test_testHmsHsp
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testHmsHsp() {
        let context = getJSContext()
        callSync (context) {
            let module = loadOnly(context, "@hms.ai.interactiveLiveness")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testPubSysKit
     * @tc.name      : testPubSysKit
     * @tc.desc      : check application info_test_testPubSysKit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testPubSysKit() {
        let context = getJSContext()
        callSync (context) {
            let module = loadOnly(context, "@kit.PerformanceAnalysisKit")
            let hilog = module["hilog"].asObject()
            hilog.callMethod("info", [
                context.number(0).toJSValue(),
                context.string("test").toJSValue(),
                context.string("call pub sys kit").toJSValue()
            ])
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLoadFail
     * @tc.name      : testLoadFail
     * @tc.desc      : check application info_test_testLoadFail
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLoadFail() {
        let context = getJSContext()
        callSync (context) {
            let sources = [
                "localhar",
                "localhsp"
            ]
            for (src in sources) {
                try {
                    context.requireArkModule(src)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 34300006)
                }
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_failLoadSys
     * @tc.name      : failLoadSys
     * @tc.desc      : check application info_test_failLoadSys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func failLoadSys() {
        let context = getJSContext()
        callSync(context) {
            let sources = [
                "@ohos.neverExist",
                "@hms.neverExist"
            ]
            for (src in sources) {
                try {
                    context.requireArkModule(src)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 34300006)
                }
            }
        }
    }
}