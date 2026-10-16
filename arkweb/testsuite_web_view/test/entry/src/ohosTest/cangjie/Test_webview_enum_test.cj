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
import std.unittest.testmacro.*
import ohos.base.*
import ohos.web.webview.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import ohos.web.webview.WebHeader
import ohos.web.webview.HitTestValue
import ohos.web.webview.WebHitTestType 

@Test
class Test_webview_enum {
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0200
     * @tc.name      : testSecurityLevel
     * @tc.desc      : Test SecurityLevel enum toString and equality operations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSecurityLevel(): Unit {
        Hilog.info(0u32, "cangjietest", "testSecurityLevel start")
        let enumArr: Array<SecurityLevel> = [NoneLevel, Secure, Warning, Dangerous]
        let strArr: Array<String> = ["SecurityLevel.NoneLevel", "SecurityLevel.Secure", "SecurityLevel.Warning",
            "SecurityLevel.Dangerous"]
        for (i in 0..enumArr.size) {
            @Expect(enumArr[i].toString() == strArr[i])
            @Expect(enumArr[i] == enumArr[i])
            @Expect(enumArr[i] != enumArr[(i + 1) % enumArr.size])
        }
        Hilog.info(0u32, "cangjietest", "testSecurityLevel end")
    }
 
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0201
     * @tc.name      : testWebHitTestType
     * @tc.desc      : Test WebHitTestType enum toString and equality operations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testWebHitTestType(): Unit {
        Hilog.info(0u32, "cangjietest", "testWebHitTestType start")
        let enumArr: Array<WebHitTestType> = [EditText, Email, Unknown]
        let strArr: Array<String> = ["WebHitTestType.EditText", "WebHitTestType.Email", "WebHitTestType.Unknown"]
        for (i in 0..enumArr.size) {
            @Expect(enumArr[i].toString() == strArr[i])
            @Expect(enumArr[i] == enumArr[i])
            @Expect(enumArr[i] != enumArr[(i + 1) % enumArr.size])
        }
        Hilog.info(0u32, "cangjietest", "testWebHitTestType end")
    }

 
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0202
     * @tc.name      : testWebHeaderFields
     * @tc.desc      : Test WebHitTestType enum toString and equality operations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testWebHeaderFields(): Unit {
        let header = WebHeader("key1", "value1")
        @Expect(header.headerKey == "key1")
        @Expect(header.headerValue == "value1")
    }

}