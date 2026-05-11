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
class Flex_comattr_overlay_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Flex_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Flex_ca_overlay_01")
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
     * @tc.number    : TestFlex_comattr_overlay_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_131\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_131")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_132\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_132")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_133\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_133")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_134\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_134")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_135\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_135")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"0.91vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"0.91vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_136\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_136")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_137\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_137")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_138\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_138")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_139\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_139")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_140\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_140")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_141\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_141")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_142\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_142")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_143\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_143")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_144\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_144")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_145\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_145")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Top\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_146\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_146")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_147\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_147")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_148\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_148")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_149\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_149")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_150\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_150")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.TopEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_151\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_151")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_152\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_152")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_153\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_153")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_154\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_154")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_155\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_155")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_156\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_156")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_157\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_157")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_158\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_158")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_159\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_159")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_160\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_160")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_161\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_161")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_162\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_162")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_163\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_163")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_164\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_164")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_165\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_165")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_166\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_166")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_167\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_167")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_168\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_168")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_169\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_169")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_170\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_170")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomStart\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_171\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_171")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_172\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_172")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_173\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_173")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_174\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_174")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_175\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_175")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.Bottom\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_176\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_176")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_177\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_177")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"adsha\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_178\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_178")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"13214\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_179\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_179")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"仓颉\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_overlay_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_overlay_180\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_overlay_180")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.title"], "\"$%%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.align"], "\"Alignment.BottomEnd\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.x"], "\"100.12vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["overlay.options.offset.y"], "\"100.12vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
}
