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
class Stepper_componentEvents_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Stepper_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Stepper_id"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Stepper_componentEvents_2")
}
    /*
     * @tc.number    : TestStepper_componentEvents_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("status")["content"], "\"Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        TestDriver.driver.waitForComponent(On().id("Disabled"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Disabled"), 2000i32)
        TestDriver.driver.waitForComponent(On().text("下一步"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageThree"), 2000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        TestDriver.driver.waitForComponent(On().text("返回"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageOne"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageOne")["content"], "\"Page One\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        TestDriver.driver.waitForComponent(On().text("下一步"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageTwo"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        TestDriver.driver.waitForComponent(On().id("Waiting"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Waiting"), 2000i32)
        //验证是否显示下一步[否]
        try{
            TestDriver.driver.waitForComponent(On().text("下一步"), 500i32).getOrThrow()
            @Expect(false)
        }catch(e:Exception){
            @Expect(true)
        }
        //验证是否有进度条[是]
        try{
            TestDriver.driver.waitForComponent(On().onType("LoadingProgress"), 2000i32).getOrThrow()
            @Expect(true)
        }catch(e:Exception){
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        TestDriver.driver.waitForComponent(On().text("返回"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageOne"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageOne")["content"], "\"Page One\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        TestDriver.driver.waitForComponent(On().text("下一步"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageTwo"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        TestDriver.driver.waitForComponent(On().id("Skip"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Skip"), 2000i32)
        //验证是否显示下一步[否]
        try{
            TestDriver.driver.waitForComponent(On().text("下一步"), 500i32).getOrThrow()
            @Expect(false)
        }catch(e:Exception){
            @Expect(true)
        }
        //验证是否显示跳过[是]
        try{
            TestDriver.driver.waitForComponent(On().text("跳过"), 500i32).getOrThrow()
            @Expect(true)
        }catch(e:Exception){
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the component events of the Stepper(onSkip)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("status")["content"], "\"Skip\"")
        TestDriver.driver.waitForComponent(On().text("跳过"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onSkip clicked"), 2000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"onSkip clicked\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        TestDriver.driver.waitForComponent(On().id("Initialize_onSkip"), 500i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the component events of the Stepper(onSkip)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        TestDriver.driver.waitForComponent(On().id("Normal"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Normal"), 2000i32)
        TestDriver.driver.waitForComponent(On().text("下一步"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageThree"), 2000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageThree")["content"], "\"Page Three\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("status")["content"], "\"Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSkip_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the onFinish of the Stepper(ItemState.Normal)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        //验证是否显示下一步[否]
        try{
            TestDriver.driver.waitForComponent(On().text("下一步"), 500i32).getOrThrow()
            @Expect(false)
        }catch(e:Exception){
            @Expect(true)
        }
        //验证是否显示开始[是]
        try{
            TestDriver.driver.waitForComponent(On().text("开始"), 500i32).getOrThrow()
            @Expect(true)
        }catch(e:Exception){
            @Expect(false)
        }
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        TestDriver.driver.waitForComponent(On().text("开始"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onFinish"), 2000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the onFinish of the Stepper(ItemState.Disabled)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        TestDriver.driver.waitForComponent(On().id("Initialize_onFinish"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("not on Finish"), 2000i32)
        TestDriver.driver.waitForComponent(On().id("Disabled2"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Disabled"), 2000i32)
        TestDriver.driver.waitForComponent(On().text("开始"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onFinish"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the onFinish of the Stepper(ItemState.Waiting)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        TestDriver.driver.waitForComponent(On().id("Initialize_onFinish"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("not on Finish"), 2000i32)
        TestDriver.driver.waitForComponent(On().id("Waiting2"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Waiting"), 2000i32)
        TestDriver.driver.waitForComponent(On().onType("LoadingProgress"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onFinish"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the onFinish of the Stepper(ItemState.Skip)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        TestDriver.driver.waitForComponent(On().id("Initialize_onFinish"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("not on Finish"), 2000i32)
        TestDriver.driver.waitForComponent(On().id("Skip2"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Skip"), 2000i32)
        TestDriver.driver.waitForComponent(On().text("跳过"), 500i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("onFinish"), 1000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"not on Finish\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
}
