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
import ohos.hi_trace_meter.*

@Test
class TestStartTrace {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_parameterized_0100
     * @tc.name      : test_start_trace_representative_parameters
     * @tc.desc      : Verify startTrace accepts representative names and task IDs.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_start_trace_representative_parameters(): Unit {
        let names = ["", "trace", "trace_name_01", "trace name", "中文_trace"]
        let taskIds = [-2147483648i32, -1i32, 0i32, 1i32, 127i32, 2147483647i32]
        for (name in names) {
            for (taskId in taskIds) {
                HiTraceMeter.startTrace(name, taskId)
                @Expect(true)
            }
        }
    }
}
