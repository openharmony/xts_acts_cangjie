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
import ohos.arkui.component.text_timer.*


@Test
class TextTimerInterfaces_test {
    /*
     * @tc.number    : TestTextTimerController_0100
     * @tc.name      : TestCase_TextTimerController_1
     * @tc.desc      : construct TextTimerController, call start/pause/reset, validate all succeed
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_TextTimerController_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TextTimerController_1 begins.")
        let controller = TextTimerController()
        var opsCount = 0
        controller.start()
        opsCount = opsCount + 1
        controller.pause()
        opsCount = opsCount + 1
        controller.reset()
        opsCount = opsCount + 1
        @Expect(opsCount, 3)
        controller.start()
        opsCount = opsCount + 1
        @Expect(opsCount, 4)
        controller.pause()
        opsCount = opsCount + 1
        controller.reset()
        opsCount = opsCount + 1
        @Expect(opsCount, 6)
        Hilog.info(0u32, "CangjieTest", "testcase TextTimerController_1 ends.")
    }
}
