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
@Test
class Grid_ColumnsGap_rowsGap_3_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Grid_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Grid_columnsGap_rowsGap")
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
     * @tc.number    : TestList_ColumnsGap_rowsGap_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap201\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap201")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap202\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap202")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap203\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap203")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap204\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap204")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap205\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap205")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap206\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap206")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap207\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap207")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap208\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap208")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap209\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap209")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap210\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap210")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap211\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap211")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap212\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap212")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap213\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap213")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap214\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap214")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap215\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap215")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap216\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap216")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap217\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap217")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap218\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap218")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap219\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap219")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap220\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap220")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap221\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap221")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap222\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap222")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap223\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap223")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap224\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap224")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap225\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap225")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap226\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap226")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap227\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap227")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap228\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap228")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap229\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap229")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap230\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap230")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap231\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap231")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap232\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap232")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap233\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap233")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap234\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap234")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap235\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap235")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap236\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap236")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap237\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap237")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap238\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap238")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap239\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap239")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap240\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap240")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap241\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap241")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap242\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap242")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap243\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap243")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap244\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap244")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap245\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap245")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap246\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap246")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap247\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap247")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap248\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap248")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap249\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap249")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap250\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap250")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap251\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap251")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap252\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap252")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap253\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap253")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap254\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap254")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap255\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap255")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap256\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap256")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap257\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap257")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap258\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap258")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap259\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap259")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap260\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap260")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap261\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap261")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap262\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap262")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap263\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap263")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap264\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap264")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap265\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap265")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap266\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap266")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap267\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap267")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap268\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap268")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap269\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap269")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap270\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap270")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap271\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap271")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap272\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap272")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap273\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap273")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap274\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap274")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap275\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap275")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap276\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap276")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap277\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap277")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap278\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap278")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap279\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap279")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap280\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap280")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap281\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap281")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap282\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap282")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap283\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap283")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap284\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap284")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap285\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap285")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap286\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap286")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap287\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap287")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap288\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap288")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap289\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap289")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap290\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap290")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap291\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap291")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap292\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap292")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap293\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap293")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap294\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap294")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap295\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap295")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap296\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap296")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap297\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap297")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap298\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap298")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap299\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap299")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap300\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap300")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 ends.")
    }
}
