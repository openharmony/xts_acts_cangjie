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
import kit.PerformanceAnalysisKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class TestAppEventPackageHolderSetSize {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0100
     * @tc.name      : test_case_1
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_1(): Unit {
        let cases_1044 = [
            ("watcher1", -1i32),
            ("watcher1", -10i32),
            ("watcher1", -100i32),
            ("watcher1", -1000i32),
            ("watcher1", -10000i32),
            ("watcher1", -100000i32),
            ("watcher2", -1i32),
            ("watcher2", -10i32),
            ("watcher2", -100i32),
            ("watcher2", -1000i32),
            ("watcher2", -10000i32),
            ("watcher2", -100000i32)
        ]
        for ((parameter_0, parameter_1) in cases_1044) {
            try {
                let eventPackageHolder = AppEventPackageHolder(parameter_0)
                eventPackageHolder.setSize(parameter_1)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 11104001i32)
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0700
     * @tc.name      : test_case_7
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_7(): Unit {
        let cases_1045 = [
            ("watcher1", 0i32),
            ("watcher1", 1i32),
            ("watcher2", 0i32),
            ("watcher2", 1i32)
        ]
        for ((parameter_0, parameter_1) in cases_1045) {
            try {
                let eventPackageHolder = AppEventPackageHolder(parameter_0)
                eventPackageHolder.setSize(parameter_1)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }

        }
    }
}
