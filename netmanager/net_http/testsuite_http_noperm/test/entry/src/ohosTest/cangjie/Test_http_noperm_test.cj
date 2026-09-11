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
import ohos.net.http.*
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

class HttpCallbackState {
    public var asserted: Bool = false
}

@Test
class Test_http_noperm {
    private func waitCallback(state: HttpCallbackState): Bool {
        var waitedMs = 0
        while (!state.asserted && waitedMs < 30000) {
            sleepFor(100.milliSecond)
            waitedMs += 100
        }
        state.asserted
    }

    /*
     * @tc.number    : Sub_Cangjie_test_httpRequest_noperm
     * @tc.name      : test_httpRequest_noperm
     * @tc.desc      : verify HttpRequest.request throws 201 when INTERNET is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_httpRequest_noperm(): Unit {
        let state = HttpCallbackState()
        let httpRequest = createHttp()
        try {
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    err: Option<BusinessException>, resp: Option<HttpResponse> =>
                    match (err) {
                        case Some(e) =>
                            Hilog.info(0u32, "cangjietest", "http request noperm code=${e.code}")
                            @Expect(e.code, 201)
                        case None => @Expect(false)
                    }
                    state.asserted = true
                },
            )
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "http request sync noperm code=${e.code}")
            @Expect(e.code, 201)
            state.asserted = true
        }
        @Expect(waitCallback(state), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_httpRequestWithOptions_noperm
     * @tc.name      : test_httpRequestWithOptions_noperm
     * @tc.desc      : verify HttpRequest.request(url, options) throws 201 when INTERNET is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_httpRequestWithOptions_noperm(): Unit {
        let state = HttpCallbackState()
        let httpRequest = createHttp()
        let options = HttpRequestOptions(method: RequestMethod.Get, readTimeout: 30000u32,
            connectTimeout: 30000u32)
        try {
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                options,
                {
                    err: Option<BusinessException>, resp: Option<HttpResponse> =>
                    match (err) {
                        case Some(e) =>
                            Hilog.info(0u32, "cangjietest", "http request(options) noperm code=${e.code}")
                            @Expect(e.code, 201)
                        case None => @Expect(false)
                    }
                    state.asserted = true
                },
            )
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "http request(options) sync noperm code=${e.code}")
            @Expect(e.code, 201)
            state.asserted = true
        }
        @Expect(waitCallback(state), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_httpRequestInStream_noperm
     * @tc.name      : test_httpRequestInStream_noperm
     * @tc.desc      : verify HttpRequest.requestInStream throws 201 when INTERNET is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_httpRequestInStream_noperm(): Unit {
        let state = HttpCallbackState()
        let httpRequest = createHttp()
        try {
            httpRequest.requestInStream(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    err: Option<BusinessException>, resp: Option<UInt32> =>
                    match (err) {
                        case Some(e) =>
                            Hilog.info(0u32, "cangjietest", "http requestInStream noperm code=${e.code}")
                            @Expect(e.code, 201)
                        case None => @Expect(false)
                    }
                    state.asserted = true
                },
            )
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "http requestInStream sync noperm code=${e.code}")
            @Expect(e.code, 201)
            state.asserted = true
        }
        @Expect(waitCallback(state), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_httpRequestInStreamWithOptions_noperm
     * @tc.name      : test_httpRequestInStreamWithOptions_noperm
     * @tc.desc      : verify HttpRequest.requestInStream(url, options) throws 201 when INTERNET is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_httpRequestInStreamWithOptions_noperm(): Unit {
        let state = HttpCallbackState()
        let httpRequest = createHttp()
        let options = HttpRequestOptions(method: RequestMethod.Get, readTimeout: 30000u32,
            connectTimeout: 30000u32)
        try {
            httpRequest.requestInStream(
                "https://gitee.com/organizations/openharmony/projects",
                options,
                {
                    err: Option<BusinessException>, resp: Option<UInt32> =>
                    match (err) {
                        case Some(e) =>
                            Hilog.info(0u32, "cangjietest", "http requestInStream(options) noperm code=${e.code}")
                            @Expect(e.code, 201)
                        case None => @Expect(false)
                    }
                    state.asserted = true
                },
            )
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "http requestInStream(options) sync noperm code=${e.code}")
            @Expect(e.code, 201)
            state.asserted = true
        }
        @Expect(waitCallback(state), true)
    }
}
