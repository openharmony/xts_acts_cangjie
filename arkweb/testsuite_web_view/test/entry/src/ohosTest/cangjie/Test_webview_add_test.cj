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
import ohos.web.webview.*
import ohos.business_exception.{BusinessException, AsyncCallback}
import ohos.base.UIThread
import ohos.hilog.Hilog

@Test
class Test_webview_add {

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3001
     * @tc.name      : test_init_webTag_valid_1
     * @tc.desc      : Test WebviewController init with valid webTag
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_webTag_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_1 start")
            let ctrl = WebviewController(webTag: Some("arkweb:0"))
            try {
                ctrl.canGoBack()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3002
     * @tc.name      : test_init_webTag_valid_2
     * @tc.desc      : Test WebviewController init with valid webTag
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_webTag_valid_2(): Unit {
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_2 start")

            let ctrl = WebviewController(webTag: Some("myWebTag"))
            try {
                ctrl.getUrl()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_2 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3003
     * @tc.name      : test_init_webTag_valid_3
     * @tc.desc      : Test WebviewController init with None webTag
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_webTag_valid_3(): Unit {
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_3 start")

            let ctrl = WebviewController(webTag: Some("myWebTag"))
            try {
                ctrl.getTitle()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_init_webTag_valid_3 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3004
     * @tc.name      : test_init_webTag_boundary_1
     * @tc.desc      : Test WebviewController init with empty webTag
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_init_webTag_boundary_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_init_webTag_boundary_1 start")
            let ctrl = WebviewController(webTag: Some(""))
            try {
                ctrl.canGoBack()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_init_webTag_boundary_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3005
     * @tc.name      : test_setWebDebuggingAccess_webDebuggingAccess_valid_1
     * @tc.desc      : Test setWebDebuggingAccess with true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setWebDebuggingAccess_webDebuggingAccess_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_setWebDebuggingAccess_valid_1 start")
            WebviewController.setWebDebuggingAccess(true)
            @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_setWebDebuggingAccess_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3006
     * @tc.name      : test_loadUrl_url_valid_1
     * @tc.desc      : Test loadUrl with valid URL
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrl_url_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_loadUrl_url_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:load1"))
            try {
                ctrl.loadUrl("https://www.example.com", headers: Array<WebHeader>())
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_loadUrl_url_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3007
     * @tc.name      : test_reload_return_value
     * @tc.desc      : Test reload method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_reload_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_reload_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:rel"))
            try {
                ctrl.reload()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_reload_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3008
     * @tc.name      : test_getUserAgent_return_value
     * @tc.desc      : Test getUserAgent method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUserAgent_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getUserAgent_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:ua"))
            try {
                ctrl.getUserAgent()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getUserAgent_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3009
     * @tc.name      : test_canGoBack_return_value
     * @tc.desc      : Test canGoBack method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_canGoBack_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_canGoBack_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:back"))
            try {
                ctrl.canGoBack()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_canGoBack_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3010
     * @tc.name      : test_setCustomUserAgent_userAgent_valid_1
     * @tc.desc      : Test setCustomUserAgent with valid userAgent
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setCustomUserAgent_userAgent_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_setCustomUserAgent_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:cua1"))
            try {
                ctrl.setCustomUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_setCustomUserAgent_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3011
     * @tc.name      : test_runJavaScript_script_valid_1
     * @tc.desc      : Test runJavaScript with valid script
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_runJavaScript_script_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_runJavaScript_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:rj1"))
            let cb: AsyncCallback<String> = { err: Option<BusinessException>, data: Option<String> => () }
            try {
                ctrl.runJavaScript("console.log('Hello')", cb)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_runJavaScript_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3012
     * @tc.name      : test_registerJavaScriptProxy_funcs_valid_1
     * @tc.desc      : Test registerJavaScriptProxy with valid funcs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_registerJavaScriptProxy_funcs_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:rjp1"))
            let funcs = [{ input: String => "result: ${input}" }]
            try {
                ctrl.registerJavaScriptProxy(funcs, "testObj", ["method1"])
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3013
     * @tc.name      : test_getUrl_return_value
     * @tc.desc      : Test getUrl method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUrl_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getUrl_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:getUrlreturnval"))
            try {
                ctrl.getUrl()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getUrl_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3014
     * @tc.name      : test_getOriginalUrl_return_value
     * @tc.desc      : Test getOriginalUrl method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getOriginalUrl_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getOriginalUrl_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:getOriginalUrlr"))
            try {
                ctrl.getOriginalUrl()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getOriginalUrl_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3015
     * @tc.name      : test_pageUp_top_valid_1
     * @tc.desc      : Test pageUp method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_pageUp_top_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_pageUp_top_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:pageUptopvalid1"))
            try {
                ctrl.pageUp(true)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_pageUp_top_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3016
     * @tc.name      : test_pageDown_bottom_valid_1
     * @tc.desc      : Test pageDown method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_pageDown_bottom_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_pageDown_bottom_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:pageDownbottomv"))
            try {
                ctrl.pageDown(true)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_pageDown_bottom_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3017
     * @tc.name      : test_scrollTo_x_valid_1
     * @tc.desc      : Test scrollTo method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_scrollTo_x_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_scrollTo_x_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:scrollToxvalid1"))
            try {
                ctrl.scrollTo(0.0, 0.0)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_scrollTo_x_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3018
     * @tc.name      : test_scrollBy_deltaX_valid_1
     * @tc.desc      : Test scrollBy method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_scrollBy_deltaX_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_scrollBy_deltaX_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:scrollBydeltaXv"))
            try {
                ctrl.scrollBy(0.0, 0.0)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_scrollBy_deltaX_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3019
     * @tc.name      : test_goForward_return_value
     * @tc.desc      : Test goForward method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goForward_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_goForward_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:goForwardreturn"))
            try {
                ctrl.goForward()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_goForward_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3020
     * @tc.name      : test_goBack_return_value
     * @tc.desc      : Test goBack method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goBack_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_goBack_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:goBackreturnval"))
            try {
                ctrl.goBack()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_goBack_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3021
     * @tc.name      : test_goBackOrForward_step_valid_1
     * @tc.desc      : Test goBackOrForward method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goBackOrForward_step_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_goBackOrForward_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:goBackOrForward"))
            try {
                ctrl.goBackOrForward(-2)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_goBackOrForward_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3022
     * @tc.name      : test_getPageHeight_return_value
     * @tc.desc      : Test getPageHeight method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getPageHeight_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getPageHeight_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:getPageHeightre"))
            try {
                ctrl.getPageHeight()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getPageHeight_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3023
     * @tc.name      : test_getTitle_return_value
     * @tc.desc      : Test getTitle method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTitle_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getTitle_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:getTitlereturnv"))
            try {
                ctrl.getTitle()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getTitle_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3024
     * @tc.name      : test_zoom_factor_valid_1
     * @tc.desc      : Test zoom method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoom_factor_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_zoom_factor_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:zoomfactorvalid"))
            try {
                ctrl.zoom(0.5)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_zoom_factor_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3025
     * @tc.name      : test_zoomIn_return_value
     * @tc.desc      : Test zoomIn method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoomIn_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_zoomIn_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:zoomInreturnval"))
            try {
                ctrl.zoomIn()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_zoomIn_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3026
     * @tc.name      : test_zoomOut_return_value
     * @tc.desc      : Test zoomOut method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoomOut_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_zoomOut_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:zoomOutreturnv"))
            try {
                ctrl.zoomOut()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_zoomOut_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3027
     * @tc.name      : test_clearHistory_return_value
     * @tc.desc      : Test clearHistory method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_clearHistory_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_clearHistory_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:clearHistoryrv"))
            try {
                ctrl.clearHistory()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_clearHistory_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3028
     * @tc.name      : test_accessStep_step_valid_1
     * @tc.desc      : Test accessStep method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_accessStep_step_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_accessStep_step_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:accessStepvalid"))
            try {
                ctrl.accessStep(-2)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_accessStep_step_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3029
     * @tc.name      : test_storeWebArchive_baseName_valid_1
     * @tc.desc      : Test storeWebArchive method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_storeWebArchive_baseName_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_storeWebArchive_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:storeWebArchive"))
            try {
                ctrl.storeWebArchive("/data/storage/el1/bundle/web_archive", true, { err: Option<BusinessException>, data: Option<String> => () })
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_storeWebArchive_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3030
     * @tc.name      : test_enableSafeBrowsing_enable_valid_1
     * @tc.desc      : Test enableSafeBrowsing method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enableSafeBrowsing_enable_valid_1(): Unit {
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing_valid_1 start")

            let ctrl = WebviewController(webTag: Some("arkweb:enableSafeBrows"))
            try {
                ctrl.enableSafeBrowsing(true)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing_valid_1 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3031
     * @tc.name      : test_isSafeBrowsingEnabled_return_value
     * @tc.desc      : Test isSafeBrowsingEnabled method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isSafeBrowsingEnabled_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_isSafeBrowsingEnabled_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:isSafeBrowsingE"))
            try {
                ctrl.isSafeBrowsingEnabled()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_isSafeBrowsingEnabled_return_value end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_3032
     * @tc.name      : test_getSecurityLevel_return_value
     * @tc.desc      : Test getSecurityLevel method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getSecurityLevel_return_value(): Unit {
        Hilog.info(0u32, "cangjietest", "test_getSecurityLevel_return_value start")

            let ctrl = WebviewController(webTag: Some("arkweb:getSecurityLev"))
            try {
                ctrl.getSecurityLevel()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getSecurityLevel_return_value end")
    }
}