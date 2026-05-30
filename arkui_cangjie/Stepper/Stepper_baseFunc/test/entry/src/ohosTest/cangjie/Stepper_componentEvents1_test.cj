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
class Stepper_componentEvents_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Stepper_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Stepper_id"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Stepper_componentEvents_1")
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
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"None\"")
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
        TestDriver.driver.waitForComponent(On().text("Next Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageThree"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageThree")["content"], "\"Page Three\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:2\"")
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
        TestDriver.driver.waitForComponent(On().text("Next Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageFour"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageFour")["content"], "\"Page Four\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:0\"")
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
        TestDriver.driver.waitForComponent(On().text("Next Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageFour"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageFour")["content"], "\"Page Four\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
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
        TestDriver.driver.waitForComponent(On().text("Previous Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageThree"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageThree")["content"], "\"Page Three\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:2\"")
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
        TestDriver.driver.waitForComponent(On().text("Previous Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageTwo"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        TestDriver.driver.waitForComponent(On().text("Previous Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageOne"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageOne")["content"], "\"Page One\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:3\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        try{
            TestDriver.driver.waitForComponent(On().text("Previous Page"), 500i32).getOrThrow()
            @Expect(false)
        }catch(e:Exception){
            @Expect(true)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestStepper_componentEvents_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the component events of the Stepper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        TestDriver.driver.waitForComponent(On().text("Next Page"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("pageTwo"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pageTwo")["content"], "\"Page Two\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param1")["content"], "\"prevIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onChange_param2")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param1")["content"], "\"currentIndex:0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onNext_param2")["content"], "\"nextIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param1")["content"], "\"currentIndex:1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrevious_param2")["content"], "\"prevIndex:0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
}
