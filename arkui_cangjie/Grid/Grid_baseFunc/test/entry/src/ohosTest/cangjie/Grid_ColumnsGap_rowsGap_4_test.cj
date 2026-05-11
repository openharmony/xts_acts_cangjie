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
class Grid_ColumnsGap_rowsGap_4_test {
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
     * @tc.number    : TestList_ColumnsGap_rowsGap_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap304\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap304")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap305\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap305")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap306\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap306")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap307\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap307")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap308\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap308")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap309\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap309")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap310\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap310")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap311\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap311")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap312\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap312")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap313\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap313")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap314\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap314")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap315\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap315")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap316\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap316")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap317\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap317")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap318\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap318")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap319\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap319")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap320\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap320")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap321\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap321")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap322\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap322")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap323\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap323")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap324\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap324")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap325\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap325")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap326\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap326")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap327\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap327")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap328\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap328")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap329\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap329")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap330\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap330")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap331\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap331")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap332\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap332")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap333\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap333")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap334\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap334")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap335\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap335")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap336\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap336")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap337\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap337")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap338\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap338")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap339\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap339")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap340\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap340")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap341\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap341")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap342\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap342")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap343\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap343")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap344\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap344")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap345\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap345")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap346\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap346")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap347\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap347")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap348\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap348")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap349\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap349")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap350\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap350")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap351\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap351")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap352\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap352")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap353\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap353")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap354\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap354")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap355\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap355")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap356\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap356")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap357\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap357")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap358\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap358")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap359\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap359")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap360\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap360")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap361\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap361")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap362\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap362")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap363\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap363")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap364\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap364")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap365\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap365")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap366\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap366")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap367\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap367")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap368\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap368")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap369\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap369")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap370\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap370")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap371\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap371")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap372\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap372")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap373\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap373")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap374\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap374")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap375\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap375")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap376\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap376")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap377\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap377")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap378\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap378")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap379\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap379")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap380\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap380")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap381\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap381")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap382\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap382")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap383\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap383")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap384\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap384")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap385\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap385")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap386\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap386")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap387\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap387")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap388\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap388")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap389\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap389")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap390\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap390")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap391\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap391")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap392\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap392")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap393\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap393")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap394\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap394")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap395\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap395")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap396\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap396")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap397\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap397")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap398\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap398")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap399\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap399")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }
    /*
     * @tc.number    : TestList_ColumnsGap_rowsGap_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : test the columnsGap&rowGap of the Grid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Grid_ColumnsGap_rowsGap400\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Grid_ColumnsGap_rowsGap400")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["columnsGap"], "\"10.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Grid_id")["rowsGap"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
