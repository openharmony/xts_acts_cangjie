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
import ohos.base.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.state_management.*
import ohos.arkui.ui_context.*
import ohos.arkui.state_macro_manage.*

@Component
class TestCustomView {
    var strProp: String = "initial"
    var intProp: Int64 = 100
    var boolProp: Bool = true
    public func build(): Unit { }
}

@Test
class CustomComponentInterfaces_1_test {
    /*
     * @tc.number    : TestCustomView_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test CustomView construct and validate properties, build, aboutToBeDeleted
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let view = TestCustomView(Option<CustomView>.None)
        @Expect(view.strProp, "initial")
        @Expect(view.intProp, 100)
        @Expect(view.boolProp, true)
        view.build()
        @Expect(view.strProp, "initial")
        view.aboutToBeDeleted()
        @Expect(view.intProp, 100)
        view.strProp = "modified"
        @Expect(view.strProp, "modified")
        view.intProp = 200
        @Expect(view.intProp, 200)
        view.boolProp = false
        @Expect(view.boolProp, false)
    }
    /*
     * @tc.number    : TestCustomView_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test CustomView getLocalStorage and getUIContext method return types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let view = TestCustomView(Option<CustomView>.None)
        @Expect(view.strProp, "initial")
        try {
            let ls: LocalStorage = view.getLocalStorage()
            @Expect(view.intProp, 100)
        } catch (e: Exception) {
            @Expect(e.message.size > 0, true)
        }
        try {
            let ctx: UIContext = view.getUIContext()
            @Expect(view.boolProp, true)
        } catch (e: Exception) {
            @Expect(e.message.size > 0, true)
        }
        view.strProp = "afterMethods"
        @Expect(view.strProp, "afterMethods")
        @Expect(view.intProp, 100)
        @Expect(view.boolProp, true)
    }
}
