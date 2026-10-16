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

internal import ohos.base.LengthProp
internal import ohos.arkui.component.Column
internal import ohos.arkui.component.Row
internal import ohos.arkui.component.Button
internal import ohos.arkui.component.Text
internal import ohos.arkui.component.CustomView
internal import ohos.arkui.component.CJEntry
internal import ohos.arkui.component.loadNativeView
internal import ohos.arkui.component.FontWeight
internal import ohos.arkui.component.ScrollDirection
internal import ohos.arkui.state_management.SubscriberManager
internal import ohos.arkui.state_management.ObservedProperty
internal import ohos.arkui.state_management.LocalStorage
internal import ohos.resource.*
import ohos.arkui.state_macro_manage.Entry
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.State
import ohos.arkui.state_macro_manage.r
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.base.*
import ohos.arkui.component.web.Web
import ohos.web.webview.*
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.Hilog
internal import ohos.arkui.state_management.AppStorage
internal import ohos.resource.__GenerateResource__
import std.sync.AtomicBool
import std.sync.Monitor

public let webInitialized = (AtomicBool(false), Monitor())

var web1 = ""
var web_url = ""
var web_originurla = ""
var agent = ""
var current_agent = ""


let callback: AsyncCallback<String> = {
    errorCode: Option<BusinessException>, data: Option<String> => match (errorCode) {
        case Some(e) => Hilog.error(0u32, "cangjietest", "callback error: errcode is ${e.code}")
        case _ => match (data) {
            case Some(value) =>
                Hilog.info(0u32, "cangjietest", "callback: get data successfully and data is ${value.toArray()}")
                Hilog.info(0u32, "cangjietest", "callback: get data successfully and data is ${value}")
            case _ => Hilog.error(0u32, "cangjietest", "callback: data is null")
        }
    }
}

public func getWebViewController(str: String): WebviewController {
    match (AppStorage.get<WebviewController>("webController${str}")) {
        case None => throw Exception("failed to get webController")
        case Some(c) => c
    }
}

@Entry
@Component
class EntryView {
    @State
    var sendFromCangjie = "Send this message from cangjie to HTML"
    @State
    var receivedFromHtml = "Display received message send from HTML"
    @State
    var muted: Bool = false
    @State
    var msg1 = ""
    @State
    var msg2 = ""
    @State
    var result: String = ""    
    let webController = getWebViewController("")
    let webCtrl = WebviewController(webTag: "test_web_tag")
    let urltrustList: String = "{\"UrlPermissionList\":[{\"scheme\":\"http\", \"host\":\"trust.example.com\", \"port\":80, \"path\":\"test\"}]}"

