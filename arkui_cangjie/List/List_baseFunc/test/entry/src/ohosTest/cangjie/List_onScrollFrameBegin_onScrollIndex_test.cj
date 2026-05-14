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
class List_onScrollFrameBegin_onScrollIndex_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.List_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_List_onScrollFrameBegin_onScrollIndex")
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
     * @tc.number    : TestRefresh_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the onScrollFrameBegin&onScrollIndex of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        TestDriver.driver.waitForComponent(On().id("refresh"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("scroll_stage")["content"],"\"undefined\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("offset")["content"],"\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("firstIndex")["content"],"\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("lastIndex")["content"],"\"5\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("middleIndex")["content"],"\"2\"")
        let button:Component=TestDriver.driver.findComponent(On().id("ListItem_4")).getOrThrow()
        let drag:Component=TestDriver.driver.findComponent(On().id("ListItem_2")).getOrThrow()
        button.dragTo(drag)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("scroll_stage")["content"],"\"Scrolling\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("offset")["content"]!="\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("firstIndex")["content"]!="\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("lastIndex")["content"]!="\"5\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("middleIndex")["content"]!="\"2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
