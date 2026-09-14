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
import ohos.app.ability.ability_delegator_registry.*
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.{Context, AreaMode, ApplicationInfo, AbilityStageContext, WantValueType}
import kit.AbilityKit.*
import kit.TestKit.{AbilityDelegator, AbilityDelegatorRegistry}
import ohos.business_exception.*  


@Test
class test_getAppContext {
    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_executeShellCommand_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : fail to execute command
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1() {
        Hilog.info(0,"cangjie","testcase TestCase_1 begins.")
        let filesDir = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext().filesDir
        @Expect(filesDir, "/data/storage/el2/base/files")    
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_executeShellCommand_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : fail to execute command
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2() {
        let filesDir = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext().applicationInfo.codePath
        @Expect(filesDir, "/data/app/el1/bundle/public/com.example.ability_delegator_registry")   
    }
}
