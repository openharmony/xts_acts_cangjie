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
class Image_uniqueattr1_01_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Image_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Image_uniqueattr1_01")
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
     * @tc.number    : TestImage_uniqueattr1_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Template\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.X\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Low\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.High\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_46\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_46")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_47\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_47")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_48\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_48")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_49\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_49")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_50\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_50")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.Medium\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_51\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_51")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.XY\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_52\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_52")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_53\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_53")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_54\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_54")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_55\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_55")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_56\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_56")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_57\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_57")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_58\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_58")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_59\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_59")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Auto\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.01 x 0.01]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_60\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_60")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_61\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_61")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_62\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_62")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.00 x -10.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_63\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_63")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_64\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_64")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Cover\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_65\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_65")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Fill\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_66\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_66")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.00 x 8.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_67\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_67")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[0.00 x 0.00]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_68\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_68")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[-10.11 x -10.11]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_69\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_69")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_70\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_70")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_71\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_71")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"abc4edf\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_72\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_72")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_73\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_73")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_74\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_74")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_75\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_75")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"*******\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_76\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_76")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"123456\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.ScaleDown\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    /*
     * @tc.number    : TestImage_uniqueattr1_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test the uniqueattr of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uniqueattr1_77\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Image_uniqueattr1_77")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["alt"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["autoResize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fillColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["fitOriginalSize"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["interpolation"], "\"ImageInterpolation.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["matchTextDirection"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["syncLoad"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectFit"], "\"ImageFit.Contain\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["objectRepeat"], "\"ImageRepeat.Y\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["sourceSize"], "\"[8.55 x 8.55]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Image_uniqueattr_id")["renderMode"], "\"ImageRenderMode.Original\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
}
