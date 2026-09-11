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
import ohos.net.http.*
import ohos.net.http.HttpRequestOptions
import ohos.net.connection.HttpProxy
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*



@Test
class httpRequest_request_1 {
    /*
     * @tc.number    : Sub_Cangjie_netHttp_httpRequest_request_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Send a http request to "https://gitee.com/organizations/openharmony/projects"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable httpRequst")
        let httpRequst = createHttp()
        Hilog.info(0, "cangjietest", "request")
        httpRequst.request(
            "https://gitee.com/organizations/openharmony/projects",
            {
                BusinessException: Option<BusinessException>, response: Option<HttpResponse> =>
                if (let Option.Some(err) <- BusinessException) {
                    Hilog.info(0, "cangjietest", "Erro Code:${err.code}")
                    Hilog.info(0, "cangjietest", "Erro Msg:${err.message}")
                }
                if (let Option.Some(resp) <- response) {
                    let r: HttpData = resp.result
                    match (resp.resultType) {
                        case STRING => Hilog.info(0, "cangjietest", "Data Type: STRING, Value:")
                        case ARRAY_BUFFER => Hilog.info(0, "cangjietest", "Data Type: ARRAY_BUFFER, Value:")
                        case _ => Hilog.error(0, "cangjietest", "Illegal resultType!")
                    }
                    Hilog.info(0, "cangjietest", "Response Header:\n  ${resp.header}")
                    Hilog.info(0, "cangjietest", "Response Cookies:\n  ${resp.cookies}")
                    @Expect(BusinessException.isNone(), true)
                } else {
                    @Expect(response.isNone(), true)
                    Hilog.error(0, "cangjietest", "None Response!")
                }
                Hilog.info(0, "cangjietest", "response callback")
            },
        )
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }
}