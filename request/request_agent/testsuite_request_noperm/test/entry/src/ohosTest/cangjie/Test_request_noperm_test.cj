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

import ohos.base.*
import std.unittest.testmacro.*
import ohos.request.*
import kit.AbilityKit.UIAbilityContext
import ohos.arkui.state_management.AppStorage
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_request_noperm {
    /*
     * @tc.number    : Sub_Cangjie_test_requestCreate_noperm
     * @tc.name      : test_requestCreate_noperm
     * @tc.desc      : verify request create/start/resume throws 201 when INTERNET is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_requestCreate_noperm(): Unit {
        sleepFor(2.second)
        let ctx = match (AppStorage.get<UIAbilityContext>("abilityContext")) {
            case Some(c) => c
            case None => throw Exception("failed to get ability context")
        }
        let config = Config(Action.Download, "https://gitee.com/organizations/openharmony/projects",
            saveas: "noperm_download.bin", overwrite: true)
        try {
            let task = create(ctx, config)
            Hilog.info(0u32, "cangjietest", "request create succeeded unexpectedly, check start/resume")
            try {
                task.start()
                @Expect(false)
            } catch (e: BusinessException) {
                Hilog.info(0u32, "cangjietest", "request start noperm code=${e.code}")
                @Expect(e.code, 201)
            }
            try {
                task.resume()
                @Expect(false)
            } catch (e: BusinessException) {
                Hilog.info(0u32, "cangjietest", "request resume noperm code=${e.code}")
                @Expect(e.code, 201)
            }
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "request create noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }
}
