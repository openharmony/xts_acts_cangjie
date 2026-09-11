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

let getAddressesByNameCases: Array<AddressByNameParam> = [
    AddressByNameParam("www.baidu.com", expectSuccess: true),
    AddressByNameParam("\u{0}", expectSuccess: false),
    AddressByNameParam("$^%^&*abc", expectSuccess: false),
    AddressByNameParam("zps123456", expectSuccess: false),
    AddressByNameParam("localhost", expectSuccess: true),
    AddressByNameParam("", expectSuccess: false),
    AddressByNameParam("x.y.z", expectSuccess: false),
    AddressByNameParam("!_!", expectSuccess: false),
    AddressByNameParam("(aaa)", expectSuccess: false),
    AddressByNameParam("z[123]*", expectSuccess: false),
    AddressByNameParam("qwer.000", expectSuccess: false),
    AddressByNameParam("/n", expectSuccess: false),
    AddressByNameParam("hello:world", expectSuccess: false),
    AddressByNameParam("ab_cd-ef.gh", expectSuccess: false)
]

@Test
class testNetHandleGetAddressesByName_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_netHandle_getAddressesByName_0100
     * @tc.name      : TestCase_getAddressesByName
     * @tc.desc      : merged from getAddressesByName_0100~1500: getAddressesByName with various domains, expect 2100001 for invalid ones
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_getAddressesByName(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_getAddressesByName begins.")
        for (param in getAddressesByNameCases) {
            let handle = getDefaultNet()
            if (param.expectSuccess) {
                let netAddress = handle.getAddressesByName(param.domain)
                @Expect(netAddress.size > 0i64)
                @Expect(true)
            } else {
                try {
                    let netAddress = handle.getAddressesByName(param.domain)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 2100001i32)
                }
            }
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_getAddressesByName ends.")
    }
}
