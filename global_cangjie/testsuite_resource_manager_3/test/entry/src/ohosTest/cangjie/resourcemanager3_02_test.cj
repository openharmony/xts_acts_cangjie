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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import kit.LocalizationKit.{Configuration as Config, DeviceType, ScreenDensity}
import ohos.ui_test.*
import ohos_app_cangjie_entry.Global

@Test
class test_GetDeviceCapability {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }
    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : resource_manager getDeviceCapability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let deviceCapability = resourceManager.getDeviceCapability()
            @Expect(deviceCapability.screenDensity.getValue(), "ScreenXxxldpi")
            @Expect(deviceCapability.deviceType.getValue(), "DeviceTypePhone")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }
}

extend DeviceType {
    public func getValue():String{
        match(this){
            case DeviceTypePhone => "DeviceTypePhone"
            case DeviceTypeTablet => "DeviceTypeTablet"
            case DeviceTypeCar => "DeviceTypeCar"
            case DeviceTypePc => "DeviceTypePc"
            case DeviceTypeTv => "DeviceTypeTv"
            case DeviceTypeWearable => "DeviceTypeWearable"
            case DeviceType2In1 => "DeviceType2In1"
            case _=> "other"
        }
    }
}

extend ScreenDensity {
    public func getValue():String{
        match(this){
            case ScreenSdpi => "ScreenSdpi"
            case ScreenMdpi => "ScreenMdpi"
            case ScreenLdpi => "ScreenLdpi"
            case ScreenXldpi => "ScreenXldpi"
            case ScreenXxldpi => "ScreenXxldpi"
            case ScreenXxxldpi => "ScreenXxxldpi"
            case _=> "other"
        }
    }
}


