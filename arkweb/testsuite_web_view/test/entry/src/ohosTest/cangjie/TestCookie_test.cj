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
import ohos.web.webview.*
import ohos.business_exception.BusinessException
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

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0002
     * @tc.name      : test_putAcceptCookieEnabled_isCookieAllowed
     * @tc.desc      : Test WebCookieManager setAcceptCookiesEnabled and isCookieAllowed methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putAcceptCookieEnabled_isCookieAllowed() {
        Hilog.info(0u32, "cangjietest", "test_putAcceptCookieEnabled_isCookieAllowed start")
        WebCookieManager.setAcceptCookiesEnabled(true)
        var result = WebCookieManager.isCookieAllowed()
        @Expect(result)
        WebCookieManager.setAcceptCookiesEnabled(false)
        result = WebCookieManager.isCookieAllowed()
        @Expect(!result)
        Hilog.info(0u32, "cangjietest", "test_putAcceptCookieEnabled_isCookieAllowed end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0003
     * @tc.name      : test_putAcceptThirdPartyCookieEnabled_isThirdPartyCookieAllowed
     * @tc.desc      : Test WebCookieManager setAcceptThirdPartyCookieEnabled and isThirdPartyCookieAllowed methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_putAcceptThirdPartyCookieEnabled_isThirdPartyCookieAllowed() {
        Hilog.info(0u32, "cangjietest", "test_putAcceptThirdPartyCookieEnabled_isThirdPartyCookieAllowed start")
        WebCookieManager.setAcceptThirdPartyCookieEnabled(true)
        sleep(Duration.second * 1i64)
        var result = WebCookieManager.isThirdPartyCookieAllowed()
        @Expect(result)
        WebCookieManager.setAcceptThirdPartyCookieEnabled(false)
        result = WebCookieManager.isThirdPartyCookieAllowed()
        @Expect(!result)
        Hilog.info(0u32, "cangjietest", "test_putAcceptThirdPartyCookieEnabled_isThirdPartyCookieAllowed end")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0004
     * @tc.name      : test_fetchCookie_noValidCookie
     * @tc.desc      : Test WebCookieManager fetchCookie with a URL without a valid cookie throws 17100002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fetchCookie_noValidCookie() {
        Hilog.info(0u32, "cangjietest", "test_fetchCookie_noValidCookie start")
        try {
            WebCookieManager.fetchCookie("xxx")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100002)
        }
        Hilog.info(0u32, "cangjietest", "test_fetchCookie_noValidCookie end")
    }
}
