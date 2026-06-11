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
class TextArea_uniqueattr3_3_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.TextArea_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TAre_uniqueattr_03")
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
     * @tc.number    : TestTextArea_uniqueattr_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_201\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_201")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_202\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_202")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_203\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_203")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_204\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_204")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_205\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_205")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_206\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_206")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_207\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_207")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_208\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_208")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_209\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_209")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_210\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_210")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_211\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_211")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_212\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_212")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_213\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_213")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_214\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_214")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_215\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_215")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_216\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_216")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_217\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_217")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.11lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_218\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_218")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_219\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_219")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_220\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_220")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_221\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_221")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_222\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_222")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_223\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_223")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"-10.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestTextArea_uniqueattr_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextArea_uniqueattr_224\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextArea_uniqueattr_224")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextArea_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["inputFilter"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"fontFamily\":\"Arial\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"style\":\"FontStyle.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"weight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextArea_id")["placeholderFont"].contains("\"size\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
}
