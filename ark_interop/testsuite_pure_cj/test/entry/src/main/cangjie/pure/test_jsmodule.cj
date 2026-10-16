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
import std.unittest.common.*
import ohos.ark_interop.*
import ohos.business_exception.*

@Test
class TestJSModule {
    /*
     * @tc.number    : Sub_Cangjie_ark_interop_JSModule_registerModule_0100
     * @tc.name      : testRegisterModuleWithName
     * @tc.desc      : test JSModule.registerModule(name, register) 26.0.0 overload by registering a named module with a ModuleRegister function
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRegisterModuleWithName(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            JSModule.registerModule("testNamedModule_0100", { ctx, obj =>
                obj["hello"] = ctx.string("world").toJSValue()
            })
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_JSModule_registerModule_0200
     * @tc.name      : testRegisterModuleWithNameThreadMismatch
     * @tc.desc      : test JSModule.registerModule(name, register) negative case - calling from non-JS thread should throw BusinessException with code 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRegisterModuleWithNameThreadMismatch(): Unit {
        let jsContext = getJSContext()
        var caught = false
        try {
            JSModule.registerModule("testNamedModule_0200", { ctx, obj =>
                ()
            })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300004i32)
            caught = true
        }
        @Expect(caught)
    }
}
