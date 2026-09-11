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


let commandArray = ["", " ", "	", " ", "0", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "ps"]
let timeoutSecsArray = [-9223372036854775808i64, -114514i64, -1i64, 0i64, 1i64, 114514i64, 9223372036854775807i64]

@Test
class testExecuteShellCommand_1 {
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
    func TestCase_1(): Unit {
        Hilog.info(0,"cangjie","testcase TestCase_1 begins.")
        try{
            for(i in 0..7){
                Hilog.info(0,"cangjie","define local variable result")
                let result = AbilityDelegatorRegistry.getAbilityDelegator().executeShellCommand(commandArray[i], timeoutSecs:timeoutSecsArray[i])
                @Expect(true)
            }
        }catch (e:Exception) {
            @Expect(false)
            Hilog.error(0,"","case_TestCase_1 " + e.toString())
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

}