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
import kit.ArkUI.getInspectorTree
import kit.TestKit.*
@Test
class Popsupport_Levelmode_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Popsupport_Levelmode", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scroller"), 3000i32)
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
    }
    /*
     * @tc.number    : Testpopsupport_levelmode_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_01\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_01")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Next"), 3000i32)        
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(1).getOrThrow().asObject()
            .get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"-10.000000\"")
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Next")).getOrThrow().getText()
        @Expect(expect_res,"Next")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : Testpopsupport_levelmode_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_02\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_02")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Next"), 3000i32)
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(1).getOrThrow().asObject()
            .get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"-10.000000\"")
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Next")).getOrThrow().getText()
        @Expect(expect_res,"Next")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Testpopsupport_levelmode_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_03\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_03")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Next"), 3000i32)
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(1).getOrThrow().asObject()
            .get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius.contains("179"))
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    } 

    /*
     * @tc.number    : Testpopsupport_levelmode_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_04\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_04")
        TestDriver.driver.waitForComponent(On().id("levelmode_showActionMenu"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showActionMenu")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("OK"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    } 

    /*
     * @tc.number    : Testpopsupport_levelmode_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_05\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_05")
        TestDriver.driver.waitForComponent(On().id("levelmode_showActionMenu"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showActionMenu")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("OK"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("OK")).getOrThrow().getText()
        @Expect(expect_res,"OK")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }            


    /*
     * @tc.number    : Testpopsupport_levelmode_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_06\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_06")
        TestDriver.driver.waitForComponent(On().id("levelmode_showDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("确定"), 3000i32)
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(1).getOrThrow().asObject()
            .get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"1.000000\"")
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("确定")).getOrThrow().getText()
        @Expect(expect_res,"确定")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    } 

     /*
     * @tc.number    : Testpopsupport_levelmode_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_07\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_07")
        TestDriver.driver.waitForComponent(On().id("levelmode_showDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("levelmode_showDialog1"), 3000i32)
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(1).getOrThrow().asObject()
            .get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"10.000000\"")
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    } 

    /*
     * @tc.number    : Testpopsupport_levelmode_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_08\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_08")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"-1.000000\"")
        TestDriver.driver.waitForComponent(On().id("DilogText"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DilogText")["content"],"\"levelMode=Overlay, showInSubWindow=true,shadow:-10.0f64\"")
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : Testpopsupport_levelmode_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_09\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_09")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"-1.000000\"")
        TestDriver.driver.waitForComponent(On().id("DilogText"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DilogText")["content"],"\"levelMode=Overlay, showInSubWindow=true,shadow:0.0f64\"")        
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Testpopsupport_levelmode_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_10")
        TestDriver.driver.waitForComponent(On().id("levelmode_openCustomDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_openCustomDialog")).getOrThrow().click()
        let tree = getInspectorTree()
        let treeJsonObject = JsonValue.fromStr(tree).asObject()
        let radius = treeJsonObject.get("$children").getOrThrow().asArray()
            .get(0).getOrThrow().asObject()
            .get("$attrs").getOrThrow().asObject()
            .get("shadow").getOrThrow().asObject()
            .get("radius").getOrThrow().toString()
        @Expect(radius, "\"-1.000000\"")
        TestDriver.driver.waitForComponent(On().id("DilogText"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DilogText")["content"],"\"levelMode=Embedded, showInSubWindow=true,shadow:Float64.Max\"") 
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    } 

    /*
     * @tc.number    : Testpopsupport_levelmode_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_11")
        TestDriver.driver.waitForComponent(On().id("levelmode_showActionMenu"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showActionMenu")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("OK"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    } 

    /*
     * @tc.number    : Testpopsupport_levelmode_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_12")
        TestDriver.driver.waitForComponent(On().id("levelmode_showActionMenu"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showActionMenu")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("OK"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }            


    /*
     * @tc.number    : Testpopsupport_levelmode_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_13")
        TestDriver.driver.waitForComponent(On().id("levelmode_showDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("确定"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    } 

     /*
     * @tc.number    : Testpopsupport_levelmode_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the combine of the levelmode and the shadow-radius
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_popsupport_levelmode_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_popsupport_levelmode_14")
        TestDriver.driver.waitForComponent(On().id("levelmode_showDialog"), 3000i32)
        TestDriver.driver.findComponent(On().id("levelmode_showDialog")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("确定"), 3000i32)
        TestDriver.driver.findComponent(On().text("Next")).getOrThrow().click()
        let expect_res = TestDriver.driver.findComponent(On().text("Back")).getOrThrow().getText()
        @Expect(expect_res,"Back")
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }          
}
