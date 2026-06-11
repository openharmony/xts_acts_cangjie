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
class ImageSpan_comattr_overlay_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.ImageSpan_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_ImSp_ca_overlay_01")
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
     * @tc.number    : TestImageSpan_comattr_overlay_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"0.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"0.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestImageSpan_comattr_overlay_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the comattr of the ImageSpan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ImageSpan_comattr_overlay_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ImageSpan_comattr_overlay_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ImageSpan_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpan_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
}
