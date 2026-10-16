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
import std.time.*
import ohos.base.*
import ohos.hilog.Hilog
import ohos.ability_access_ctrl.AbilityAccessCtrl
import kit.AbilityKit.PermissionRequestResult
import kit.AbilityKit.BundleManager
import kit.AbilityKit.BundleFlag
import ohos.ability_access_ctrl.GrantStatus
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*


@Test
class TestAbilityAccessCtrl {
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0100
     * @tc.name      : test_request_permission_result_and_grant_status
     * @tc.desc      : test ability_access_ctrl checkAccessToken
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_permission_result_and_grant_status(): Unit {
        let permission = "ohos.permission.READ_CONTACTS"
        let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
        let tokenId = UInt32(bundleInfo.appInfo.accessTokenId)
        let accessTokenManager = AbilityAccessCtrl.createAtManager()
        let callbackFinished = Box(false)
        let permissionGranted = Box(false)

        accessTokenManager.requestPermissionsFromUser(getAbilityContext(), [permission]) {
            error, data => match (error) {
                case Some(_) =>
                    callbackFinished.value = true
                    @Expect(false)
                case None => match (data) {
                    case Some(result) =>
                        @Expect(result.permissions.size, 1)
                        @Expect(result.authResults.size, 1)
                        @Expect(result.dialogShownResults.size, 1)
                        @Expect(result.permissions[0], permission)
                        @Expect(result.authResults[0], 0)
                        let status = accessTokenManager.checkAccessToken(tokenId, permission)
                        @Expect(status, GrantStatus.PermissionGranted)
                        permissionGranted.value = true
                        callbackFinished.value = true
                    case None =>
                        callbackFinished.value = true
                        @Expect(false)
                }
            }
        }
        clickAllThoseButtons()
        waitFor(Duration.second * 6, { => callbackFinished.value })
        @Expect(permissionGranted.value, true)
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0200
     * @tc.name      : test_grant_status
     * @tc.desc      : test ability_access_ctrl checkAccessToken
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_grant_status(): Unit {
        let abilityAccessCtrl = AbilityAccessCtrl.createAtManager()
        let grantStatus = abilityAccessCtrl.checkAccessToken(1, "READ_CONTACTS")
        Hilog.info(0, "cangjie", "grantStatus is ${grantStatus.toString()}", [""])
        if (grantStatus == GrantStatus.PermissionGranted) {
            @Expect(grantStatus == GrantStatus.PermissionGranted, true)
            @Expect(grantStatus != GrantStatus.PermissionDenied, true)
        } else {
            @Expect(grantStatus == GrantStatus.PermissionDenied, true)
            @Expect(grantStatus != GrantStatus.PermissionGranted, true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0300
     * @tc.name      : test_at_manager
     * @tc.desc      : test ability_access_ctrl createAtManager
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_at_manager(): Unit {
        let abilityAccessCtrl = AbilityAccessCtrl.createAtManager()
        let stageContext = getAbilityContext()
        abilityAccessCtrl.requestPermissionsFromUser(stageContext, [""]) {
            errorCode, data => match (errorCode) {
                case Some(e) => Hilog.error(0, "ability_access_ctrl_test",
                    "permissionResultCallBack request error: errcode is ${e.code}")
                case _ => match (data) {
                    case Some(value) => for (i in (0..value.permissions.size)) {
                        Hilog.info(0, "ability_access_ctrl_test", "permissionResultCallBack: hechuwen")
                        Hilog.info(0, "ability_access_ctrl_test",
                            "permissionResultCallBack: ${value.permissions[i]} -- ${value.authResults[i]}")
                    }
                    case _ => Hilog.error(0, "ability_access_ctrl_test",
                        "permissionResultCallBack request error: data is null")
                }
            }
        }
        @Expect(true)
    }
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0400
     * @tc.name      : test_at_manager_error
     * @tc.desc      : test ability_access_ctrl requestPermissionsFromUser
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_at_manager_error(): Unit {
        let abilityAccessCtrl = AbilityAccessCtrl.createAtManager()
        let stageContext = getAbilityContext()
        try {
            abilityAccessCtrl.requestPermissionsFromUser(stageContext, [""]) {
                errorCode, data => match (errorCode) {
                    case Some(e) => Hilog.error(0, "ability_access_ctrl_test",
                        "permissionResultCallBack request error: errcode is ${e.code}")
                    case _ => match (data) {
                        case Some(value) => for (i in (0..value.permissions.size)) {
                            Hilog.info(0, "ability_access_ctrl_test", "permissionResultCallBack: hechuwen")
                            Hilog.info(0, "ability_access_ctrl_test",
                                "permissionResultCallBack: ${value.permissions[i]} -- ${value.authResults[i]}")
                        }
                        case _ => Hilog.error(0, "ability_access_ctrl_test",
                            "permissionResultCallBack request error: data is null")
                    }
                }
            }
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjie", "abilityaccess", "test_at_manager_error: ${e}")
            @Expect(false)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0500
     * @tc.name      : test_check_access_token
     * @tc.desc      : test ability_access_ctrl checkAccessToken
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_check_access_token(): Unit {
        let abilityAccessCtrl = AbilityAccessCtrl.createAtManager()
        try {
            abilityAccessCtrl.checkAccessToken(0, "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 12100001)
        }
        abilityAccessCtrl.checkAccessToken(1, "")
    }
}
