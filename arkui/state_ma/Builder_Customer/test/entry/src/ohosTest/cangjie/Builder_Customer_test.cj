/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import kit.TestKit.*
import ohos.base.*
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView
@Test
class Builder_Customer_test {
    /*
     * @tc.number    : BuilderOfCustomer_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the BuilderOfCustomer of TextInput-customKeyboard and contentCoverBuilder
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("text_input"), 3000i32)        
        TestDriver.driver.findComponent(On().id("text_input")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("cover_text"), 3000i32)        
        let verify_cCoverBu = TestDriver.driver.findComponent(On().id("cover_text")).getOrThrow().getText()
        @Expect(verify_cCoverBu, "Content Cover")
        TestDriver.driver.findComponent(On().id("cover_text")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("key_1"), 3000i32)
        let verify_customKeyboard = TestDriver.driver.findComponent(On().id("key_1")).getOrThrow().getText()
        @Expect(verify_customKeyboard, "cKs1") 
        pressBack()       
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the BuilderOfCustomer of RichEditor-bindSelectionMenu and bindContextMenu-ContextMenuOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("rich_editor"), 3000i32) 
        input(at:Screen.getTheOnlyUiComponentWhoseIdEqualsTo("rich_editor").centerPoint,text:"richtest")
        TestDriver.driver.findComponent(On().id("rich_editor")).getOrThrow().longClick()
        TestDriver.driver.waitForComponent(On().text("全选"), 3000i32) 
        TestDriver.driver.findComponent(On().text("全选")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Copy"), 3000i32)         
        let verify_rich = TestDriver.driver.findComponent(On().text("Copy")).getOrThrow().getText()
        @Expect(verify_rich, "Copy") 
        pressBack()
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the BuilderOfCustomer of Gauge and bindMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("description_text"), 3000i32)
        let verify_gauge = TestDriver.driver.findComponent(On().id("description_text")).getOrThrow().getText()
        @Expect(verify_gauge, "Gauge Description")   
        TestDriver.driver.findComponent(On().id("gauge")).getOrThrow().longClick()  
        TestDriver.driver.waitForComponent(On().id("menuitemgauge"), 3000i32)        
        let verify_menugauge = TestDriver.driver.findComponent(On().id("menuitemgauge")).getOrThrow().getText()
        @Expect(verify_menugauge, "Item 1")
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }  
    /*
     * @tc.number    : BuilderOfCustomer_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the BuilderOfCustomer of ListItemGroup and bindMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("header_text"), 3000i32)  
        let verify_header = TestDriver.driver.findComponent(On().id("header_text")).getOrThrow().getText()
        @Expect(verify_header, "Header Content")
        TestDriver.driver.waitForComponent(On().id("footer_text"), 3000i32)  
        let verify_foot = TestDriver.driver.findComponent(On().id("footer_text")).getOrThrow().getText()
        @Expect(verify_foot, "Footer Content")
        TestDriver.driver.findComponent(On().id("item_1_text")).getOrThrow().longClick()  
        TestDriver.driver.waitForComponent(On().text("Item list1"), 3000i32)        
        let verify_menugauge = TestDriver.driver.findComponent(On().text("Item list1")).getOrThrow().getText()
        @Expect(verify_menugauge, "Item list1")
        pressBack()     
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }  
    /*
     * @tc.number    : BuilderOfCustomer_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the BuilderOfCustomer of ListItem and bindPopup-CustomPopupOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_item"), 3000i32) 
        let point_listItem1 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x+300i32,point_listItem1.y,speed:800)        
        TestDriver.driver.waitForComponent(On().id("start_action_text"), 3000i32)    
        let verify_startac = TestDriver.driver.findComponent(On().id("start_action_text")).getOrThrow().getText()
        @Expect(verify_startac, "Start Action")
        let point_listItem2 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem2.x,point_listItem2.y,point_listItem2.x-300i32,point_listItem2.y,speed:800)  
        let point_listItem3 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem3.x,point_listItem3.y,point_listItem3.x-300i32,point_listItem3.y,speed:800)            
        TestDriver.driver.waitForComponent(On().id("end_action_text"), 3000i32)    
        let verify_endac = TestDriver.driver.findComponent(On().id("end_action_text")).getOrThrow().getText()
        @Expect(verify_endac, "End Action")
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }  
    /*
     * @tc.number    : BuilderOfCustomer_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the BuilderOfCustomer of CheckBox and bindSheet-SheetOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxid"), 3000i32) 
        TestDriver.driver.findComponent(On().id("checkboxid")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("indicator_text"), 3000i32)
        let verify_cbox = TestDriver.driver.findComponent(On().id("indicator_text")).getOrThrow().getText()
        @Expect(verify_cbox, "ct")                         
        TestDriver.driver.waitForComponent(On().id("bindtest"), 3000i32)
        TestDriver.driver.findComponent(On().id("bindtest")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sheet_title"), 3000i32)         
        let verify_sheettitle = TestDriver.driver.findComponent(On().id("sheet_title")).getOrThrow().getText()
        @Expect(verify_sheettitle, "Sheet Title")  
        TestDriver.driver.waitForComponent(On().id("sheet_text"), 3000i32)         
        let verify_sheettext = TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().getText()
        @Expect(verify_sheettext, "Sheet Content") 
        TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().click()              
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sheet_text"), 3000i32) 
        TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Item 1"), 3000i32)
        let verify_bmenu = TestDriver.driver.findComponent(On().text("Item 1")).getOrThrow().getText()
        @Expect(verify_bmenu, "Item 1") 
        pressBack()        
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    } 
    /*
     * @tc.number    : BuilderOfCustomer_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("rich_editor"), 3000i32) 
        TestDriver.driver.findComponent(On().id("rich_editor")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Item 1"), 3000i32)
        let verify_bmenu = TestDriver.driver.findComponent(On().text("Item 1")).getOrThrow().getText()
        @Expect(verify_bmenu, "Item 1") 
        TestDriver.driver.findComponent(On().text("Item 1")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("key_1"), 3000i32)   
        let verify_keyb = TestDriver.driver.findComponent(On().id("key_1")).getOrThrow().getText()
        @Expect(verify_keyb, "cKs1") 
        pressBack()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    } 
    /*
     * @tc.number    : BuilderOfCustomer_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("buttonid"), 3000i32) 
        TestDriver.driver.findComponent(On().id("buttonid")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sheet_title"), 3000i32)
        let verify_bmenu = TestDriver.driver.findComponent(On().id("sheet_title")).getOrThrow().getText()
        @Expect(verify_bmenu, "Sheet Title") 
        TestDriver.driver.waitForComponent(On().id("sheet_text"), 3000i32)
        let verify_bmenu1 = TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().getText()
        @Expect(verify_bmenu1, "Sheet Content")
        TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }  
    /*
     * @tc.number    : BuilderOfCustomer_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("text_input"), 3000i32) 
        TestDriver.driver.findComponent(On().id("text_input")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sheet_title"), 3000i32)
        let verify_bmenu = TestDriver.driver.findComponent(On().id("sheet_title")).getOrThrow().getText()
        @Expect(verify_bmenu, "Sheet Title") 
        TestDriver.driver.waitForComponent(On().id("sheet_text"), 3000i32)
        let verify_bmenu1 = TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().getText()
        @Expect(verify_bmenu1, "Sheet Content")
        TestDriver.driver.findComponent(On().id("sheet_text")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("key_1"), 3000i32)        
        let verify_customKeyboard1 = TestDriver.driver.findComponent(On().id("key_1")).getOrThrow().getText()
        @Expect(verify_customKeyboard1, "cKs1") 
        pressBack() 
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkboxid"), 3000i32) 
        TestDriver.driver.findComponent(On().id("checkboxid")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("indicator_text"), 3000i32)
        let verify_cbox = TestDriver.driver.findComponent(On().id("indicator_text")).getOrThrow().getText()
        @Expect(verify_cbox, "checkboxtext")   
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("description_text"), 3000i32)
        let verify_gauge = TestDriver.driver.findComponent(On().id("description_text")).getOrThrow().getText()
        @Expect(verify_gauge, "Gauge Description")   
        TestDriver.driver.waitForComponent(On().id("list_item"), 3000i32) 
        let point_listItem1 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x+300i32,point_listItem1.y,speed:800)        
        TestDriver.driver.waitForComponent(On().id("start_action_text"), 3000i32)    
        let verify_startac = TestDriver.driver.findComponent(On().id("start_action_text")).getOrThrow().getText()
        @Expect(verify_startac, "Start Action")
        let point_listItem2 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem2.x,point_listItem2.y,point_listItem2.x-300i32,point_listItem2.y,speed:800)  
        let point_listItem3 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem3.x,point_listItem3.y,point_listItem3.x-300i32,point_listItem3.y,speed:800)            
        TestDriver.driver.waitForComponent(On().id("end_action_text"), 3000i32)    
        let verify_endac = TestDriver.driver.findComponent(On().id("end_action_text")).getOrThrow().getText()
        @Expect(verify_endac, "End Action")   
        pressBack()      
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("menuit"), 3000i32)
        let verify_menu = TestDriver.driver.findComponent(On().id("menuit")).getOrThrow().getText()
        @Expect(verify_menu, "Item 1")          
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_item"), 3000i32) 
        let point_listItem1 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x+ 300i32,point_listItem1.y,speed:800)        
        TestDriver.driver.waitForComponent(On().id("description_text"), 3000i32)    
        let verify_startac = TestDriver.driver.findComponent(On().id("description_text")).getOrThrow().getText()
        @Expect(verify_startac, "Gauge Description")         
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    } 
    /*
     * @tc.number    : BuilderOfCustomer_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_item"), 3000i32) 
        let point_listItem1 = TestDriver.driver.findComponent(On().id("list_item")).getOrThrow().getBoundsCenter()
        TestDriver.driver.swipe(point_listItem1.x,point_listItem1.y,point_listItem1.x+800i32,point_listItem1.y,speed:1000)        
        TestDriver.driver.waitForComponent(On().id("description_text"), 3000i32)    
        let verify_startac = TestDriver.driver.findComponent(On().id("description_text")).getOrThrow().getText()
        @Expect(verify_startac, "Gauge Description")    
        pressBack()     
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : BuilderOfCustomer_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the nonauto bindMenu and autobind bindContextMenu
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_BuilderOfCustomer_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Builder_Customer_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_BuilderOfCustomer_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("buttonopen"), 3000i32) 
        TestDriver.driver.findComponent(On().id("buttonopen")).getOrThrow().click()   
        TestDriver.driver.waitForComponent(On().id("textid"), 3000i32)    
        let verify_openCus = TestDriver.driver.findComponent(On().id("textid")).getOrThrow().getText()
        @Expect(verify_openCus, "Hello Content") 
        TestDriver.driver.findComponent(On().id("buttonclose")).getOrThrow().click()                  
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }                     
}
