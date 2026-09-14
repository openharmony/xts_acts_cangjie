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
import ohos.base.*
import kit.TestKit.*

@Test
class TestThreads {
    @BeforeAll
    func wait(): Unit {
        sleepFor(5.second)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0100
     * @tc.name      : onWindowStageCreate_spawnMain
     * @tc.desc      : waits for an event with the name "onWindowStageCreate spawn(UIThread)" to occur and then executes the provided closure.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func onWindowStageCreate_spawnMain(): Unit {
        TestDriver.driver.waitForComponent(On().text("onClick mainThread"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("waitForEventWithName"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("currentStage"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("currentStage")["content"],"\"onWindowStageCreate MainThread\"")
    }
}
