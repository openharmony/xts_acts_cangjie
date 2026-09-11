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
import ohos.base.*
import ohos.arkui.component.common.*
import ohos.arkui.component.video.*

@Test
class VideoInterfaces_test {
    /*
     * @tc.number    : TestVideoInterfaces_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test VideoInterfaces_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let vc = VideoController()
        var step = 0
        vc.start()
        step = step + 1
        vc.pause()
        step = step + 1
        vc.stop()
        step = step + 1
        @Expect(step, 3)
        vc.setCurrentTime(0, SeekMode.PreviousKeyframe)
        step = step + 1
        vc.setCurrentTime(5000, SeekMode.NextKeyframe)
        step = step + 1
        vc.setCurrentTime(2500, Option<SeekMode>.None)
        step = step + 1
        vc.setCurrentTime(100, SeekMode.ClosestKeyframe)
        step = step + 1
        @Expect(step, 7)
        vc.requestFullscreen(true)
        step = step + 1
        vc.requestFullscreen(false)
        step = step + 1
        vc.requestFullscreen(Option<Bool>.None)
        step = step + 1
        vc.exitFullscreen()
        step = step + 1
        @Expect(step, 11)
        vc.start()
        vc.pause()
        vc.stop()
        vc.setCurrentTime(0, SeekMode.Accurate)
        vc.requestFullscreen(true)
        vc.exitFullscreen()
        step = step + 1
        @Expect(step, 12)
    }
}
