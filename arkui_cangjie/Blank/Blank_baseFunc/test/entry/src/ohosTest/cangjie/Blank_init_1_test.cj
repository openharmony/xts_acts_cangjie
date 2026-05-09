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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
import std.sync.*
@Test
class Blank_init_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Blank_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Blank_init")
}
    @AfterEach
    func afterEach() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
    }
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestBlank_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFF0000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_4")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFF00\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_5")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFF00\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_6")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFF00\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_7")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_8")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_9")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFFFF\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestBlank_init_01000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the init of the blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_init_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_init_10")
        TestDriver.driver.waitForComponent(On().id("Blank_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_id")["backgroundColor"], "\"#FFFFFF00\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
}
