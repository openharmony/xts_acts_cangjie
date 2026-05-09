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
import ohos.base.*
import ohos.hilog.Hilog
import ohos.ability_access_ctrl.AbilityAccessCtrl
import kit.AbilityKit.PermissionRequestResult
import ohos.ability_access_ctrl.GrantStatus
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

let permissionList = ["ohos.permission.READ_CONTACTS"]

@Test
class Test_ability_access_ctrl {
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0100
     * @tc.name      : test_grantStatus
     * @tc.desc      : test ability_access_ctrl checkAccessToken
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_grantStatus() {
        let abilityAccessCtrl = AbilityAccessCtrl.createAtManager()
        let grantStatus = abilityAccessCtrl.checkAccessToken(1, "READ_CONTACTS")
        Hilog.info(0, "cangjie", "grantStatus is ${grantStatus.toString()}", [""])
        Hilog.info(0, "cangjie",
            "grantStaus is equal to PERMISSION_DENIED: ${grantStatus == GrantStatus.PermissionDenied}", [""])
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0300
     * @tc.name      : test_AtManager
     * @tc.desc      : test ability_access_ctrl createAtManager
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_AtManager() {
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
    }
    /*
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0400
     * @tc.name      : test_AtManager_error
     * @tc.desc      : test ability_access_ctrl requestPermissionsFromUser
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_AtManager_error() {
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
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjie", "abilityaccess", "test_AtManager_error: ${e}")
        }
    }
    /* 
     * @tc.number    : Sub_Cangjie_ability_access_ctrl_Test_ability_access_ctrl_0500
     * @tc.name      : test_checkAccessToken
     * @tc.desc      : test ability_access_ctrl checkAccessToken
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_checkAccessToken() {
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
