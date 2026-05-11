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
import kit.AbilityKit.*
import ohos.ability_access_ctrl.*
import ohos.bundle.bundle_manager.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestCheckAccessToken_1 {

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_BLUETOOTH")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MEDIA_LOCATION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.APP_TRACKING_CONSENT")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACTIVITY_MOTION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CAMERA")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.DISTRIBUTED_DATASYNC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.LOCATION_IN_BACKGROUND")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.APPROXIMATELY_LOCATION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.LOCATION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MICROPHONE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_CALENDAR")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_CALENDAR")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_HEALTH_DATA")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_NEARLINK")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.READ_WRITE_DOWNLOAD_DIRECTORY")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.READ_WRITE_DOCUMENTS_DIRECTORY")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CUSTOM_SCREEN_CAPTURE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_MEDIA")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_MEDIA")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.SYSTEM_FLOAT_WINDOW")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_CONTACTS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_CONTACTS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_AUDIO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_AUDIO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_IMAGEVIDEO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_IMAGEVIDEO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.READ_WRITE_DESKTOP_DIRECTORY")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_USB")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_HID")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_PASTEBOARD")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.FILE_ACCESS_PERSIST")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.INTERCEPT_INPUT_EVENT")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.INPUT_MONITORING")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.SHORT_TERM_WRITE_IMAGEVIDEO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_WRITE_USER_FILE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_WRITE_USB_DEV")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_WIFI_PEERS_MAC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.kernel.DISABLE_CODE_MEMORY_PROTECTION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.kernel.ALLOW_WRITABLE_CODE_MEMORY")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.kernel.ALLOW_EXECUTABLE_FORT_MEMORY")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.MANAGE_PASTEBOARD_APP_SHARE_OPTION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.MANAGE_UDMF_APP_SHARE_OPTION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DISK_PHY_INFO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.PRELOAD_FILE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.SET_PAC_URL")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.PERSONAL_MANAGE_RESTRICTIONS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.START_PROVISIONING_MESSAGE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.USE_FRAUD_CALL_LOG_PICKER"
        )
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.USE_FRAUD_MESSAGES_PICKER"
        )
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.PERSISTENT_BLUETOOTH_PEERS_MAC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_VIRTUAL_SCREEN")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MANAGE_APN_SETTING")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_WIFI_LOCAL_MAC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.kernel.ALLOW_USE_JITFORT_INTERFACE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId,
            "ohos.permission.kernel.DISABLE_GOTPLT_RO_PROTECTION")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.USE_FRAUD_APP_PICKER")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_DRIVERS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.kernel.SUPPORT_PLUGIN")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CUSTOM_SANDBOX")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MANAGE_SCREEN_TIME_GUARD")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CUSTOMIZE_SAVE_BUTTON")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_ABILITY_INFO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}
