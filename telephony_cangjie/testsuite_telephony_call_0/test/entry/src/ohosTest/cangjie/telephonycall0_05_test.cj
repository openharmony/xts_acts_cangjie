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
import ohos.telephony.call.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testMakeCall_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0100
     * @tc.name      : TestCase_0
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_0(): Unit {
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_0 begins.")
        try {
            Call.makeCall("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_0 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0200
     * @tc.name      : TestCase_1
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_1 begins.")
        try {
            Call.makeCall("123456789")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0300
     * @tc.name      : TestCase_2
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_2 begins.")
        try {
            Call.makeCall("abcdrf")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0400
     * @tc.name      : TestCase_3
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_3 begins.")
        try {
            Call.makeCall("010-222222")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0500
     * @tc.name      : TestCase_4
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_4 begins.")
        try {
            Call.makeCall("9223372036854775807")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
        Hilog.info(0, "cangjietest", "testcase testMakeCall_1 TestCase_4 ends.")
    }
}
