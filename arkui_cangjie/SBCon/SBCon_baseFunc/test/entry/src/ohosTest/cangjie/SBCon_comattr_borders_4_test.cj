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
class SBCon_comattr_borders_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.SBCon_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_SBCon_ca_borders_01")
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
     * @tc.number    : TestSBCon_comattr_borders_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_304\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_304")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_305\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_305")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_306\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_306")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_307\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_307")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_308\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_308")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_309\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_309")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_310\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_310")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_311\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_311")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_312\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_312")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_313\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_313")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_314\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_314")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_315\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_315")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_316\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_316")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_317\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_317")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_318\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_318")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_319\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_319")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }
    /*
     * @tc.number    : TestSBCon_comattr_borders_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : test the comattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SBCon_comattr_borders_320\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SBCon_comattr_borders_320")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("SBCon_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderRadius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderWidth"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SBCon_comattr_id")["borderStyle"], "\"BorderStyle.Dashed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }
}
