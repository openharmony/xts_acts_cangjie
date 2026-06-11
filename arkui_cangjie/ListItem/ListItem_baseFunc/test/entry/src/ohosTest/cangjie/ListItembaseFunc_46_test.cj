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
class ListItem_swipeAction_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.ListItem_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_ListItem_swipeAction")
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
     * @tc.number    : TestList_init_selectable_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the selectable of the ListItem true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_swipeAction1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_swipeAction1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("listItem_1"), 3000i32)
        let point_listItem1 = TestDriver.driver.findComponent(On().id("listItem_1")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x+600i32,point_listItem1.y,speed:500)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("left")["content"], "\"left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("listItem_1")["swipeAction.edgeEffect"], "\"SwipeEdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_id")["content"], "\"50.000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestList_init_selectable_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the selectable of the ListItem false
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_swipeAction2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_swipeAction2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("listItem_1"), 3000i32)
        let point_listItem1 = TestDriver.driver.findComponent(On().id("listItem_1")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x-600i32,point_listItem1.y,speed:500)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("right")["content"], "\"right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("listItem_1")["swipeAction.edgeEffect"], "\"SwipeEdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_id")["content"], "\"-50.000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
