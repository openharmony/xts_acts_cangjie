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
class Column_comattr_borders3_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Column_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Col_ca_borders_03")
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
     * @tc.number    : TestColumn_comattr_borders3_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"0.00px\",\"radius\":\"-10.11lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"0.00px\",\"radius\":\"8.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.11lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"7.00%\",\"radius\":\"8.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"0.00px\",\"radius\":\"-10.11lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"0.00px\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"10.55fp\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"8.00px\",\"radius\":\"-10.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"10.00fp\",\"radius\":\"8.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF000000\",\"width\":\"0.00px\",\"radius\":\"-10.00vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#00000000\",\"width\":\"8.00vp\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#00000000\",\"width\":\"8.55px\",\"radius\":\"-10.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF000000\",\"width\":\"9.55vp\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"11.55lpx\",\"radius\":\"-10.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"8.00vp\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.55%\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"11.55lpx\",\"radius\":\"7.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"0.00px\",\"radius\":\"-10.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"9.55vp\",\"radius\":\"8.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.00lpx\",\"radius\":\"-10.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"10.00fp\",\"radius\":\"7.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"0.00px\",\"radius\":\"8.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF000000\",\"width\":\"0.00px\",\"radius\":\"7.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#00000000\",\"width\":\"0.00px\",\"radius\":\"-10.11vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#00000000\",\"width\":\"11.00lpx\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF000000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"10.55fp\",\"radius\":\"-10.11vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_131\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_131")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.55px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_132\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_132")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"0.00px\",\"radius\":\"-10.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_133\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_133")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"0.00px\",\"radius\":\"8.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_134\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_134")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_135\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_135")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"0.00px\",\"radius\":\"-10.11vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_136\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_136")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFFFFFF\",\"width\":\"8.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_137\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_137")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FFFF0000\",\"width\":\"0.00px\",\"radius\":\"-10.11vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_138\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_138")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF808080\",\"width\":\"7.00%\",\"radius\":\"-10.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_139\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_139")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF000000\",\"width\":\"0.00px\",\"radius\":\"8.00px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_140\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_140")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#00000000\",\"width\":\"7.55%\",\"radius\":\"-10.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_141\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_141")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF0000FF\",\"width\":\"7.55%\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_142\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_142")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.00%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_143\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_143")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.00%\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_144\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_144")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_145\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_145")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_146\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_146")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_147\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_147")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_148\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_148")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_149\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_149")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_150\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_150")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.55px\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_151\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_151")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.55fp\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_152\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_152")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_153\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_153")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_153 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_154\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_154")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.00lpx\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_155\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_155")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_156\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_156")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_157\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_157")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.00fp\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_158\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_158")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"9.55vp\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_159\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_159")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.55lpx\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_160\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_160")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00vp\",\"radius\":\"-10.11%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_161\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_161")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00vp\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_162\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_162")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.55lpx\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_163\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_163")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"9.55vp\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_164\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_164")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.00fp\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_165\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_165")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_166\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_166")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_167\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_167")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.00lpx\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_168\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_168")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_169\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_169")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_170\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_170")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.55fp\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_171\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_171")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.55px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_172\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_172")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_173\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_173")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_174\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_174")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_175\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_175")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_176\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_176")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_177\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_177")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_178\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_178")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.00%\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_178 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_179\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_179")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"7.55%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_180\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_180")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.55%\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_181\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_181")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.55%\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_182\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_182")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"9.55vp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_183\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_183")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"7.00%\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_184\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_184")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_185\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_185")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00px\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_186\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_186")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_187\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_187")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_188\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_188")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_189\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_189")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_190\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_190")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.55px\",\"radius\":\"-10.11fp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_191\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_191")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.55fp\",\"radius\":\"11.55lpx\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_192\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_192")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_193\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_193")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.11%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_194\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_194")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.00lpx\",\"radius\":\"-10.11px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_195\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_195")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"-10.11%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_196\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_196")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"0.00px\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_197\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_197")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"10.00fp\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_198\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_198")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"9.55vp\",\"radius\":\"-10.11%\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_199\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_199")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"11.55lpx\",\"radius\":\"8.55px\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_borders3_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_borders3_200\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_borders3_200")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["border"], "\"{\"style\":\"BorderStyle.Dashed\",\"color\":\"#FF008000\",\"width\":\"8.00vp\",\"radius\":\"-10.11fp\",\"dashGap\":\"-1.00px\",\"dashWidth\":\"-1.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 ends.")
    }
}