    func build() {
        Row {
            Column {
                Text(this.result).id("result")
                Text(this.receivedFromHtml).fontSize(6)
                Text(this.msg1).fontSize(6)
                Text(this.msg2).fontSize(6)

                Button("loadpage")
                    .onClick ({
                        evt => webController.loadUrl(@rawfile("message.html"))
                    })
                    .fontSize(5)
                    .height(5)
                    .id("loadmessage")

                Button("loadpage")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","load page1")
                        webController.loadUrl(@rawfile("page1.html"))
                        let url_load1 = webController.getUrl()
                        Hilog.info(0u32, "cangjietest","url_load1 ${url_load1}")
                        this.result = url_load1
                    })
                    .fontSize(5)
                    .height(5)
                    .id("load")
                Button("loadpage2")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","load page2")
                        webController.loadUrl(@rawfile("page2.html"), headers: [WebHeader("headerKey", "headerValue")])
                        let web_rawfile = webController.getUrl()
                        Hilog.info(0u32, "cangjietest","web_rawfile ${web_rawfile}")
                        this.result = web_rawfile
                    })
                    .fontSize(5)
                    .height(5)
                    .id("load2")
                Button("setCustomUserAgent")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","setCustomUserAgent")
                        agent = webController.getCustomUserAgent()
                        current_agent = agent + "ua"
                        webController.setCustomUserAgent(current_agent)
                        let current_customuseragent = webController.getCustomUserAgent()
                        this.result = current_customuseragent
                    })
                    .fontSize(5)
                    .height(5)
                    .id("setCustomUserAgent")
                Button("registerJavaScriptProxy")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","registerJavaScriptProxy")
                        let funcA1 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcA1 ${a}")
                            return "funcA1 " + a
                        }
                        let funcA2 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcA2 ${a}")
                            return "funcA2 " + a
                        }
                        let funcA3 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcA3 ${a}")
                            return "funcA3 " + a
                        }
                        let funcB1 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcB1 ${a}")
                            return "funcB1 " + a
                        }
                        let funcB2 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcB2 ${a}")
                            return "funcB2 " + a
                        }
                        let funcB3 = {
                            a: String =>
                            Hilog.info(0u32, "cangjietest","funcB3 ${a}")
                            return "funcB3 " + a
                        }
                        let funcsA = [funcA1, funcA2, funcA3]
                        let funcsB = [funcB1, funcB2, funcB3]
                        let methodListA = ["testFunA1", "testFunA2", "testFunA3"]
                        let methodListB = ["testFunB1", "testFunB2", "testFunB3"]
                        try {
                            webController.registerJavaScriptProxy(funcsA, "testObjA", methodListA)
                        } catch (e: Exception) {
                            Hilog.info(0u32, "cangjietest",e.message)
                        }
                        webController.registerJavaScriptProxy(funcsA, "testObjA", methodListA)
                        webController.registerJavaScriptProxy(funcsB, "testObjB", methodListB)
                    })
                    .fontSize(5)
                    .height(5)
                    .id("registerJavaScriptProxy")

                Button("refresh")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","refresh")
                        webController.reload()
                    })
                    .fontSize(5)
                    .height(5)
                    .id("refresh")
                Button("test_17100001")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","test_17100001")
                        try {
                            webController.registerJavaScriptProxy(
                                [{p: String => "x"}],
                                "testObj",
                                []
                            )
                        } catch (e: BusinessException) {
                            this.result = "${e.code}"
                        }
                    })
                    .fontSize(20)
                    .height(20)
                    .id("test_17100001")    
                Button("runJavaScript")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","runJavaScript")
                        webController.runJavaScript("testObjA.testFunA2('someData')", callback)
                        webController.runJavaScript("testObjB.testFunB2('someData')", callback)
                    })
                    .fontSize(5)
                    .height(5)
                    .id("runJavaScript")

                Button("storeWebArchive")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","storeWebArchive")
                        webController.storeWebArchive("/data/storage/el2/base/", true, callback)
                    })
                    .fontSize(5)
                    .height(5)
                    .id("storeWebArchive")
                Button("stop").onClick ({
                    evt =>
                    Hilog.info(0u32, "cangjietest","stop")
                    webController.stop()
                })
                    .fontSize(5)
                    .height(5)
                    .id("stop")

                Button("enableSafeBrowsing_true")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","enableSafeBrowsing")
                        webController.enableSafeBrowsing(true)
                    })
                    .fontSize(5)
                    .height(5)
                    .id("enableSafeBrowsing_true")

                Button("isSafeBrowsingEnabled")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","isSafeBrowsingEnabled")
                        webController.enableSafeBrowsing(true)
                        let bool = webController.isSafeBrowsingEnabled()
                        Hilog.info(0u32, "cangjietest","isSafeBrowsingEnabled -- ${bool}")
                        this.result = "${bool}"
                    })
                    .fontSize(5)
                    .height(5)
                    .id("isSafeBrowsingEnabled")

                Button("getSecurityLevel")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","getSecurityLevel")
                        let securityLevel = webController.getSecurityLevel()
                        this.result = securityLevel.toString()
                        Hilog.info(0u32, "cangjietest","get SecurityLevel: ${securityLevel.toString()}")
                        match (securityLevel) {
                            case SecurityLevel.NoneLevel => Hilog.info(0u32, "cangjietest","getSecurityLevel returns NoneLevel")
                            case SecurityLevel.Secure => Hilog.info(0u32, "cangjietest","getSecurityLevel returns Secure")
                            case SecurityLevel.Warning => Hilog.info(0u32, "cangjietest","getSecurityLevel returns Warning")
                            case SecurityLevel.Dangerous => Hilog.info(0u32, "cangjietest","getSecurityLevel returns Dangerous")
                            case _ => throw Exception("unsupported enum constructor")
                        }
                    })
                    .fontSize(5)
                    .height(5)
                    .id("getSecurityLevel")

                Button("isIncognitoMode")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","isIncognitoMode")
                        let bool = webController.isIncognitoMode()
                        Hilog.info(0u32, "cangjietest","isIncognitoMode -- ${bool}")
                        this.result ="${bool}"
                    })
                    .fontSize(5)
                    .height(5)
                    .id("isIncognitoMode")

                Button("getPageHeight")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","getPageHeight")
                        let page_height = webController.getPageHeight()
                        this.result = page_height.toString()
                    })
                    .fontSize(5)
                    .height(5)
                    .id("getPageHeight")                    

                Button("getBackForwardEntries")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","getBackForwardEntries")
                        let backForwardList = webController.getBackForwardEntries()
                        Hilog.info(0u32, "cangjietest","backForwardList currentIndex is ${backForwardList.currentIndex}")
                        Hilog.info(0u32, "cangjietest","backForwardList size is ${backForwardList.size}")
                        this.result = backForwardList.currentIndex.toString()
                    })
                    .fontSize(5)
                    .height(5)
                    .id("getBackForwardEntries")

                Button("getItemAtIndex")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","getItemAtIndex")
                        let backForwardList = webController.getBackForwardEntries()
                        Hilog.info(0u32, "cangjietest","Current size is ${backForwardList.size}.")
                        Hilog.info(0u32, "cangjietest","Current index is ${backForwardList.currentIndex}.")
                        let historyItem = backForwardList.getItemAtIndex(backForwardList.currentIndex)
                        Hilog.info(0u32, "cangjietest","Current historyUrl is ${historyItem.historyUrl}.")
                        Hilog.info(0u32, "cangjietest","Current historyRawUrl is ${historyItem.historyRawUrl}.")
                        Hilog.info(0u32, "cangjietest","Current title is ${historyItem.title}.")
                        this.result = historyItem.historyUrl
                        if (let Some(pixelMap) <- historyItem.icon) {
                            let byteInfo = pixelMap.getPixelBytesNumber()
                            Hilog.info(0u32, "cangjietest","icon byteInfo is ${byteInfo}")
                        }
                    })
                    .fontSize(5)
                    .height(5)
                    .id("getItemAtIndex")
                Button("canGoBack")
                    .onClick ({
                        evt =>
                        let bool_cangoback = webController.canGoBack()
                        this.result = bool_cangoback.toString()
                    })
                    .fontSize(5)
                    .height(5)
                    .id("canGoBack")                    

                Button("removeCache")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","removeCache")
                        webController.removeCache(false)
                    })
                    .fontSize(5)
                    .height(5)
                    .id("removeCache")

                Button("clearHistory")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","clearHistory")
                        webController.clearHistory()
                    })
                    .fontSize(5)
                    .height(5)
                    .id("clearHistory")

                Button("testConfigCookie").onClick ({
                    _ =>
                    try {
                        WebCookieManager.clearAllCookies()
                        WebCookieManager.configCookie("https://www.example.com/", "test=lltConfigCookieSync", incognito: false)
                        let cookie = WebCookieManager.fetchCookie("https://www.example.com/", incognito: false)
                        Hilog.info(0u32, "cangjietest","cookie: ${cookie}")
                    } catch (e: BusinessException) {
                        Hilog.error(0u32, "cangjietest","testConfigCookie error ${e}")
                    }
                })
                .fontSize(5)
                .height(5)
                .id("testConfigCookie")
                Button("scroll").onClick ({
                    _ =>
                    try {
                        let webController = getWebViewController("3")
                        webController.scrollTo(50.0, 50.0)
                        webController.scrollBy(50.0, 50.0)
                        webController.scrollTo(0.0, 0.0, duration: 100)
                        webController.scrollBy(50.0, 50.0, duration: -20)
                    } catch (e: BusinessException) {
                        Hilog.error(0u32, "cangjietest","scroll error ${e}")
                    }
                })
                .fontSize(5)
                .height(5)
                .id("scroll")
                Button("go_example")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","go_example")
                        webCtrl.loadUrl("www.example.com")
                    })
                    .fontSize(5)
                    .height(5)
                    .id("go_example")
                Button("go_url")
                    .onClick ({
                        evt =>
                        Hilog.info(0u32, "cangjietest","go_url")
                        web1 = webCtrl.getUrl()
                        AppStorage.setOrCreate("geturl", web1)
                        this.result = web1
                    })
                    .fontSize(5)
                    .height(5)
                    .id("go_url")                    
                Web(src: @rawfile("page1.html"), controller: webController)
                    .onPageBegin({
                        evt => Hilog.info(0u32, "cangjietest","page begin url")
                    })
                    .onPageEnd(
                        {
                            evt =>
                            Hilog.info(0u32, "cangjietest","page end url")
                        }
                    )
                    .height(100)
                Web(src: "www.example.com", controller: webCtrl)
                    .onPageBegin({
                        evt => Hilog.info(0u32, "cangjietest","page begin url")
                    })
                    .onPageEnd(
                        {
                            evt =>
                            Hilog.info(0u32, "cangjietest","page end url")
                        }
                    )
                    .height(100)                    
                Web(src: "https://www.example.com", controller: getWebViewController("5")).height(30)
                Web(src: @rawfile("page1.html"), controller: getWebViewController(""))
                    .onPageBegin({
                        evt => Hilog.info(0u32, "cangjietest","page begin url")
                    })
                    .onPageEnd(
                        {
                            evt =>
                            Hilog.info(0u32, "cangjietest","page end url")
                            synchronized(webInitialized[1]) {
                                    webInitialized[0]
                                    .store(true)
                                    webInitialized[1]
                                    .notifyAll()
                            }
                        }
                    )
                    .height(100)
                Web(src: @rawfile("page1.html"), controller: getWebViewController("2")).height(100)
                Web(src: @rawfile("scroll.html"), controller: getWebViewController("3"))
                Web(src: @rawfile("page1.html"), controller: getWebViewController("4")).zoomAccess(false).height(100)
            }
        }.height(100.percent)
    }
}
