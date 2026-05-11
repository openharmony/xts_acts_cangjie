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

package ohos_app_cangjie_entry

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.web.webview.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_cookie {
    /*
     * @tc.number    : Sub_Cangjie_webview_Test_webview_3000
     * @tc.name      : test_configCookie_fetchCookie
     * @tc.desc      : test webview fetchCookie
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_configCookie_fetchCookie() {
        sleepFor(2.second)
        WebCookieManager.configCookie("https://www.example.com", "a=b,c=d,e=f")
        let value = WebCookieManager.fetchCookie("https://www.example.com")
        @Expect(value, "a=b,c=d,e=f")
    }

    /*
     * @tc.number    : Sub_Cangjie_webview_Test_webview_3300
     * @tc.name      : test_existCookie_clearAllCookies
     * @tc.desc      : test webview clearAllCookies
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_existCookie_clearAllCookies() {
        WebCookieManager.configCookie("https://www.example.com", "a=b,c=d,e=f")
        var bool = WebCookieManager.hasCookie(incognito: true)
        @Expect(bool, false)
        bool = WebCookieManager.hasCookie(incognito: false)
        @Expect(bool, true)
        WebCookieManager.clearAllCookies()
        WebCookieManager.clearSessionCookie()
        bool = WebCookieManager.hasCookie(incognito: false)
        @Expect(bool, false)
    }
}
