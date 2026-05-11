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
import std.time.*



@Test
class test_shellcommand {
    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_executeShellCommand_00001
     * @tc.name      : TestCase_1
     * @tc.desc      : fail to execute command
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1() {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let cmd = "echo 'hello world'"        
        let result = delegator.executeShellCommand(cmd)        
        // 验证命令执行成功（退出码为0）
        @Expect(result.exitCode, 0)
        // 验证输出内容包含预期字符串
        @Expect(result.stdResult.contains("hello world"), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_executeShellCommand_00002
     * @tc.name      : TestCase_2
     * @tc.desc      : fail to execute command
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2() {
    //  * 测试用例：正常场景 - 执行带超时参数的shell命令
    //  * 预期结果：命令在超时时间内完成，返回成功        
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let cmd = "echo 'timeout test'"        
        let result = delegator.executeShellCommand(cmd, timeoutSecs: 5)
        @Expect(result.exitCode, 0)
        // 验证输出内容
        @Expect(result.stdResult.contains("timeout test"), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_executeShellCommand_00003
     * @tc.name      : TestCase_3
     * @tc.desc      : fail to execute command
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase  
    @Tag[APILevel22, TestLevel0]
    func TestCase_3() {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let cmd = "sleep 10"
            let result = delegator.executeShellCommand(cmd, timeoutSecs: 1)
            // 如果命令超时但未抛出异常，验证result中包含超时信息
            @Expect(result.exitCode != 0, true)
    }

}
