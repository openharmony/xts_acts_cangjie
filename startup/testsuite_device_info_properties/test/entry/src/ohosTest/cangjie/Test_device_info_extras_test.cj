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

internal import kit.BasicServicesKit.*
internal import kit.PerformanceAnalysisKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.base.*

@Test
class Test_device_info_extras {
    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_device_info_extras_0100
     * @tc.name      : test_ODID
     * @tc.desc      : Check whether the DeviceInfo.ODID static prop returns a non-empty String identifier.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ODID(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_ODID begins.")
        let odid = DeviceInfo.ODID
        Hilog.info(0u32, "cangjietest", "DeviceInfo.ODID: ${odid}")
        @Expect(odid.size > 0, true)
        Hilog.info(0u32, "cangjietest", "testcase test_ODID ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_device_info_extras_0200
     * @tc.name      : test_distributionOSApiName
     * @tc.desc      : Check whether the DeviceInfo.distributionOSApiName static prop returns a String value.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_distributionOSApiName(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_distributionOSApiName begins.")
        let apiName = DeviceInfo.distributionOSApiName
        Hilog.info(0u32, "cangjietest", "DeviceInfo.distributionOSApiName: ${apiName}")
        @Expect(apiName.size > 0, true)
        Hilog.info(0u32, "cangjietest", "testcase test_distributionOSApiName ends.")
    }
}
