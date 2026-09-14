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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.hilog.Hilog
import kit.NetworkKit.*

@Test
class Test_request_01 {
    
    /*
    * @tc.number    : Sub_Cangjie_NetHttp_Test_request_01_0100
    * @tc.name      : test_request_01
    * @tc.desc      : test NetHttp test_request_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_01(): Unit {
        let httpRequest = createHttp()
        try{
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    e, resp =>
                    if (let Some(err) <- e) {
                        Hilog.info(0, "CangjieTest", "${err.code}")
                        Hilog.info(0, "CangjieTest", "${err.message}")
                    }
                    if (let Some(r) <- resp) {
                        Hilog.info(0, "CangjieTest", "resp:")
                        Hilog.info(0, "test", "resp: ")
                    } else {
                        Hilog.error(0, "CangjieTest", "response is none")
                    }
                }
            )
           @Expect(true)
        } catch(e:Exception) {
            @Expect(false)
            Hilog.error(0,  "", "case_test_request_01 " + e.toString())
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_NetHttp_Test_request_01_0200
    * @tc.name      : test_request_02
    * @tc.desc      : test NetHttp test_request_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_02(): Unit {
        let httpRequest = createHttp()
        try{
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    e, resp =>
                    if (let Some(err) <- e) {
                        Hilog.info(0, "CangjieTest", "${err.code}")
                        Hilog.info(0, "CangjieTest", "${err.message}")
                    }
                    if (let Some(r) <- resp) {
                        Hilog.info(0, "CangjieTest", "resp:")
                        match (r.resultType) {
                            case STRING => Hilog.info(0, "CangjieTest", "STRING")
                            case ARRAY_BUFFER => Hilog.info(0, "CangjieTest", "ARRAY_BUFFER")
                            case _ => Hilog.info(0, "CangjieTest", " ")
                        }
                        match (r.responseCode) {
                            case OK => Hilog.info(0, "CangjieTest", "200")
                            case CREATED => Hilog.info(0, "CangjieTest", "201")
                            case _ => ()
                        }
                        Hilog.info(0, "CangjieTest", "${r.header}")
                        Hilog.info(0, "CangjieTest", "${r.cookies}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.dnsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tcpTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tlsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstSendTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstReceiveTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalFinishTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.redirectTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseHeaderTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseBodyTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalTiming}")
                    } else {
                        Hilog.error(0, "CangjieTest", "response is none")
                    }
                }
            )
           @Expect(true)
        } catch(e:Exception) {
            @Expect(false)
            Hilog.error(0,  "", "case_test_request_02 " + e.toString())
        }
    }
    
    /*
    * @tc.number    : Sub_Cangjie_NetHttp_Test_request_01_0300
    * @tc.name      : test_destroy_03
    * @tc.desc      : test NetHttp test_destroy_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_destroy_03(): Unit {
        let httpRequest = createHttp()
        try{
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    e, resp =>
                    if (let Some(err) <- e) {
                        Hilog.info(0, "CangjieTest", "${err.code}")
                        Hilog.info(0, "CangjieTest", "${err.message}")
                    }
                    if (let Some(r) <- resp) {
                        Hilog.info(0, "CangjieTest", "resp:")
                        match (r.resultType) {
                            case STRING => Hilog.info(0, "CangjieTest", "STRING")
                            case ARRAY_BUFFER => Hilog.info(0, "CangjieTest", "ARRAY_BUFFER")
                            case _ => Hilog.info(0, "CangjieTest", " ")
                        }
                        match (r.responseCode) {
                            case OK => Hilog.info(0, "CangjieTest", "200")
                            case CREATED => Hilog.info(0, "CangjieTest", "201")
                            case _ => ()
                        }
                        Hilog.info(0, "CangjieTest", "${r.header}")
                        Hilog.info(0, "CangjieTest", "${r.cookies}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.dnsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tcpTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tlsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstSendTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstReceiveTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalFinishTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.redirectTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseHeaderTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseBodyTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalTiming}")
                    } else {
                        Hilog.error(0, "CangjieTest", "response is none")
                    }
                }
            )
            httpRequest.destroy()
            @Expect(true)
        } catch(e:Exception) {
            @Expect(false)
            Hilog.error(0,  "", "case_test_destroy_03  " + e.toString())
        }
    }
}
