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
class Flex_comattr_position_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Flex_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Flex_ca_position_01")
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
     * @tc.number    : TestFlex_comattr_position_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_304\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_304")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_305\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_305")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_306\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_306")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_307\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_307")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_308\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_308")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_309\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_309")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_310\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_310")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_311\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_311")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_312\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_312")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_313\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_313")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_314\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_314")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_315\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_315")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_316\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_316")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_317\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_317")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_318\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_318")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_319\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_319")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_320\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_320")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_321\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_321")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_322\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_322")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_323\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_323")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_324\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_324")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_325\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_325")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_326\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_326")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_327\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_327")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_328\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_328")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_329\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_329")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_330\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_330")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_331\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_331")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_332\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_332")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_333\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_333")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_334\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_334")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_335\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_335")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_336\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_336")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_337\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_337")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_338\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_338")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_339\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_339")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_340\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_340")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_341\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_341")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_342\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_342")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_343\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_343")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_344\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_344")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_345\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_345")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_346\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_346")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_347\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_347")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_348\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_348")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_349\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_349")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_350\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_350")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_351\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_351")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_352\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_352")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_353\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_353")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_354\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_354")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_355\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_355")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_356\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_356")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_357\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_357")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_358\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_358")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_359\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_359")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_360\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_360")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_361\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_361")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_362\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_362")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_363\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_363")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_364\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_364")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_365\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_365")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_366\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_366")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_367\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_367")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_368\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_368")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_369\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_369")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_370\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_370")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_371\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_371")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_372\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_372")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_373\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_373")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_374\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_374")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_375\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_375")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_376\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_376")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_377\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_377")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_378\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_378")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_379\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_379")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_380\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_380")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_381\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_381")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_382\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_382")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_383\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_383")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_384\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_384")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_385\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_385")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_386\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_386")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_387\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_387")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_388\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_388")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_389\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_389")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_390\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_390")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_391\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_391")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_392\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_392")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_393\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_393")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_394\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_394")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_395\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_395")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_396\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_396")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_397\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_397")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_398\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_398")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_399\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_399")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_position_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_position_400\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_comattr_position_400")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("flex_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["position.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
