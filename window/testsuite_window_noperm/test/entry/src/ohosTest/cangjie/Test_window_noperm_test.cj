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
import ohos.window.{Configuration as WinConf, createWindow, getLastWindow, WindowType}
import kit.AbilityKit.UIAbilityContext
import ohos.arkui.state_management.AppStorage
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_window_noperm {
    /*
     * @tc.number    : Sub_Cangjie_test_createFloatWindow_noperm
     * @tc.name      : test_createFloatWindow_noperm
     * @tc.desc      : verify createWindow(TypeFloat) throws 201 when SYSTEM_FLOAT_WINDOW is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_createFloatWindow_noperm(): Unit {
        sleepFor(2.second)
        let ctx = match (AppStorage.get<UIAbilityContext>("abilityContext")) {
            case Some(c) => c
            case None => throw Exception("failed to get ability context")
        }
        let mainId = getLastWindow(ctx).getWindowProperties().id
        let config = WinConf(name: "nopermFloatWin", windowType: WindowType.TypeFloat, ctx: ctx, displayId: 0,
            parentId: Int64(mainId))
        try {
            let _ = createWindow(config)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "createWindow(TypeFloat) noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }
}
