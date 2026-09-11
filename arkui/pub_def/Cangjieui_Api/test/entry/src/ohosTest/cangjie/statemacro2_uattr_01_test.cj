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
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.statemacro2_uattr_01.*
@Test
class statemacro2_uattr_01_test {
    /*
     * @tc.number    : TestStateMacro2_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test @Component, @Entry, @State, @Reusable, @Prop, @Link macros
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_state_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_state_check")["content"], "\"state: state_init\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_prop_check")["content"], "\"prop: state_init\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_link_check")["content"], "\"link: link_parent\"")
        TestDriver.driver.waitForComponent(On().id("sm_change_state_btn"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_state_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_state_check")["content"], "\"state: state_changed\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test @Provide, @Consume (single and two-arg forms)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_provide_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_provide_check")["content"], "\"provide: provided_normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_provide2_check")["content"], "\"provide2: provided_interop\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test @Watch, @Builder, @BuilderParam, @Binder macros
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_watched_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_watched_check")["content"], "\"watched: watch_init\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_watch_check")["content"], "\"watchTriggered: no\"")
        TestDriver.driver.waitForComponent(On().id("sm_change_watched_btn"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_watch_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_watched_check")["content"], "\"watched: watch_changed\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_watch_check")["content"], "\"watchTriggered: no\"")
        // @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_builder_check")["content"], "\"header_from_builder\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test @Observed, @Publish macros
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_observed_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_observed_check")["content"] != "\"observed: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_publish_check")["content"] != "\"published: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_observed_check")["content"].contains("title:Math"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_publish_check")["content"].contains("title:Chinese"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test @StorageLink (normal + empty string), @StorageProp (normal + empty string)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_storagelink_normal_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_storagelink_normal_check")["content"] != "\"storageLink(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_storagelink_empty_check")["content"] != "\"storageLink(empty): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_storageprop_normal_check")["content"] != "\"storageProp(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_storageprop_empty_check")["content"] != "\"storageProp(empty): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test @LocalStorageLink (normal + empty), @LocalStorageProp (normal + empty)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_locallink_normal_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_locallink_normal_check")["content"] != "\"localLink(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_locallink_empty_check")["content"] != "\"localLink(empty): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_localprop_normal_check")["content"] != "\"localProp(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_localprop_empty_check")["content"] != "\"localProp(empty): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test @CustomDialog, @r, @rawfile (normal + empty string)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_07(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_rawfile_normal_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_rawfile_normal_check")["content"] != "\"rawfile(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_rawfile_empty_check")["content"] != "\"rawfile(empty): None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestStateMacro2_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test @Preview, @HybridComponentEntry, @Entry(attr) macros
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemacro2_uattr_01_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_statemacro2_uattr_08(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("sm_entry_attr_check"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_entry_attr_check")["content"], "\"entry(attr): entry_attr_init\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sm_preview_check")["content"], "\"preview: preview_init\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
}
