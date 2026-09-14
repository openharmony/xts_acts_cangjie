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
import kit.AbilityKit.*

@Test
class Test_WantConstant {
    /*
     * @tc.number    : Sub_Cangjie_Params_constants_0100
     * @tc.name      : Test_params_constants
     * @tc.desc      : References the Params constant string set of the want_constant module.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_params_constants(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_params_constants begins.")
        @Expect(Params.ABILITY_BACK_TO_OTHER_MISSION_STACK, "ability.params.backToOtherMissionStack")
        @Expect(Params.ABILITY_RECOVERY_RESTART, "ohos.ability.params.abilityRecoveryRestart")
        @Expect(Params.CONTENT_TITLE_KEY, "ohos.extra.param.key.contentTitle")
        @Expect(Params.SHARE_ABSTRACT_KEY, "ohos.extra.param.key.shareAbstract")
        @Expect(Params.SHARE_URL_KEY, "ohos.extra.param.key.shareUrl")
        @Expect(Params.SUPPORT_CONTINUE_PAGE_STACK_KEY, "ohos.extra.param.key.supportContinuePageStack")
        @Expect(Params.SUPPORT_CONTINUE_SOURCE_EXIT_KEY, "ohos.extra.param.key.supportContinueSourceExit")
        Hilog.info(0u32, "cangjietest", "testcase Test_params_constants ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Flags_constants_0200
     * @tc.name      : Test_flags_constants
     * @tc.desc      : References the Flags bit-flag constants of the want_constant module.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_flags_constants(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_flags_constants begins.")
        @Expect(Flags.FLAG_AUTH_READ_URI_PERMISSION, 0x00000001u32)
        @Expect(Flags.FLAG_AUTH_WRITE_URI_PERMISSION, 0x00000002u32)
        @Expect(Flags.FLAG_AUTH_PERSISTABLE_URI_PERMISSION, 0x00000040u32)
        @Expect(Flags.FLAG_INSTALL_ON_DEMAND, 0x00000800u32)
        @Expect(Flags.FLAG_START_WITHOUT_TIPS, 0x40000000u32)
        Hilog.info(0u32, "cangjietest", "testcase Test_flags_constants ends.")
    }
}