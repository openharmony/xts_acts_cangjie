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
class ListItemGroup_init_2_test {
    @BeforeAll
    func beforeAll() {
        TestDriver.driver.waitForComponent(On().id("ListItemGroup_id"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_ListItemGroup_init_2")
}
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestListItemGroup_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the ListItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        let driver:Driver=Driver.create()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Monday_Head")["content"], "\"Monday\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Monday_Foot"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Monday_Foot")["content"], "\"Total 3 classes\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Tuesday_Head"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Tuesday_Head")["content"], "\"Tuesday\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Tuesday_Foot"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Tuesday_Foot")["content"], "\"Total 3 classes\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Wednesday_Head"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Wednesday_Head")["content"], "\"Wednesday\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Wednesday_Foot"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Wednesday_Foot")["content"], "\"Total 3 classes\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Thursday_Head"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Thursday_Head")["content"], "\"Thursday\"")
        driver.waitForComponent(On().id("list_id"),300i32).getOrThrow().scrollSearch(On().id("Thursday_Foot"))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Thursday_Foot")["content"], "\"Total 3 classes\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
