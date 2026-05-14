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
class GridItem_init_test {
    @BeforeAll
    func beforeAll() {
        TestDriver.driver.waitForComponent(On().id("Grid_id"), 3000i32)
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.GridItem_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_GItem_init")
}
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestGridItem_init_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the GridItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_0")["content"], "\"N0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem1_0")["id"], "\"GridItem1_0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_1")["content"], "\"N1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem1_1")["id"], "\"GridItem1_1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_2")["content"], "\"N2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem1_2")["id"], "\"GridItem1_2\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem2_0")["id"], "\"GridItem2_0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem2_1")["id"], "\"GridItem2_1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItem2_2")["id"], "\"GridItem2_2\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
