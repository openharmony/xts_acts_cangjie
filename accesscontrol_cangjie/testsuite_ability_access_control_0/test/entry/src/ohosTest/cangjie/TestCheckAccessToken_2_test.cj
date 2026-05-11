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
class TestCheckAccessToken_2 {
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_FIDO2_ONLINEAUTH")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.DLP_GET_HIDE_STATUS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.SYSTEM_FLOAT_WINDOW")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_CONTACTS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_CONTACTS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_AUDIO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_AUDIO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_IMAGEVIDEO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.WRITE_IMAGEVIDEO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_USB")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_HID")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_PASTEBOARD")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.FILE_ACCESS_PERSIST")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.INTERCEPT_INPUT_EVENT")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.INPUT_MONITORING")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_WRITE_USER_FILE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.READ_WRITE_USB_DEV")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_WIFI_PEERS_MAC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DISK_PHY_INFO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.PRELOAD_FILE")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.SET_PAC_URL")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_VIRTUAL_SCREEN")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MANAGE_APN_SETTING")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_WIFI_LOCAL_MAC")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
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
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.USE_FRAUD_APP_PICKER")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_DDK_DRIVERS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.kernel.SUPPORT_PLUGIN")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CUSTOM_SANDBOX")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.MANAGE_SCREEN_TIME_GUARD")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.CUSTOMIZE_SAVE_BUTTON")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.GET_ABILITY_INFO")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.ACCESS_FIDO2_ONLINEAUTH")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable bundleInfo")
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenId")
        let accessTokenId = bundleInfo.appInfo.accessTokenId
        Hilog.info(0u32, "CangjieTest", "define local variable accessTokenManager")
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        Hilog.info(0u32, "CangjieTest", "define local variable grantStatus")
        let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, "ohos.permission.DLP_GET_HIDE_STATUS")
        @Assert(GrantStatus.PermissionDenied.toString(), grantStatus.toString())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }
}
