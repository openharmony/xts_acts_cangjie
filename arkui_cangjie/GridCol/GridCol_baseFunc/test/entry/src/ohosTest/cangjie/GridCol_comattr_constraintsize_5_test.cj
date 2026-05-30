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
class GridCol_comattr_constraintsize_5_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.GridCol_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Gcol_ca_constraintsize_01")
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
     * @tc.number    : TestGridCol_comattr_constraintsize_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_401\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_401")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_402\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_402")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_403\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_403")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"8.55px\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_404\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_404")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_405\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_405")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"8.00px\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_406\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_406")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"-10.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_407\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_407")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"7.00%\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_408\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_408")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_409\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_409")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_410\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_410")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_411\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_411")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_412\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_412")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"8.00px\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_413\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_413")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_414\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_414")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_415\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_415")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_416\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_416")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"7.55%\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"10.00fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_417\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_417")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_418\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_418")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_419\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_419")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.00fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_420\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_420")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_421\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_421")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_422\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_422")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_423\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_423")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_424\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_424")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"-10.11%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_425\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_425")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_426\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_426")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_427\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_427")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"8.00vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_428\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_428")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_429\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_429")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"8.00px\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_430\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_430")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_431\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_431")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_432\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_432")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_433\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_433")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_434\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_434")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_435\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_435")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_436\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_436")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_437\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_437")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_438\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_438")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"8.00px\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_439\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_439")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_440\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_440")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"7.55%\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_441\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_441")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_442\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_442")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_443\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_443")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_444\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_444")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_445\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_445")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_446\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_446")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_447\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_447")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_448\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_448")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"8.00vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_449\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_449")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_450\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_450")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"8.55px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_451\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_451")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_452\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_452")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_453\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_453")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_454\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_454")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"7.55%\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_455\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_455")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_456\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_456")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_457\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_457")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_458\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_458")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_459\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_459")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_460\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_460")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_461\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_461")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_462\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_462")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_constraintsize_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridCol_comattr_constraintsize_463\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridCol_comattr_constraintsize_463")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 ends.")
    }
}
