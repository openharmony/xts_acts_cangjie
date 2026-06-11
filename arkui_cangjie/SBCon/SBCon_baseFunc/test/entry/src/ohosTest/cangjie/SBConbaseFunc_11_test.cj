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
class SBCon_comattr_background_5_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.SBCon_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_SBCon_ca_background_01")
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
     * @tc.number    : TestSBCon_comattr_background_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_401\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_401")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_402\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_402")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_403\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_403")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_404\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_404")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_405\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_405")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_406\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_406")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_407\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_407")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_408\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_408")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_409\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_409")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_410\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_410")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_411\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_411")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_412\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_412")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_413\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_413")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_414\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_414")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_415\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_415")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_416\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_416")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_417\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_417")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_418\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_418")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_419\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_419")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_420\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_420")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_421\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_421")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_422\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_422")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_423\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_423")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_424\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_424")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_425\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_425")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_426\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_426")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_427\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_427")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_428\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_428")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_429\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_429")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_430\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_430")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_431\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_431")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_432\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_432")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_433\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_433")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_434\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_434")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_435\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_435")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_436\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_436")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_437\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_437")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_438\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_438")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_439\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_439")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_440\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_440")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_441\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_441")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_442\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_442")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_443\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_443")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_444\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_444")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_445\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_445")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_446\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_446")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_447\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_447")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_448\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_448")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_449\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_449")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_450\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_450")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_451\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_451")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_452\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_452")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_453\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_453")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_454\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_454")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_455\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_455")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_456\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_456")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_457\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_457")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_458\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_458")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_459\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_459")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_460\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_460")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_461\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_461")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_462\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_462")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_463\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_463")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46400
     * @tc.name      : TestCase_464
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_464(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_464 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_464\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_464")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_464 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46500
     * @tc.name      : TestCase_465
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_465(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_465 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_465\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_465")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_465 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46600
     * @tc.name      : TestCase_466
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_466(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_466 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_466\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_466")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_466 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46700
     * @tc.name      : TestCase_467
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_467(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_467 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_467\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_467")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_467 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46800
     * @tc.name      : TestCase_468
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_468(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_468 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_468\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_468")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777224.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_468 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_46900
     * @tc.name      : TestCase_469
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_469(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_469 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_469\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_469")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_469 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47000
     * @tc.name      : TestCase_470
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_470(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_470 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_470\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_470")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_470 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47100
     * @tc.name      : TestCase_471
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_471(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_471 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_471\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_471")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_471 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47200
     * @tc.name      : TestCase_472
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_472(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_472 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_472\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_472")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_472 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47300
     * @tc.name      : TestCase_473
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_473(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_473 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_473\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_473")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_473 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47400
     * @tc.name      : TestCase_474
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_474(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_474 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_474\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_474")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_474 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47500
     * @tc.name      : TestCase_475
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_475(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_475 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_475\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_475")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_475 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47600
     * @tc.name      : TestCase_476
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_476(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_476 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_476\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_476")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_476 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47700
     * @tc.name      : TestCase_477
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_477(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_477 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_477\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_477")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_477 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47800
     * @tc.name      : TestCase_478
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_478(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_478 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_478\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_478")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_478 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_47900
     * @tc.name      : TestCase_479
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_479(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_479 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_479\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_479")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_479 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48000
     * @tc.name      : TestCase_480
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_480(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_480 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_480\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_480")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_480 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48100
     * @tc.name      : TestCase_481
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_481(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_481\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_481")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48200
     * @tc.name      : TestCase_482
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_482(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_482\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_482")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48300
     * @tc.name      : TestCase_483
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_483(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_483\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_483")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48400
     * @tc.name      : TestCase_484
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_484(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_484\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_484")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48500
     * @tc.name      : TestCase_485
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_485(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_485\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_485")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48600
     * @tc.name      : TestCase_486
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_486(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_486\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_486")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48700
     * @tc.name      : TestCase_487
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_487(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_487\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_487")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48800
     * @tc.name      : TestCase_488
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_488(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_488\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_488")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_48900
     * @tc.name      : TestCase_489
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_489(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_489\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_489")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49000
     * @tc.name      : TestCase_490
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_490(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_490\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_490")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49100
     * @tc.name      : TestCase_491
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_491(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_491\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_491")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49200
     * @tc.name      : TestCase_492
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_492(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_492\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_492")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49300
     * @tc.name      : TestCase_493
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_493(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_493\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_493")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49400
     * @tc.name      : TestCase_494
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_494(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_494\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_494")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49500
     * @tc.name      : TestCase_495
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_495(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_495\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_495")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49600
     * @tc.name      : TestCase_496
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_496(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_496\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_496")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49700
     * @tc.name      : TestCase_497
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_497(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_497\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_497")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49800
     * @tc.name      : TestCase_498
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_498(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_498\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_498")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_49900
     * @tc.name      : TestCase_499
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_499(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_499\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_499")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_background_50000
     * @tc.name      : TestCase_500
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_500(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_background_500\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_background_500")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 ends.")
    }
}
