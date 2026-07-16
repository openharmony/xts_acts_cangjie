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
class Search_uniqueattr2_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Search_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Sear_uniqueattr_02")
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
     * @tc.number    : TestSearch_uniqueattr_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.11px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"16.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"-10.11fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestSearch_uniqueattr_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the uniqueattr of the Search
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Search_uniqueattr_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Search_uniqueattr_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Search_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"style\":\"FontStyle.Italic\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"fontFamily\":\"Times New Roman\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Search_id")["placeholderFont"].contains("\"size\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
}
