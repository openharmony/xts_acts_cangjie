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
import std.unittest.testmacro.*
import ohos.base.*

@Test
class Test_device_info {
    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_device_info_0100
     * @tc.name      : test_deviceInfo_00
     * @tc.desc      : test BasicServicesKit DeviceInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deviceInfo_00(): Unit {
        let deviceType = DeviceInfo.deviceType
        let manufacture = DeviceInfo.manufacture
        let brand = DeviceInfo.brand
        let marketName = DeviceInfo.marketName
        let productSeries = DeviceInfo.productSeries
        let productModel = DeviceInfo.productModel
        let softwareModel = DeviceInfo.softwareModel
        let hardwareModel = DeviceInfo.hardwareModel
        let serial = DeviceInfo.serial
        let bootloaderVersion = DeviceInfo.bootloaderVersion
        let abiList = DeviceInfo.abiList
        let securityPatchTag = DeviceInfo.securityPatchTag
        let displayVersion = DeviceInfo.displayVersion
        let incrementalVersion = DeviceInfo.incrementalVersion
        let osReleaseType = DeviceInfo.osReleaseType
        let osFullName = DeviceInfo.osFullName
        let majorVersion = DeviceInfo.majorVersion
        let seniorVersion = DeviceInfo.seniorVersion
        let featureVersion = DeviceInfo.featureVersion
        let buildVersion = DeviceInfo.buildVersion
        let sdkApiVersion = DeviceInfo.sdkApiVersion
        let firstApiVersion = DeviceInfo.firstApiVersion
        let versionId = DeviceInfo.versionId
        let buildType = DeviceInfo.buildType
        let buildUser = DeviceInfo.buildUser
        let buildHost = DeviceInfo.buildHost
        let buildTime = DeviceInfo.buildTime
        let buildRootHash = DeviceInfo.buildRootHash
        let udid = DeviceInfo.udid
        let distributionOSName = DeviceInfo.distributionOSName
        let distributionOSVersion = DeviceInfo.distributionOSVersion
        let distributionOSApiVersion = DeviceInfo.distributionOSApiVersion
        let distributionOSReleaseType = DeviceInfo.distributionOSReleaseType

        Hilog.info(0, "device_test", "osFullName: ${osFullName}")
        Hilog.info(0, "device_test", "productModel: ${productModel}")
        Hilog.info(0, "device_test", "brand: ${brand}")
        Hilog.info(0, "device_test", "deviceType: ${deviceType}")
        Hilog.info(0, "device_test", "udid: ${udid}")
        Hilog.info(0, "device_test", "buildRootHash: ${buildRootHash}")
        Hilog.info(0, "device_test", "buildTime: ${buildTime}")
        Hilog.info(0, "device_test", "buildHost: ${buildHost}")
        Hilog.info(0, "device_test", "buildUser: ${buildUser}")
        Hilog.info(0, "device_test", "buildType: ${buildType}")
        Hilog.info(0, "device_test", "versionId: ${versionId}")
        Hilog.info(0, "device_test", "firstApiVersion: ${firstApiVersion}")
        Hilog.info(0, "device_test", "sdkApiVersion: ${sdkApiVersion}")

        Hilog.info(0, "device_test", "majorVersion: ${majorVersion}")
        Hilog.info(0, "device_test", "displayVersion: ${displayVersion}")
        Hilog.info(0, "device_test", "serial: ${serial}")
        Hilog.info(0, "device_test", "osReleaseType: ${osReleaseType}")
        Hilog.info(0, "device_test", "incrementalVersion: ${incrementalVersion}")
        Hilog.info(0, "device_test", "securityPatchTag: ${securityPatchTag}")
        Hilog.info(0, "device_test", "abiList: ${abiList}")
        Hilog.info(0, "device_test", "bootloaderVersion: ${bootloaderVersion}")
        Hilog.info(0, "device_test", "hardwareModel: ${hardwareModel}")
        Hilog.info(0, "device_test", "softwareModel: ${softwareModel}")
        Hilog.info(0, "device_test", "productSeries: ${productSeries}")
        Hilog.info(0, "device_test", "marketName: ${marketName}")
        Hilog.info(0, "device_test", "manufacture: ${manufacture}")
        Hilog.info(0, "device_test", "distributionOSName: ${distributionOSName}")
        Hilog.info(0, "device_test", "distributionOSVersion: ${distributionOSVersion}")
        Hilog.info(0, "device_test", "distributionOSApiVersion: ${distributionOSApiVersion}")
        Hilog.info(0, "device_test", "distributionOSReleaseType: ${distributionOSReleaseType}")
        Hilog.info(0, "device_test", "seniorVersion: ${seniorVersion}")
        Hilog.info(0, "device_test", "featureVersion: ${featureVersion}")
        Hilog.info(0, "device_test", "buildVersion: ${buildVersion}")
    }
}
