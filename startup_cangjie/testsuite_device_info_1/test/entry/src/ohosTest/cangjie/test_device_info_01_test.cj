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

import ohos.device_info.*
import std.regex.*
import ohos.base.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*

@Test
class test_device_info_01 {
    /**
     * @tc.name      test_device_info_regex_01
     * @tc.number    test_device_info_regex_01
     * @tc.desc      Get a string representing the device type.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_01
     * @tc.name      : test_device_info_regex_01
     * @tc.desc      : check application info_test_test_device_info_regex_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_01(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let deviceType: String = DeviceInfo.deviceType
        @Expect(!deviceType.isEmpty() && deviceType.size <= 32)
        @Expect(re.matches(deviceType))
    }

    /**
     * @tc.name      test_device_info_regex_02
     * @tc.number    test_device_info_regex_02
     * @tc.desc      Get a string representing the manufacture name.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_02
     * @tc.name      : test_device_info_regex_02
     * @tc.desc      : check application info_test_test_device_info_regex_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_02(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let manufacture: String = DeviceInfo.manufacture
        @Expect(!manufacture.isEmpty() && manufacture.size <= 32)
        match (re.matches(manufacture)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_03
     * @tc.number    test_device_info_regex_03
     * @tc.desc      Get a string representing the brand.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_03
     * @tc.name      : test_device_info_regex_03
     * @tc.desc      : check application info_test_test_device_info_regex_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_03(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let brand: String = DeviceInfo.brand
        @Expect(!brand.isEmpty() && brand.size <= 32)
        match (re.matches(brand)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_04
     * @tc.number    test_device_info_regex_04
     * @tc.desc      Get a string representing the marketName.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_04
     * @tc.name      : test_device_info_regex_04
     * @tc.desc      : check application info_test_test_device_info_regex_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_04(): Unit {
        let marketName: String = DeviceInfo.marketName
        @Expect(!marketName.isEmpty() && marketName.size <= 32)
    }

    /**
     * @tc.name      test_device_info_regex_05
     * @tc.number    test_device_info_regex_05
     * @tc.desc      Get a string representing the productSeries.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_05
     * @tc.name      : test_device_info_regex_05
     * @tc.desc      : check application info_test_test_device_info_regex_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_05(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let productSeries: String = DeviceInfo.productSeries
        @Expect(!productSeries.isEmpty() && productSeries.size <= 32)
        match (re.matches(productSeries)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_06
     * @tc.number    test_device_info_regex_06
     * @tc.desc      Get a string representing the productModel.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_06
     * @tc.name      : test_device_info_regex_06
     * @tc.desc      : check application info_test_test_device_info_regex_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_06(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let productModel: String = DeviceInfo.productModel
        @Expect(!productModel.isEmpty() && productModel.size <= 32)
        match (re.matches(productModel)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_07
     * @tc.number    test_device_info_regex_07
     * @tc.desc      Get a string representing the softwareModel.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_07
     * @tc.name      : test_device_info_regex_07
     * @tc.desc      : check application info_test_test_device_info_regex_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_07(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let softwareModel: String = DeviceInfo.softwareModel
        @Expect(!softwareModel.isEmpty() && softwareModel.size <= 32)
        match (re.matches(softwareModel)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_08
     * @tc.number    test_device_info_regex_08
     * @tc.desc      Get a string representing the hardwareModel.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_08
     * @tc.name      : test_device_info_regex_08
     * @tc.desc      : check application info_test_test_device_info_regex_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_08(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let hardwareModel: String = DeviceInfo.hardwareModel
        @Expect(!hardwareModel.isEmpty() && hardwareModel.size <= 32)
        match (re.matches(hardwareModel)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_10
     * @tc.number    test_device_info_regex_10
     * @tc.desc      Get a string representing the serial.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_10
     * @tc.name      : test_device_info_regex_10
     * @tc.desc      : check application info_test_test_device_info_regex_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_10(): Unit {
        let serial = DeviceInfo.serial
        @Expect(serial.isEmpty())
    }

    /**
     * @tc.name      test_device_info_regex_11
     * @tc.number    test_device_info_regex_11
     * @tc.desc      Get a string representing the bootloaderVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_11
     * @tc.name      : test_device_info_regex_11
     * @tc.desc      : check application info_test_test_device_info_regex_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_11(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let bootloaderVersion: String = DeviceInfo.bootloaderVersion
        @Expect(!bootloaderVersion.isEmpty())
        match (re.matches(bootloaderVersion)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_12
     * @tc.number    test_device_info_regex_12
     * @tc.desc      Get a string representing the abiList.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_12
     * @tc.name      : test_device_info_regex_12
     * @tc.desc      : check application info_test_test_device_info_regex_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_12(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let abiList: String = DeviceInfo.abiList
        @Expect(!abiList.isEmpty())
        match (re.matches(abiList)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_13
     * @tc.number    test_device_info_regex_13
     * @tc.desc      Get a string representing the securityPatchTag.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_13
     * @tc.name      : test_device_info_regex_13
     * @tc.desc      : check application info_test_test_device_info_regex_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_13(): Unit {
        let re_format_0 = Regex("^[\\x21-\\x7E]+$")
        let re_format_1 = Regex("\\d{4}\\/\\d{2}\\/\\d{2}")
        let securityPatchTag: String = DeviceInfo.securityPatchTag
        @Expect(!securityPatchTag.isEmpty())
        match (re_format_0.matches(securityPatchTag)) {
            case r => @Expect(r)
            case _ => match (re_format_1.matches(securityPatchTag)) {
                case r => @Expect(r)
                case _ => @Expect(true == false)
            }
        }
    }

    /**
     * @tc.name      test_device_info_regex_14
     * @tc.number    test_device_info_regex_14
     * @tc.desc      Get a string representing the displayVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_14
     * @tc.name      : test_device_info_regex_14
     * @tc.desc      : check application info_test_test_device_info_regex_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_14(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let displayVersion: String = DeviceInfo.displayVersion
        @Expect(!displayVersion.isEmpty())
        @Expect(displayVersion.size <= 64)
    }

    /**
     * @tc.name      test_device_info_regex_15
     * @tc.number    test_device_info_regex_15
     * @tc.desc      Get a string representing the incrementalVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_15
     * @tc.name      : test_device_info_regex_15
     * @tc.desc      : check application info_test_test_device_info_regex_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_15(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let incrementalVersion: String = DeviceInfo.incrementalVersion
        @Expect(!incrementalVersion.isEmpty() && incrementalVersion.size <= 32)
        match (re.matches(incrementalVersion)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_16
     * @tc.number    test_device_info_regex_16
     * @tc.desc      Get a string representing the osReleaseType.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_16
     * @tc.name      : test_device_info_regex_16
     * @tc.desc      : check application info_test_test_device_info_regex_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_16(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let osReleaseType: String = DeviceInfo.osReleaseType
        @Expect(!osReleaseType.isEmpty())
        match (re.matches(osReleaseType)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_17
     * @tc.number    test_device_info_regex_17
     * @tc.desc      Get a string representing the osFullName.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_17
     * @tc.name      : test_device_info_regex_17
     * @tc.desc      : check application info_test_test_device_info_regex_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_17(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let osFullName: String = DeviceInfo.osFullName
        @Expect(!osFullName.isEmpty() && osFullName.size <= 32)
        match (re.matches(osFullName)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_18
     * @tc.number    test_device_info_regex_18
     * @tc.desc      Get a string representing the majorVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_18
     * @tc.name      : test_device_info_regex_18
     * @tc.desc      : check application info_test_test_device_info_regex_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_18(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let majorVersion: Int32 = DeviceInfo.majorVersion
        @Expect(majorVersion >= 1 && majorVersion <= 99)
        let str = majorVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_19
     * @tc.number    test_device_info_regex_19
     * @tc.desc      Get a string representing the seniorVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_19
     * @tc.name      : test_device_info_regex_19
     * @tc.desc      : check application info_test_test_device_info_regex_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_19(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let seniorVersion: Int32 = DeviceInfo.seniorVersion
        @Expect(seniorVersion >= 0 && seniorVersion <= 99)
        let str = seniorVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_20
     * @tc.number    test_device_info_regex_20
     * @tc.desc      Get a string representing the featureVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_20
     * @tc.name      : test_device_info_regex_20
     * @tc.desc      : check application info_test_test_device_info_regex_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_20(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let featureVersion: Int32 = DeviceInfo.featureVersion
        @Expect(featureVersion >= 0 && featureVersion <= 99)
        let str = featureVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_21
     * @tc.number    test_device_info_regex_21
     * @tc.desc      Get a string representing the buildVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_21
     * @tc.name      : test_device_info_regex_21
     * @tc.desc      : check application info_test_test_device_info_regex_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_21(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildVersion: Int32 = DeviceInfo.buildVersion
        @Expect(buildVersion >= 0 && buildVersion <= 999)
        let str = buildVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_22
     * @tc.number    test_device_info_regex_22
     * @tc.desc      Get a string representing the sdkApiVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_22
     * @tc.name      : test_device_info_regex_22
     * @tc.desc      : check application info_test_test_device_info_regex_22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_22(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let sdkApiVersion: Int32 = DeviceInfo.sdkApiVersion
        @Expect(sdkApiVersion >= 0)
        let str = sdkApiVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_23
     * @tc.number    test_device_info_regex_23
     * @tc.desc      Get a string representing the firstApiVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_23
     * @tc.name      : test_device_info_regex_23
     * @tc.desc      : check application info_test_test_device_info_regex_23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_23(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let firstApiVersion: Int32 = DeviceInfo.firstApiVersion
        @Expect(firstApiVersion >= 0)
        let str = firstApiVersion.toString()
        match (re.matches(str)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_24
     * @tc.number    test_device_info_regex_24
     * @tc.desc      Get a string representing the versionId.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_24
     * @tc.name      : test_device_info_regex_24
     * @tc.desc      : check application info_test_test_device_info_regex_24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_24(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let versionId: String = DeviceInfo.versionId
        @Expect(!versionId.isEmpty() && versionId.size < 128)
    }

    /**
     * @tc.name      test_device_info_regex_25
     * @tc.number    test_device_info_regex_25
     * @tc.desc      Get a string representing the buildType.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_25
     * @tc.name      : test_device_info_regex_25
     * @tc.desc      : check application info_test_test_device_info_regex_25
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_25(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildType: String = DeviceInfo.buildType
        @Expect(!buildType.isEmpty())
        match (re.matches(buildType)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_26
     * @tc.number    test_device_info_regex_26
     * @tc.desc      Get a string representing the buildUser.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_26
     * @tc.name      : test_device_info_regex_26
     * @tc.desc      : check application info_test_test_device_info_regex_26
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_26(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildUser: String = DeviceInfo.buildUser
        @Expect(!buildUser.isEmpty() && buildUser.size <= 32)
        match (re.matches(buildUser)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_27
     * @tc.number    test_device_info_regex_27
     * @tc.desc      Get a string representing the buildHost.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_27
     * @tc.name      : test_device_info_regex_27
     * @tc.desc      : check application info_test_test_device_info_regex_27
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_27(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildHost: String = DeviceInfo.buildHost
        @Expect(!buildHost.isEmpty() && buildHost.size <= 32)
        match (re.matches(buildHost)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_28
     * @tc.number    test_device_info_regex_28
     * @tc.desc      Get a string representing the buildTime.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_28
     * @tc.name      : test_device_info_regex_28
     * @tc.desc      : check application info_test_test_device_info_regex_28
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_28(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildTime: String = DeviceInfo.buildTime
        @Expect(!buildTime.isEmpty())
    }

    /**
     * @tc.name      test_device_info_regex_29
     * @tc.number    test_device_info_regex_29
     * @tc.desc      Get a string representing the buildRootHash.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_29
     * @tc.name      : test_device_info_regex_29
     * @tc.desc      : check application info_test_test_device_info_regex_29
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_29(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let buildRootHash: String = DeviceInfo.buildRootHash
        @Expect(!buildRootHash.isEmpty() && buildRootHash.size <= 32)
        match (re.matches(buildRootHash)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_30
     * @tc.number    test_device_info_regex_30
     * @tc.desc      Get a string representing the udid.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_30
     * @tc.name      : test_device_info_regex_30
     * @tc.desc      : check application info_test_test_device_info_regex_30
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_30(): Unit {
        let udid: String = DeviceInfo.udid
        @Expect(udid.isEmpty())
    }

    /**
     * @tc.name      test_device_info_regex_31
     * @tc.number    test_device_info_regex_31
     * @tc.desc      Get a string representing the distributionOSName.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_31
     * @tc.name      : test_device_info_regex_31
     * @tc.desc      : check application info_test_test_device_info_regex_31
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_31(): Unit {
        let distributionOSName: String = DeviceInfo.distributionOSName
        if (DeviceInfo.deviceType == "phone") {
            @Expect(!distributionOSName.isEmpty(),true)
        } else {
            @Expect(!distributionOSName.isEmpty(),false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_32
     * @tc.number    test_device_info_regex_32
     * @tc.desc      Get a string representing the distributionOSVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_32
     * @tc.name      : test_device_info_regex_32
     * @tc.desc      : check application info_test_test_device_info_regex_32
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_32(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let distributionOSVersion: String = DeviceInfo.distributionOSVersion
        @Expect(!distributionOSVersion.isEmpty() && distributionOSVersion.size <= 32)
        match (re.matches(distributionOSVersion)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }

    /**
     * @tc.name      test_device_info_regex_33
     * @tc.number    test_device_info_regex_33
     * @tc.desc      Get a string representing the distributionOSApiVersion.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_33
     * @tc.name      : test_device_info_regex_33
     * @tc.desc      : check application info_test_test_device_info_regex_33
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_33(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let distributionOSApiVersion: Int32 = DeviceInfo.distributionOSApiVersion
        @Expect(distributionOSApiVersion >= 0)
    }

    /**
     * @tc.name      test_device_info_regex_34
     * @tc.number    test_device_info_regex_34
     * @tc.desc      Get a string representing the distributionOSReleaseType.
     */
    /*
     * @tc.number    : Sub_Cangjie_test_device_info_regex_34
     * @tc.name      : test_device_info_regex_34
     * @tc.desc      : check application info_test_test_device_info_regex_34
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_device_info_regex_34(): Unit {
        let re = Regex("^[\\x21-\\x7E]+$")
        let distributionOSReleaseType: String = DeviceInfo.distributionOSReleaseType
        @Expect(!distributionOSReleaseType.isEmpty())
        match (re.matches(distributionOSReleaseType)) {
            case r => @Expect(r)
            case _ => @Expect(true == false)
        }
    }
}
