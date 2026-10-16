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
import ohos_app_cangjie_entry.MyAbilityStage
import kit.AbilityKit.*
import ohos.business_exception.BusinessException
import ohos.arkui.state_management.AppStorage
import std.time.*

@Test
class Test_AbilityStage {
    /*
     * @tc.number    : Sub_Cangjie_AppRecovery_restartApp_0100
     * @tc.name      : Test_appRecovery_restartApp
     * @tc.desc      : Calls appRecovery.restartApp as in the ArkTS interface test and fails only if the call throws.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_appRecovery_restartApp(): Unit {
        try {
            restartApp()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "restartApp failed: ${e.code} ${e.message}")
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_onCreate_0100
     * @tc.name      : Test_abilityStage_onCreate
     * @tc.desc      : Instantiates the application AbilityStage and invokes its onCreate callback.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_abilityStage_onCreate(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityStage_onCreate begins.")
        var attempts = 0i64
        var ctx: ?AbilityStageContext = None
        while (attempts < 30i64) {
            ctx = AppStorage.get<AbilityStageContext>("abilityStageContext")
            if (ctx.isSome()) {
                break
            }
            sleep(Duration.second)
            attempts += 1i64
        }
        let context = ctx.getOrThrow()
        @Expect(context.filesDir.contains("entry"), true)
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityStage_onCreate ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_context_0200
     * @tc.name      : Test_abilityStage_context
     * @tc.desc      : Reads the AbilityStage context property without assuming framework assignment.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_abilityStage_context(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityStage_context begins.")
        var attempts = 0i64
        var ctx: ?AbilityStageContext = None
        while (attempts < 30i64) {
            ctx = AppStorage.get<AbilityStageContext>("abilityStageContext")
            if (ctx.isSome()) {
                break
            }
            sleep(Duration.second)
            attempts += 1i64
        }
        try {
            let context = ctx.getOrThrow()
            @Expect(context.filesDir.contains("entry"), true)
        } catch (e: Exception) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "Test_abilityStage_context fail " + e.toString())
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityStage_context ends.")
    }
}
