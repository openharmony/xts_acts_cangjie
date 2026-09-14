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
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Alp_uevent_03.*

@Test
class AlphabetIndexer_uevent_test {
    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupPosition.popupPositionX"], "\"50.00vp\"")

        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","font",attributeParam:"fontSize"),"\"10.00vp\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","font",attributeParam:"fontStyle"),"\"FontStyle::NORMAL\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","font",attributeParam:"fontWeight"),"\"FontWeight.Normal\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","font",attributeParam:"fontFamily"),"\"\"")

        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","selectedFont",attributeParam:"fontSize"),"\"12.00vp\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","selectedFont",attributeParam:"fontStyle"),"\"FontStyle::ITALIC\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","selectedFont",attributeParam:"fontWeight"),"\"FontWeight.Bold\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","selectedFont",attributeParam:"fontFamily"),"\"abc\"")        

        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","popupFont",attributeParam:"fontSize"),"\"14.00vp\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","popupFont",attributeParam:"fontStyle"),"\"FontStyle::NORMAL\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","popupFont",attributeParam:"fontWeight"),"\"FontWeight.Lighter\"")
        @Expect(getInspect.getAttributeValue("AlphabetIndexer_id","popupFont",attributeParam:"fontFamily"),"\"abc\"")         
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uevent_07\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uevent_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uevent_07(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selected"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["selectedColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["usingPopup"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "verify event handlers registered (initial state)")
        TestDriver.driver.waitForComponent(On().id("onSelect_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSelect_result_id")["content"], "\"onSelect: -1\"")
        Hilog.info(0u32, "CangjieTest", "click AlphabetIndexer to trigger onSelect")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
            .getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("onSelect_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSelect_result_id")["content"], "\"onSelect: 1\"")
        TestDriver.driver.waitForComponent(On().id("onRequestPopupData_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onRequestPopupData_result_id")["content"], "\"onRequestPopupData: 1\"")
        TestDriver.driver.waitForComponent(On().id("onPopupSelect_result_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPopupSelect_result_id")["content"], "\"onPopupSelect: -1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

}