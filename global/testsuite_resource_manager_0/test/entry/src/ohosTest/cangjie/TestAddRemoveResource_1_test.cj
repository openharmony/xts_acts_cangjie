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
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.ArgsValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType
import kit.LocalizationKit.__GenerateResource__

@Test
class TestAddRemoveResource_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_AddRemoveResource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : add and remove Resource by path=/data/storage/el2/base/haps/entry/files/library-default-unsigned.hsp.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to add Resource.")
        try {
            getResourceManager().addResource("/data/storage/el2/base/haps/entry/files/library-default-unsigned.hsp")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid overlay path.")
            @Expect(e.code, 9001010i32)
        }
        Hilog.info(0u32, "CangjieTest", "fail to add Resource.")
        try {
            getResourceManager().removeResource("/data/storage/el2/base/haps/entry/files/library-default-unsigned.hsp")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid overlay path.")
            @Expect(e.code, 9001010i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
}
