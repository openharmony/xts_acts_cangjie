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

import ohos.ark_interop.*
import std.unittest.testmacro.*
import std.unittest.*

@Test
class TestJSContext {
    /*
     * @tc.number    : Sub_Cangjie_testRequireSystemModules
     * @tc.name      : testRequireSystemModules
     * @tc.desc      : check application info_test_testRequireSystemModules
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testRequireSystemModules(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            let hilog = jsContext.requireSystemNativeModule("hilog")
            let pushService = jsContext.requireSystemNativeModule("core.push.pushService", prefix: "hms")
            let obj = hilog.asObject()
            let arkTSParams = [
                jsContext.number(0).toJSValue(),
                jsContext.string("TEST").toJSValue(),
                jsContext.string("test log").toJSValue()
            ]
            obj.callMethod("info", arkTSParams)
            let arkTSParams2 = [jsContext.string("TEST").toJSValue(), jsContext.string("test log").toJSValue()]
            obj.callMethod("info", arkTSParams2)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testExceptions
     * @tc.name      : testExceptions
     * @tc.desc      : check application info_test_testExceptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testExceptions() {
        let jsContext = getJSContext()
        let napiEnv = await(jsContext) {jsContext.getNapiEnv()}
        var err0 = false
        try {
            await(jsContext) {jsContext.arrayBuffer(0)}
        } catch (e: Exception) {
            err0 = true
        }
        @Expect(err0)
    }
}
