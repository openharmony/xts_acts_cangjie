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
class TextInput_uniqueattr3_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.TextInput_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TInp_uniqueattr_03")
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
     * @tc.number    : TestTextInput_uniqueattr_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_131\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_131")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_132\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_132")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_133\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_133")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_134\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_134")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_135\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_135")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_136\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_136")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_137\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_137")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_138\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_138")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_139\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_139")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_140\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_140")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_141\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_141")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_142\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_142")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_143\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_143")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_144\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_144")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_145\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_145")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_146\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_146")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_147\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_147")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_148\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_148")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_149\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_149")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_150\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_150")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_151\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_151")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_152\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_152")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_153\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_153")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_154\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_154")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_155\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_155")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_156\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_156")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_157\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_157")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_158\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_158")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_159\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_159")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_160\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_160")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_161\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_161")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_162\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_162")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_163\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_163")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_164\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_164")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_165\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_165")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_166\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_166")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_167\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_167")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_168\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_168")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_169\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_169")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_170\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_170")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_171\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_171")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_172\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_172")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_173\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_173")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_174\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_174")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_175\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_175")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_176\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_176")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_177\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_177")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_178\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_178")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_179\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_179")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_180\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_180")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_181\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_181")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["inputFilter"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"weight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderFont"].contains("\"size\":\"-10.11vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }
}
