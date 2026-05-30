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
import std.collection.*
import ohos.base.*
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
@Test
class Refresh_init_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Refresh_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Refresh_init")
}
    @AfterEach
    func afterEach() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
    }
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestRefresh_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the Refresh
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Refresh_init_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Refresh_init_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("refresh"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StatusText")["content"], "\"Inactive\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("OnRefreshText")["content"], "\"noRefresh\"")
        let button:Component=TestDriver.driver.findComponent(On().id("Text_0")).getOrThrow()
        let drag:Component=TestDriver.driver.findComponent(On().id("Text_4")).getOrThrow()
        button.dragTo(drag)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StatusText")["content"], "\"Refresh\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("OnRefreshText")["content"], "\"Refresh\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
