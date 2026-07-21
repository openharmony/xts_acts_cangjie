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

@Test
class testAppEventPackageHolderConstructor_1 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_Constructor_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : AppEventPackageHolder constructor, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder constructor")
            AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_Constructor_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : AppEventPackageHolder constructor, watcherName: "".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder constructor")
            AppEventPackageHolder("")
            Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }
}
