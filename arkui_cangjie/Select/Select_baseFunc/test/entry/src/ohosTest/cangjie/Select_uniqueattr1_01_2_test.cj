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
class Select_uniqueattr1_01_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Select_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Select_uniqueattr1_01")
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
     * @tc.number    : TestSelect_uniqueattr1_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00px\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.55lpx\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.55fp\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.55%\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00vp\\\",\\\"weight\\\":\\\"FontWeight.Bold\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"FontWeight.Bold\\\",\\\"family\\\":\\\"123456\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.00%\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"9.55vp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.55fp\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"123456\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.00fp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.00lpx\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00vp\\\",\\\"weight\\\":\\\"FontWeight.Normal\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00vp\\\",\\\"weight\\\":\\\"500\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00fp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00lpx\\\",\\\"weight\\\":\\\"FontWeight.Bold\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00px\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00%\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"900\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"9.55vp\\\",\\\"weight\\\":\\\"FontWeight.Normal\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11lpx\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.00lpx\\\",\\\"weight\\\":\\\"FontWeight.Lighter\\\",\\\"family\\\":\\\"123456\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00px\\\",\\\"weight\\\":\\\"500\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11px\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00vp\\\",\\\"weight\\\":\\\"900\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"500\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11fp\\\",\\\"weight\\\":\\\"FontWeight.Normal\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11fp\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_131\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_131")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00%\\\",\\\"weight\\\":\\\"900\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_132\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_132")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.55lpx\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_133\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_133")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11lpx\\\",\\\"weight\\\":\\\"FontWeight.Normal\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_134\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_134")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00px\\\",\\\"weight\\\":\\\"500\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_135\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_135")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00fp\\\",\\\"weight\\\":\\\"FontWeight.Regular\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_136\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_136")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.55%\\\",\\\"weight\\\":\\\"FontWeight.Regular\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_137\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_137")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.00fp\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_138\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_138")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.00%\\\",\\\"weight\\\":\\\"FontWeight.Bolder\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_139\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_139")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00%\\\",\\\"weight\\\":\\\"FontWeight.Regular\\\",\\\"family\\\":\\\"仓颉鸿蒙\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_140\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_140")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00lpx\\\",\\\"weight\\\":\\\"900\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_141\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_141")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.00fp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_142\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_142")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"FontWeight.Bolder\\\",\\\"family\\\":\\\"*******\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_143\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_143")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.55%\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_144\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_144")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00px\\\",\\\"weight\\\":\\\"FontWeight.Lighter\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_145\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_145")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"FontWeight.Bolder\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_146\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_146")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00lpx\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_147\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_147")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.00%\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"123456\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_148\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_148")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11fp\\\",\\\"weight\\\":\\\"FontWeight.Bolder\\\",\\\"family\\\":\\\"\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_149\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_149")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00vp\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_150\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_150")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"9.55vp\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_151\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_151")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11lpx\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_152\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_152")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.55fp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_153\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_153")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11px\\\",\\\"weight\\\":\\\"FontWeight.Lighter\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_154\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_154")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00px\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_155\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_155")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00vp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_156\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_156")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00fp\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_157\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_157")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_158\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_158")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_159\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_159")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.00lpx\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_160\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_160")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_161\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_161")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.00lpx\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_162\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_162")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.55lpx\\\",\\\"weight\\\":\\\"FontWeight.Lighter\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_163\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_163")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00vp\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_164\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_164")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00%\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_165\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_165")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_166\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_166")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00px\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_167\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_167")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_168\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_168")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00fp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_169\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_169")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.55fp\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_170\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_170")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"9.55vp\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_171\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_171")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00px\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_172\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_172")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11fp\\\",\\\"weight\\\":\\\"FontWeight.Lighter\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_173\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_173")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.00%\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_174\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_174")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00vp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_175\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_175")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00lpx\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_176\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_176")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.00fp\\\",\\\"weight\\\":\\\"700\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_177\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_177")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00vp\\\",\\\"weight\\\":\\\"300\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_178\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_178")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11px\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_179\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_179")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.55%\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_180\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_180")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11lpx\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_181\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_181")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11lpx\\\",\\\"weight\\\":\\\"FontWeight.Regular\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_182\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_182")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11vp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_183\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_183")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.00fp\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_184\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_184")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11px\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_185\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_185")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.55lpx\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_186\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_186")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00lpx\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_187\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_187")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00px\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_188\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_188")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.55%\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_189\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_189")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_190\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_190")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"7.00%\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_191\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_191")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00fp\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_192\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_192")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"8.00px\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_193\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_193")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_194\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_194")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.55lpx\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_195\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_195")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"9.55vp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_196\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_196")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"11.00lpx\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_197\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_197")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"10.55fp\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_198\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_198")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.00%\\\",\\\"weight\\\":\\\"800\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_199\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_199")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11%\\\",\\\"weight\\\":\\\"600\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr1_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr1_200\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr1_200")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["options"], "\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777232.png\\\"},{\\\"value\\\":\\\"仓颉鸿蒙\\\",\\\"icon\\\":\\\"resource:///16777229.png\\\"},{\\\"value\\\":\\\"1234567\\\",\\\"icon\\\":\\\"resource:///16777230.png\\\"}]}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionBgColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFont"], "\"{\\\"size\\\":\\\"-10.11fp\\\",\\\"weight\\\":\\\"200\\\",\\\"family\\\":\\\"abc4edf\\\",\\\"style\\\":\\\"FontStyle.Italic\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selected"], "\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 ends.")
    }
}
