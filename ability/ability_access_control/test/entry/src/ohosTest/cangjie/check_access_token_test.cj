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
class TestCheckAccessToken {
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_3900
     * @tc.name      : test_case_39
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_39(): Unit {
        let cases_1283 = [
            "ohos.permission.ACCESS_BLUETOOTH",
            "ohos.permission.MEDIA_LOCATION",
            "ohos.permission.APP_TRACKING_CONSENT",
            "ohos.permission.ACTIVITY_MOTION",
            "ohos.permission.CAMERA",
            "ohos.permission.DISTRIBUTED_DATASYNC",
            "ohos.permission.LOCATION_IN_BACKGROUND",
            "ohos.permission.APPROXIMATELY_LOCATION",
            "ohos.permission.LOCATION",
            "ohos.permission.MICROPHONE",
            "ohos.permission.READ_CALENDAR",
            "ohos.permission.WRITE_CALENDAR",
            "ohos.permission.READ_HEALTH_DATA",
            "ohos.permission.ACCESS_NEARLINK",
            "ohos.permission.READ_WRITE_DOWNLOAD_DIRECTORY",
            "ohos.permission.READ_WRITE_DOCUMENTS_DIRECTORY",
            "ohos.permission.CUSTOM_SCREEN_CAPTURE",
            "ohos.permission.READ_MEDIA",
            "ohos.permission.WRITE_MEDIA",
            "ohos.permission.SYSTEM_FLOAT_WINDOW",
            "ohos.permission.READ_CONTACTS",
            "ohos.permission.WRITE_CONTACTS",
            "ohos.permission.READ_AUDIO",
            "ohos.permission.WRITE_AUDIO",
            "ohos.permission.READ_IMAGEVIDEO",
            "ohos.permission.WRITE_IMAGEVIDEO",
            "ohos.permission.READ_WRITE_DESKTOP_DIRECTORY",
            "ohos.permission.ACCESS_DDK_USB",
            "ohos.permission.ACCESS_DDK_HID",
            "ohos.permission.READ_PASTEBOARD",
            "ohos.permission.FILE_ACCESS_PERSIST",
            "ohos.permission.INTERCEPT_INPUT_EVENT",
            "ohos.permission.INPUT_MONITORING",
            "ohos.permission.SHORT_TERM_WRITE_IMAGEVIDEO",
            "ohos.permission.READ_WRITE_USER_FILE",
            "ohos.permission.READ_WRITE_USB_DEV",
            "ohos.permission.GET_WIFI_PEERS_MAC",
            "ohos.permission.kernel.DISABLE_CODE_MEMORY_PROTECTION",
            "ohos.permission.kernel.ALLOW_WRITABLE_CODE_MEMORY",
            "ohos.permission.kernel.ALLOW_EXECUTABLE_FORT_MEMORY",
            "ohos.permission.MANAGE_PASTEBOARD_APP_SHARE_OPTION",
            "ohos.permission.MANAGE_UDMF_APP_SHARE_OPTION",
            "ohos.permission.ACCESS_DISK_PHY_INFO",
            "ohos.permission.PRELOAD_FILE",
            "ohos.permission.SET_PAC_URL",
            "ohos.permission.PERSONAL_MANAGE_RESTRICTIONS",
            "ohos.permission.START_PROVISIONING_MESSAGE",
            "ohos.permission.PERSISTENT_BLUETOOTH_PEERS_MAC",
            "ohos.permission.ACCESS_VIRTUAL_SCREEN",
            "ohos.permission.MANAGE_APN_SETTING",
            "ohos.permission.GET_WIFI_LOCAL_MAC",
            "ohos.permission.kernel.ALLOW_USE_JITFORT_INTERFACE",
            "ohos.permission.kernel.DISABLE_GOTPLT_RO_PROTECTION",
            "ohos.permission.USE_FRAUD_APP_PICKER",
            "ohos.permission.ACCESS_DDK_DRIVERS",
            "ohos.permission.kernel.SUPPORT_PLUGIN",
            "ohos.permission.CUSTOM_SANDBOX",
            "ohos.permission.MANAGE_SCREEN_TIME_GUARD",
            "ohos.permission.CUSTOMIZE_SAVE_BUTTON",
            "ohos.permission.GET_ABILITY_INFO"
        ]
        for (parameter_0 in cases_1283) {
            let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
            let accessTokenId = bundleInfo.appInfo.accessTokenId
            let accessTokenManager = AbilityAccessCtrl.createAtManager()
            let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, parameter_0)
            @Expect(GrantStatus.PermissionDenied.toString(), grantStatus.toString())

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_8600
     * @tc.name      : test_case_86
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_86(): Unit {
        let cases_1284 = [
            "ohos.permission.USE_FRAUD_CALL_LOG_PICKER",
            "ohos.permission.USE_FRAUD_MESSAGES_PICKER"
        ]
        for (parameter_0 in cases_1284) {
            let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
            let accessTokenId = bundleInfo.appInfo.accessTokenId
            let accessTokenManager = AbilityAccessCtrl.createAtManager()
            let grantStatus = accessTokenManager.checkAccessToken(
                accessTokenId,
                parameter_0
            )
            @Expect(GrantStatus.PermissionDenied.toString(), grantStatus.toString())

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_10100
     * @tc.name      : test_case_101
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_101(): Unit {
        let cases_1285 = [
            "ohos.permission.ACCESS_FIDO2_ONLINEAUTH",
            "ohos.permission.DLP_GET_HIDE_STATUS",
            "ohos.permission.SYSTEM_FLOAT_WINDOW",
            "ohos.permission.READ_CONTACTS",
            "ohos.permission.WRITE_CONTACTS",
            "ohos.permission.READ_AUDIO",
            "ohos.permission.WRITE_AUDIO",
            "ohos.permission.READ_IMAGEVIDEO",
            "ohos.permission.WRITE_IMAGEVIDEO",
            "ohos.permission.READ_WRITE_DESKTOP_DIRECTORY",
            "ohos.permission.ACCESS_DDK_USB",
            "ohos.permission.ACCESS_DDK_HID",
            "ohos.permission.READ_PASTEBOARD",
            "ohos.permission.FILE_ACCESS_PERSIST",
            "ohos.permission.INTERCEPT_INPUT_EVENT",
            "ohos.permission.INPUT_MONITORING",
            "ohos.permission.SHORT_TERM_WRITE_IMAGEVIDEO",
            "ohos.permission.READ_WRITE_USER_FILE",
            "ohos.permission.READ_WRITE_USB_DEV",
            "ohos.permission.GET_WIFI_PEERS_MAC",
            "ohos.permission.kernel.DISABLE_CODE_MEMORY_PROTECTION",
            "ohos.permission.kernel.ALLOW_WRITABLE_CODE_MEMORY",
            "ohos.permission.kernel.ALLOW_EXECUTABLE_FORT_MEMORY",
            "ohos.permission.MANAGE_PASTEBOARD_APP_SHARE_OPTION",
            "ohos.permission.MANAGE_UDMF_APP_SHARE_OPTION",
            "ohos.permission.ACCESS_DISK_PHY_INFO",
            "ohos.permission.PRELOAD_FILE",
            "ohos.permission.SET_PAC_URL",
            "ohos.permission.PERSONAL_MANAGE_RESTRICTIONS",
            "ohos.permission.START_PROVISIONING_MESSAGE",
            "ohos.permission.PERSISTENT_BLUETOOTH_PEERS_MAC",
            "ohos.permission.ACCESS_VIRTUAL_SCREEN",
            "ohos.permission.MANAGE_APN_SETTING",
            "ohos.permission.GET_WIFI_LOCAL_MAC",
            "ohos.permission.kernel.ALLOW_USE_JITFORT_INTERFACE",
            "ohos.permission.kernel.DISABLE_GOTPLT_RO_PROTECTION",
            "ohos.permission.USE_FRAUD_APP_PICKER",
            "ohos.permission.ACCESS_DDK_DRIVERS",
            "ohos.permission.kernel.SUPPORT_PLUGIN",
            "ohos.permission.CUSTOM_SANDBOX",
            "ohos.permission.MANAGE_SCREEN_TIME_GUARD",
            "ohos.permission.CUSTOMIZE_SAVE_BUTTON",
            "ohos.permission.GET_ABILITY_INFO",
            "ohos.permission.ACCESS_FIDO2_ONLINEAUTH",
            "ohos.permission.DLP_GET_HIDE_STATUS"
        ]
        for (parameter_0 in cases_1285) {
            let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
            let accessTokenId = bundleInfo.appInfo.accessTokenId
            let accessTokenManager = AbilityAccessCtrl.createAtManager()
            let grantStatus = accessTokenManager.checkAccessToken(accessTokenId, parameter_0)
            @Expect(GrantStatus.PermissionDenied.toString(), grantStatus.toString())

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_checkAccessToken_13100
     * @tc.name      : test_case_131
     * @tc.desc      : Verify whether the application has granted permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_131(): Unit {
        let cases_1286 = [
            "ohos.permission.USE_FRAUD_CALL_LOG_PICKER",
            "ohos.permission.USE_FRAUD_MESSAGES_PICKER"
        ]
        for (parameter_0 in cases_1286) {
            let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
            let accessTokenId = bundleInfo.appInfo.accessTokenId
            let accessTokenManager = AbilityAccessCtrl.createAtManager()
            let grantStatus = accessTokenManager.checkAccessToken(
                accessTokenId,
                parameter_0
            )
            @Expect(GrantStatus.PermissionDenied.toString(), grantStatus.toString())

        }
    }
}
