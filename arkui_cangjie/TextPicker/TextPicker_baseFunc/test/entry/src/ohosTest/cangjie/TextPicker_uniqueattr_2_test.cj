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
class TextPicker_uniqueattr_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.TextPicker_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TPicker_uniqueattr_01")
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
     * @tc.number    : TestTextPicker_uniqueattr_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:%^$^$*%^\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:123456789\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:123456789\",\"icon:,text:%^$^$*%^\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:%^$^$*%^\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:ffffffffffffffffffffffffffffffffffffff\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:12345\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:123456789\",\"icon:,text:12345\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:123456789\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_131\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_131")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_132\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_132")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_133\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_133")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_134\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_134")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:仓颉鸿蒙\",\"icon:,text:12345\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_135\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_135")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_136\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_136")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:%^$^$*%^\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_137\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_137")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:abcdefsghej\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_138\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_138")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:鸿蒙仓颉\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_139\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_139")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestTextPicker_uniqueattr_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the uniqueattr of the TextPicker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextPicker_uniqueattr_140\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextPicker_uniqueattr_140")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("textpicker_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["range"], "\"[\"icon:,text:123456789\",\"icon:,text:\"]\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["value"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["canLoop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textpicker_id")["defaultPickerItemHeight"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
}
