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
import kit.NetworkKit.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument


let validHostCases: Array<String> = [
    "www.baidu.com",
    "localhost"
]

let invalidHostCases: Array<String> = [
    "$^%^&*abc",
    "zps123456",
    "",
    "x.y.z",
    "!_!",
    "(aaa)",
    "z[123]*",
    "qwer.000",
    "https://gitee.com/organizations/openharmony/projects",
    "hello:world",
    "ab_cd-ef.gh",
    "\u{0}"
]


@Test
class testGetAddressesByName_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_getAddressesByName_0100
     * @tc.name      : TestCase_34
     * @tc.desc      : get addresses by name with valid host, expect success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_34 begins.")
        for (host in validHostCases) {
            Hilog.info(0, "cangjietest","define local variable netAddress")
            try {
                let netAddress = getAddressesByName(host)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        Hilog.info(0, "cangjietest","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_getAddressesByName_0200
     * @tc.name      : TestCase_35
     * @tc.desc      : get addresses by name with invalid host across parameter combinations, expect BusinessException code 2100001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_35 begins.")
        for (host in invalidHostCases) {
            Hilog.info(0, "cangjietest","Operation failed. Cannot connect to service")
            try {
                let netAddress = getAddressesByName(host)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 2100001)
                Hilog.error(0, "", "case_TestCase_35 " + e.toString())
            }
        }
        Hilog.info(0, "cangjietest","testcase TestCase_35 ends.")
    }

}
