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
class Navigation_hideTitleBar_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Nav_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Navigation_hideTitleBar")
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
     * @tc.number    : TestNavigation_hideTitleBar_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the hideTitleBar(true,true) of the Navigation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_hideTitleBar1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Navigation_hideTitleBar1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("PageHome_Navigation"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PageHome_Navigation")["hideTitleBar"], "true")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestNavigation_hideTitleBar_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the hideTitleBar(true,false) of the Navigation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_hideTitleBar2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Navigation_hideTitleBar2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("PageHome_Navigation"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PageHome_Navigation")["hideTitleBar"], "true")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestNavigation_hideTitleBar_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the hideTitleBar(false,true) of the Navigation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_hideTitleBar3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Navigation_hideTitleBar3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("PageHome_Navigation"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PageHome_Navigation")["hideTitleBar"], "false")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestNavigation_hideTitleBar_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the hideTitleBar(false,false) of the Navigation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Navigation_hideTitleBar4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Navigation_hideTitleBar4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("PageHome_Navigation"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PageHome_Navigation")["hideTitleBar"], "false")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
}
