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

import kit.PerformanceAnalysisKit.Hilog
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.arkui.state_macro_manage.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.arkui.state_macro_manage.r
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView
import ohos.base.*

@Test
class onAppear_Event_test {
    /*
     * @tc.number    : onAppear_Event_test
     * @tc.name      : Test_onAppear_Event_001
     * @tc.desc      : test the event of the common
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onAppear_Event_001() {
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "onAppear_Event_test"
            modtestCaseText[0] = "Test_onAppear_Event_001"
            modtestView[0] = {_:CustomView => View_onAppearEvent(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        let text1 = TestDriver.driver.findComponent(On().id("text1"))
        let text2 = TestDriver.driver.findComponent(On().id("text2"))

        let content1 = text1.getOrThrow().getText()
        let content2 = text2.getOrThrow().getText()
        @Expect(content1,"shown")
        @Expect(content2,"")
        let button = TestDriver.driver.findComponent(On().id("appearEvent"))
        button.getOrThrow().click()
        TestDriver.driver.delayMs(500)
        let content3 = text2.getOrThrow().getText()
        @Expect(content3,"hidden")
    }
}
