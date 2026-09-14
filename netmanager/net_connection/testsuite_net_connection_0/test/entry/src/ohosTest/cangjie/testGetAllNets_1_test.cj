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
import kit.NetworkKit.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument

@Test
class testGetAllNets_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_getAllNets_0100
     * @tc.name      : TestCase_27
     * @tc.desc      : test get all nets
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest","Operation success.")
        try {
            let netHandles = getAllNets()
            @Expect(netHandles.size, 1i64)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0, "cangjietest","testcase TestCase_27 fail: ${e.code}" + e.message)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_27 ends.")
    }
}
