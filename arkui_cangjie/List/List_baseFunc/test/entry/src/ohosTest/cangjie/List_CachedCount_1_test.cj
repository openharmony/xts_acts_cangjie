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
class List_CachedCount_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.List_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_List_cachedCount_listDirection")
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
     * @tc.number    : TestList_CachedCount_listDirection_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the cachedCount&listDirection of the List 0 Axis.Vertical
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Vertical\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the cachedCount&listDirection of the List 0 Axis.Horizontal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Horizontal\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the cachedCount&listDirection of the List 10 Axis.Vertical
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"10\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Vertical\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the cachedCount&listDirection of the List 10 Axis.Horizontal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"10\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Horizontal\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the cachedCount&listDirection of the List 1000 Axis.Vertical
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Vertical\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the cachedCount&listDirection of the List 1000 Axis.Horizontal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Horizontal\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the cachedCount&listDirection of the List -10 Axis.Vertical
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Vertical\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the cachedCount&listDirection of the List -10 Axis.Horizontal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Horizontal\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the cachedCount&listDirection of the List 50 Axis.Vertical
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"50\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Vertical\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestList_CachedCount_listDirection_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the cachedCount&listDirection of the List 50 Axis.Horizontal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_CachedCount_listDirection10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_CachedCount_listDirection10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["cachedCount"], "\"50\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["listDirection"], "\"Axis.Horizontal\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
}
