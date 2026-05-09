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
class Canvas_init_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Canvas_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Canvas_init")
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
     * @tc.number    : TestCanvas_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_4")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_5")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_6")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_7")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_8")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_9")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_10")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_14")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_15")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_16")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_17")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_18")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_01900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_19")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_20")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_24")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_25")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_26")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_27")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_28")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_02900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_29")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_30")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_34")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_35")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_36")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_37")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_38")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_03900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_39")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_40")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_44")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_45")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_46\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_46")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_47\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_47")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestCanvas_init_04800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the init of the canvas
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Canvas_init_48\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Canvas_init_48")
        TestDriver.driver.waitForComponent(On().id("Canvas_id"), 3000i32)
        @Expect(true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
}
