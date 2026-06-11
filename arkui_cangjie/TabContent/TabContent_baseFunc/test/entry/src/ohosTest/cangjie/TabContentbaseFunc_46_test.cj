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
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.LocalizationKit.{__GenerateResource__}
@Test
class TabContent_tabBar_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.TabContent_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TabContent_tabBar")
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
     * @tc.number    : TestTabContent_tabBar_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Tabs_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("tabBar_0")["content"], "\"页签0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"aaabbb\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"111222\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"!@@#$%^*()_+=-:;'?><,./\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"\\\"页签0\\\"\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"resourse页签0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestTabContent_tabBar_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the tabBar of the TabContent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TabContent_tabBar_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TabContent_tabBar_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TabContent_0"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["text"], "\"首页\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContent_0")["icon"].contains("${@r(app.media.icon).id}"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
}
