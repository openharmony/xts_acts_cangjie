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

import kit.AbilityKit.*
import ohos.arkui.state_macro_manage.r
import ohos.base.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
internal import ohos.resource.__GenerateResource__

@Test
class TestAbilityWantConstant {

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityWantConstant_0100
     * @tc.name      : test_wantConstant_Params
     * @tc.desc      : test AbilityStage test_wantConstant_Params
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wantConstant_Params() {
        var str1 = Params.ABILITY_BACK_TO_OTHER_MISSION_STACK.toString()
        @Expect(str1, "ability.params.backToOtherMissionStack")

        var str2 = Params.ABILITY_RECOVERY_RESTART.toString()
        @Expect(str2, "ohos.ability.params.abilityRecoveryRestart")

        var str3 = Params.CONTENT_TITLE_KEY.toString()
        @Expect(str3, "ohos.extra.param.key.contentTitle")

        var str4 = Params.SHARE_ABSTRACT_KEY.toString()
        @Expect(str4, "ohos.extra.param.key.shareAbstract")

        var str5 = Params.SHARE_URL_KEY.toString()
        @Expect(str5, "ohos.extra.param.key.shareUrl")

        var str6 = Params.SUPPORT_CONTINUE_PAGE_STACK_KEY.toString()
        @Expect(str6, "ohos.extra.param.key.supportContinuePageStack")

        var str7 = Params.SUPPORT_CONTINUE_SOURCE_EXIT_KEY.toString()
        @Expect(str7, "ohos.extra.param.key.supportContinueSourceExit")
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityWantConstant_0200
     * @tc.name      : test_wantConstant_Flags
     * @tc.desc      : test AbilityStage test_wantConstant_Flags
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wantConstant_Flags() {
        var str1 = Flags.FLAG_AUTH_READ_URI_PERMISSION
        @Expect(str1, 0x00000001)

        var str2 = Flags.FLAG_AUTH_WRITE_URI_PERMISSION
        @Expect(str2, 0x00000002)

        var str3 = Flags.FLAG_AUTH_PERSISTABLE_URI_PERMISSION
        @Expect(str3, 0x00000040)

        var str4 = Flags.FLAG_INSTALL_ON_DEMAND
        @Expect(str4, 0x00000800)

        var str5 = Flags.FLAG_START_WITHOUT_TIPS
        @Expect(str5, 0x40000000)
    }
}
