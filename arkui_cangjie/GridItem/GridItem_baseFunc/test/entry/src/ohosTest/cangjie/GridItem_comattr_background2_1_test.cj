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
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.app.ability.ability_delegator_registry.*
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import ohos.ui_test.*
@Test
class GridItem_comattr_background2_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.GridItem_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_GriIt_ca_background_02")
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
     * @tc.number    : TestGridItem_comattr_background_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background2_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Cover\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_46\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_46")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_47\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_47")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_48\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_48")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_49\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_49")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_50\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_50")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_51\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_51")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_52\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_52")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_53\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_53")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_54\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_54")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_55\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_55")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_56\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_56")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_57\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_57")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_58\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_58")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_59\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_59")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_60\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_60")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_61\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_61")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_62\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_62")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_63\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_63")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestGridItem_comattr_background_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the comattr of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridItem_comattr_background2_64\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridItem_comattr_background2_64")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImagePosition"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem_comattr_id")["backgroundImageSize"], "\"ImageSize.Contain\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
}
