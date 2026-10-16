package ohos_app_cangjie_entry_test

import std.unittest.testmacro.*
import ohos.base.*
import std.runtime.*
import std.time.*
import ohos.arkui.state_macro_manage.rawfile
internal import ohos.resource_manager.AppResource
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.sync.AtomicBool
import std.sync.Monitor
import ohos.web.webview.*
import ohos.multimedia.image.PixelMap
import ohos.business_exception.*
import ohos.hilog.Hilog
import ohos.arkui.state_management.AppStorage
import ohos_app_cangjie_entry.webInitialized
internal import ohos.resource.__GenerateResource__
import kit.TestKit.*

let LongURL = "1" * 50000

public func getWebViewController(str: String): WebviewController {
    match (AppStorage.get<WebviewController>("webController${str}")) {
        case None => throw Exception("failed to get webController")
        case Some(c) => c
    }
}

@Test
class Test_webview {

    let raw = @rawfile("page1.html")
    let wh = WebHeader("key", "value")
    var resultCallback = {
        errorCode: Option<BusinessException>, data: Option<String> => match (errorCode) {
            case Some(e) => @Expect(true)
            case _ => match (data) {
                case Some(value) => @Expect(true)
                case _ => @Expect(true)
            }
        }
    }

    public func getResult(): String {
        TestDriver.driver.waitForComponent(On().id("result"), 3000i32)
        UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("result")["content"]
    }

    protected func beforeAll() {
        let a = webInitialized[1]
        let startTime = DateTime.now()
        Hilog.info(0u32, "cangjietest", "beforeAll wait start: ${startTime.toString()}")
        synchronized(a) {
            if (!webInitialized[0].load()) {
                Hilog.info(0u32, "cangjietest", "page not ready, entering wait(timeout=15s)")
                let ok = webInitialized[1].wait(timeout: Duration.second * 15)
                if (!ok) {
                    Hilog.error(0u32, "cangjietest", "wait web init timeout")
                } else {
                    let elapsed = DateTime.now() - startTime
                    Hilog.info(0u32, "cangjietest", "wait woke up by notify, actual wait = ${elapsed}")
                }
            } else {
                Hilog.info(0u32, "cangjietest", "page already ready, skip wait, 0ms")
            }
        }
        sleep(Duration.second * 2i64)
    }

    override func afterAll(): Unit {
        gc(heavy: true)
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0100
     * @tc.name      : test_getTitle0
     * @tc.desc      : Test WebviewController getTitle method to get page title
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTitle0() {
        Hilog.info(0u32, "cangjietest", "test_getTitle start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page1.html"))
        sleep(Duration.second * 2i64)
        let title = webController.getTitle()
        Hilog.info(0u32, "cangjietest", "title is ${title}")
        @Expect(title, "Page1")
        Hilog.info(0u32, "cangjietest", "test_getTitle end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0102
     * @tc.name      : test_getUserAgent0
     * @tc.desc      : Test WebviewController getUserAgent method to get user agent string
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUserAgent0() {
        Hilog.info(0u32, "cangjietest", "test_getUserAgent start")
        let webController = getWebViewController("")
        let userAgent = webController.getUserAgent()
        @Expect(userAgent.contains("Mozilla"))
        Hilog.info(0u32, "cangjietest", "test_getUserAgent end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0103
     * @tc.name      : test_getUserAgent1
     * @tc.desc      : Test WebviewController getUserAgent method to get user agent string
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUserAgent1() {
        let webController = getWebViewController("")
        let userAgent = webController.getUserAgent()
        @Expect(userAgent.contains("Mozilla"))
        Hilog.info(0u32, "cangjietest", "test_getUserAgent end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0102
     * @tc.name      : test_getUrl
     * @tc.desc      : Test WebviewController getUrl method to get current page URL
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUrl() {
        Hilog.info(0u32, "cangjietest", "test_getUrl start")
        let webController = getWebViewController("")
        let url = webController.getUrl()
        @Expect(url, "")
        Hilog.info(0u32, "cangjietest", "test_getUrl end")
    }
        /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0108
     * @tc.name      : test_getUrl1
     * @tc.desc      : Test WebviewController loadUrl with rawfile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUrl1() {
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile start")
        let webController = getWebViewController("")
        webController.loadUrl("www.example.com")
        sleep(Duration.second * 2i64)
        TestDriver.driver.waitForComponent(On().id("go_url"), 3000i32).getOrThrow().click()
        @Expect(getResult(), "\"http://www.example.com/\"")
    }
        /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0109
     * @tc.name      : test_enableSafeBrowing
     * @tc.desc      : Test WebviewController loadUrl with rawfile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enableSafeBrowing() {
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile start")
        TestDriver.driver.waitForComponent(On().id("isSafeBrowsingEnabled"), 3000i32).getOrThrow().click()        
        sleepFor(1.second)
        @Expect(getResult(), "\"true\"")
    }
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0103
     * @tc.name      : test_getOriginalUrl
     * @tc.desc      : Test WebviewController getOriginalUrl method to get original URL
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getOriginalUrl() {
        Hilog.info(0u32, "cangjietest", "test_getOriginalUrl start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page1.html"))
        sleep(Duration.second * 2i64)
        let OriginalUrl = webController.getOriginalUrl()
        @Expect(OriginalUrl, "resource://rawfile/page1.html")
        Hilog.info(0u32, "cangjietest", "test_getOriginalUrl end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0104
     * @tc.name      : test_pageUp_pageDown
     * @tc.desc      : Test WebviewController pageUp and pageDown methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_pageUp_pageDown() {
        Hilog.info(0u32, "cangjietest", "test_pageUp_pageDown start")
        let webController = getWebViewController("")
        webController.pageUp(false)
        webController.pageUp(true)
        webController.pageDown(false)
        webController.pageDown(true)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_pageUp_pageDown end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0105
     * @tc.name      : test_scrollTo_scrollBy
     * @tc.desc      : Test WebviewController scrollTo and scrollBy methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_scrollTo_scrollBy() {
        Hilog.info(0u32, "cangjietest", "test_scrollTo_scrollBy start")
        TestDriver.driver.waitForComponent(On().id("scroll"), 3000i32).getOrThrow().click()        
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_scrollTo_scrollBy end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0106
     * @tc.name      : test_forward_backward_backOrForward
     * @tc.desc      : Test WebviewController goForward, goBack and goBackOrForward methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_forward_backward_backOrForward() {
        Hilog.info(0u32, "cangjietest", "test_forward_backward_backOrForward start")
        let webController = getWebViewController("")
        webController.goForward()
        webController.goBack()
        webController.goBackOrForward(1)
        webController.goBackOrForward(-1)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_forward_backward_backOrForward end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0107
     * @tc.name      : test_getPageHeight
     * @tc.desc      : Test WebviewController getPageHeight method to get page height
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getPageHeight() {
        Hilog.info(0u32, "cangjietest", "test_getPageHeight start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page1.html"))
        sleep(Duration.second * 2i64)
        webController.getPageHeight()
        TestDriver.driver.waitForComponent(On().id("getPageHeight"), 3000i32).getOrThrow().click()       
        @Expect(getResult(), "\"109\"")        
        Hilog.info(0u32, "cangjietest", "test_getPageHeight end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0108
     * @tc.name      : test_loadUrlRawFile
     * @tc.desc      : Test WebviewController loadUrl with rawfile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrlRawFile() {
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page1.html"))
        sleep(Duration.second * 2i64)
        let url_load1 = webController.getUrl()
        TestDriver.driver.waitForComponent(On().id("load"), 3000i32).getOrThrow().click()          
        sleep(Duration.second)
        @Expect(getResult(), "\"resource://rawfile/page1.html\"")
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0109  
     * @tc.name      : test_loadUrlRawFile2
     * @tc.desc      : Test WebviewController loadUrl with rawfile variant 2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrlRawFile2() {
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile2 start")
        TestDriver.driver.waitForComponent(On().id("load2"), 3000i32).getOrThrow().click()           
        sleep(Duration.second)
        @Expect(getResult(), "\"resource://rawfile/page2.html\"")
        Hilog.info(0u32, "cangjietest", "test_loadUrlRawFile2 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0110
     * @tc.name      : test_setCustomUserAgent
     * @tc.desc      : Test WebviewController setCustomUserAgent and getCustomUserAgent methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setCustomUserAgent() {
        Hilog.info(0u32, "cangjietest", "test_setCustomUserAgent start")
        let webController = getWebViewController("")
        var userAgent = webController.getCustomUserAgent()
        @Expect(userAgent.contains("Mozilla"))
        TestDriver.driver.waitForComponent(On().id("setCustomUserAgent"), 3000i32).getOrThrow().click()          
        sleep(Duration.second * 2i64)
        userAgent = webController.getCustomUserAgent()
        @Expect(userAgent.contains("Mozilla"))
        Hilog.info(0u32, "cangjietest", "test_setCustomUserAgent end")
    }



    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0111
     * @tc.name      : test_runJavaScript
     * @tc.desc      : Test WebviewController runJavaScript method to execute JavaScript code
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_runJavaScript() {
        Hilog.info(0u32, "cangjietest", "test_runJavaScript start")
        let webController = WebviewController(webTag: "test_invalid")
        try {
            webController.runJavaScript("test", resultCallback)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_runJavaScript end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0112
     * @tc.name      : test_registerJavaScriptProxy
     * @tc.desc      : Test WebviewController registerJavaScriptProxy method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_registerJavaScriptProxy() {
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy start")
        TestDriver.driver.waitForComponent(On().id("registerJavaScriptProxy"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("refresh"), 3000i32).getOrThrow().click() 
        TestDriver.driver.waitForComponent(On().id("runJavaScript"), 3000i32).getOrThrow().click()                     
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0113
     * @tc.name      : test_zoom
     * @tc.desc      : Test WebviewController zoom, zoomIn and zoomOut methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoom() {
        Hilog.info(0u32, "cangjietest", "test_zoom start")
        let webController = getWebViewController("")
        webController.zoom(3.0)
        webController.zoomIn()
        webController.zoomOut()
        webController.zoom(-1.0)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_zoom end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0114
     * @tc.name      : test_storeWebArchive
     * @tc.desc      : Test WebviewController storeWebArchive method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_storeWebArchive() {
        Hilog.info(0u32, "cangjietest", "test_storeWebArchive start")
        TestDriver.driver.waitForComponent(On().id("storeWebArchive"), 3000i32).getOrThrow().click()             
        let webController = WebviewController(webTag: "storeWebArchive")
        try {
            webController.storeWebArchive("test", true, resultCallback)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_storeWebArchive end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0115
     * @tc.name      : test_stop
     * @tc.desc      : Test WebviewController stop method
     * @tc.size      : MediumTest
     * @tc.type      : Function   
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stop() {
        Hilog.info(0u32, "cangjietest", "test_stop start")
        let webController = getWebViewController("")
        webController.stop()
        TestDriver.driver.waitForComponent(On().id("stop"), 3000i32).getOrThrow().click()         
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_stop end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0116
     * @tc.name      : test_enableSafeBrowsing1
     * @tc.desc      : Test WebviewController enableSafeBrowsing method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enableSafeBrowsing1() {
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing start")
        let webController = getWebViewController("")
        webController.enableSafeBrowsing(true)
        TestDriver.driver.waitForComponent(On().id("enableSafeBrowsing_true"), 3000i32).getOrThrow().click()          
        let isSafeBrowsingEnabled_true = webController.isSafeBrowsingEnabled()
        @Expect(isSafeBrowsingEnabled_true)
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0116
     * @tc.name      : test_enableSafeBrowsing2
     * @tc.desc      : Test WebviewController enableSafeBrowsing method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enableSafeBrowsing2() {
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing start")
        let webController = getWebViewController("")
        webController.enableSafeBrowsing(false)
        let isSafeBrowsingEnabled_false = webController.isSafeBrowsingEnabled()
        @Expect(isSafeBrowsingEnabled_false, false)
        Hilog.info(0u32, "cangjietest", "test_enableSafeBrowsing end")
    }
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0117
     * @tc.name      : test_isSafeBrowsingEnabled
     * @tc.desc      : Test WebviewController isSafeBrowsingEnabled method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isSafeBrowsingEnabled() {
        Hilog.info(0u32, "cangjietest", "test_isSafeBrowsingEnabled start")
        TestDriver.driver.waitForComponent(On().id("isSafeBrowsingEnabled"), 3000i32).getOrThrow().click()          
        sleepFor(1.second)
        @Expect(getResult(),"\"true\"")
        Hilog.info(0u32, "cangjietest", "test_isSafeBrowsingEnabled end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0118
     * @tc.name      : test_getSecurityLevel
     * @tc.desc      : Test WebviewController getSecurityLevel method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getSecurityLevel() {
        Hilog.info(0u32, "cangjietest", "test_getSecurityLevel start")
        TestDriver.driver.waitForComponent(On().id("getSecurityLevel"), 3000i32).getOrThrow().click()        
        sleepFor(2.second)
        @Expect(getResult(), "\"SecurityLevel.NoneLevel\"")
        Hilog.info(0u32, "cangjietest", "test_getSecurityLevel end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0119
     * @tc.name      : test_isIncognitoMode
     * @tc.desc      : Test WebviewController isIncognitoMode method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isIncognitoMode() {
        Hilog.info(0u32, "cangjietest", "test_isIncognitoMode start")
        TestDriver.driver.waitForComponent(On().id("isIncognitoMode"), 3000i32).getOrThrow().click()          
        @Expect(getResult(), "\"false\"")
        Hilog.info(0u32, "cangjietest", "test_isIncognitoMode end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0120
     * @tc.name      : test_getBackForwardEntries
     * @tc.desc      : Test WebviewController getBackForwardEntries method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getBackForwardEntries() {
        Hilog.info(0u32, "cangjietest", "test_getBackForwardEntries start")
        let webController = getWebViewController("")
        TestDriver.driver.waitForComponent(On().id("getBackForwardEntries"), 3000i32).getOrThrow().click()
        let oldIndex = getResult()
        Hilog.info(0u32, "cangjietest", "oldIndex is ${oldIndex}")
        webController.loadUrl("about:blank")
        sleep(Duration.second * 2i64)
        TestDriver.driver.waitForComponent(On().id("getBackForwardEntries"), 3000i32).getOrThrow().click()
        let newIndex = getResult()
        Hilog.info(0u32, "cangjietest", "newIndex is ${newIndex}")
        @Expect(newIndex != oldIndex)
        Hilog.info(0u32, "cangjietest", "test_getBackForwardEntries end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0121
     * @tc.name      : test_getItemAtIndex
     * @tc.desc      : Test WebviewController getItemAtIndex method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getItemAtIndex() {
        Hilog.info(0u32, "cangjietest", "test_getItemAtIndex start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page2.html"))
        sleep(Duration.second * 2i64)
        TestDriver.driver.waitForComponent(On().id("getItemAtIndex"), 3000i32).getOrThrow().click()          
        sleepFor(1.second)
        @Expect(getResult(), "\"resource://rawfile/page2.html\"")
        Hilog.info(0u32, "cangjietest", "test_getItemAtIndex end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0121
     * @tc.name      : test_cangoback
     * @tc.desc      : Test WebviewController getItemAtIndex method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_cangoback() {
        TestDriver.driver.waitForComponent(On().id("canGoBack"), 3000i32).getOrThrow().click()          
        sleepFor(1.second)
        @Expect(getResult(), "\"true\"")
    }
    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0122
     * @tc.name      : test_clearHistory
     * @tc.desc      : Test WebviewController clearHistory method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_clearHistory() {
        Hilog.info(0u32, "cangjietest", "test_clearHistory start")
        TestDriver.driver.waitForComponent(On().id("clearHistory"), 3000i32).getOrThrow().click()          
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_clearHistory end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0123
     * @tc.name      : test_removeCache
     * @tc.desc      : Test WebviewController removeCache method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_removeCache() {
        Hilog.info(0u32, "cangjietest", "test_removeCache start")
        TestDriver.driver.waitForComponent(On().id("removeCache"), 3000i32).getOrThrow().click()          
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_removeCache end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0124
     * @tc.name      : test_getBackForwardEntries2
     * @tc.desc      : Test WebviewController getBackForwardEntries method variant 2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getBackForwardEntries2() {
        Hilog.info(0u32, "cangjietest", "test_getBackForwardEntries2 start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page1.html"))
        sleep(Duration.second * 2i64)
        TestDriver.driver.waitForComponent(On().id("getBackForwardEntries"), 3000i32).getOrThrow().click()          
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_getBackForwardEntries2 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0125
     * @tc.name      : test_accessStep
     * @tc.desc      : Test WebviewController accessStep method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_accessStep() {
        Hilog.info(0u32, "cangjietest", "test_accessStep start")
        let webController = getWebViewController("")
        webController.loadUrl("about:blank")
        sleep(Duration.second * 2i64)
        let bool = webController.accessStep(1)
        @Expect(!bool)
        try {
            WebviewController(webTag: "test_invalid").accessStep(10000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_accessStep end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0126
     * @tc.name      : test_getTitle2
     * @tc.desc      : Test WebviewController getTitle method variant 2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTitle2() {
        Hilog.info(0u32, "cangjietest", "test_getTitle2 start")
        let webController = getWebViewController("")
        webController.loadUrl(@rawfile("page2.html"))
        sleep(Duration.second * 2i64)
        let title = webController.getTitle()
        Hilog.info(0u32, "cangjietest", "title is ${title}")
        @Expect(title == "Page2")
        Hilog.info(0u32, "cangjietest", "test_getTitle2 end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0127
     * @tc.name      : test_webController
     * @tc.desc      : Test WebviewController initialization
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_webController() {
        Hilog.info(0u32, "cangjietest", "test_webController start")
        let webController = WebviewController(webTag: "web_test_tag")
        try {
            webController.canGoBack()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_webController end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0128
     * @tc.name      : rawfile
     * @tc.desc      : Test WebviewController loadUrl with rawfile path
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func rawfile() {
        Hilog.info(0u32, "cangjietest", "rawfile start")
        let webController = getWebViewController("")
        webController.loadUrl("resource://rawfile/page1.html")
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "rawfile end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0129
     * @tc.name      : test_loadUrl_exception
     * @tc.desc      : Test WebviewController loadUrl exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrl_exception() {
        Hilog.info(0u32, "cangjietest", "test_loadUrl_exception start")
        try {
            WebviewController(webTag: "test_invalid").loadUrl("test", headers: Array<WebHeader>())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").loadUrl("test", headers: [wh])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").loadUrl(raw, headers: [wh])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_loadUrl_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0130
     * @tc.name      : test_funcs_exception
     * @tc.desc      : Test WebviewController methods exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_funcs_exception() {
        Hilog.info(0u32, "cangjietest", "test_funcs_exception start")
        try {
            WebviewController(webTag: "test_invalid").reload()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").getUserAgent()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").setCustomUserAgent("test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").getPageHeight()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").getTitle()
        @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").getCustomUserAgent()
        @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_funcs_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0131
     * @tc.name      : test_runJS_exception
     * @tc.desc      : Test WebviewController runJavaScript and registerJavaScriptProxy exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_runJS_exception() {
        Hilog.info(0u32, "cangjietest", "test_runJS_exception start")
        try {
            WebviewController(webTag: "test_invalid").runJavaScript("test", resultCallback)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").registerJavaScriptProxy(Array<(String) -> String>(), "test", ["1"])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").registerJavaScriptProxy(Array<(String) -> String>(), "test", Array<String>())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").registerJavaScriptProxy([{p: String => "1"}], "test", ["1"])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_runJS_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0132
     * @tc.name      : test_getUrl_exception
     * @tc.desc      : Test WebviewController getUrl and getOriginalUrl exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getUrl_exception() {
        Hilog.info(0u32, "cangjietest", "test_getUrl_exception start")
        try {
            WebviewController(webTag: "test_invalid").getUrl()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }     
        try {
            WebviewController(webTag: "test_invalid").getOriginalUrl()
        @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_getUrl_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0133
     * @tc.name      : test_pageUpDown_exception
     * @tc.desc      : Test WebviewController pageUp and pageDown exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_pageUpDown_exception() {
        Hilog.info(0u32, "cangjietest", "test_pageUpDown_exception start")
        try {
            WebviewController(webTag: "test_invalid").pageUp(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").pageDown(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_pageUpDown_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0134
     * @tc.name      : test_scroll_exception
     * @tc.desc      : Test WebviewController scrollTo and scrollBy exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_scroll_exception() {
        Hilog.info(0u32, "cangjietest", "test_scroll_exception start")
        try {
            WebviewController(webTag: "test_invalid").scrollTo(1.0, 1.0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").scrollBy(1.0, 1.0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_scroll_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0135
     * @tc.name      : test_backOrForward_exception
     * @tc.desc      : Test WebviewController navigation exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_backOrForward_exception() {
        Hilog.info(0u32, "cangjietest", "test_backOrForward_exception start")
        try {
            WebviewController(webTag: "test_invalid").goForward()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").goBack()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").goBackOrForward(1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_backOrForward_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0136
     * @tc.name      : test_zoom_exception
     * @tc.desc      : Test WebviewController zoom methods exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoom_exception() {
        Hilog.info(0u32, "cangjietest", "test_zoom_exception start")
        try {
            WebviewController(webTag: "test_invalid").zoom(1.0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").zoomIn()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").zoomOut()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_zoom_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0137
     * @tc.name      : test_funs2_exception
     * @tc.desc      : Test WebviewController additional methods exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_funs2_exception() {
        Hilog.info(0u32, "cangjietest", "test_funs2_exception start")
        try {
            WebviewController(webTag: "test_invalid").clearHistory()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").accessStep(1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").storeWebArchive("test", true, resultCallback)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").enableSafeBrowsing(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").isSafeBrowsingEnabled()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").getSecurityLevel()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_funs2_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0138
     * @tc.name      : test_funs3_exception
     * @tc.desc      : Test WebviewController more methods exception handling
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_funs3_exception() {
        Hilog.info(0u32, "cangjietest", "test_funs3_exception start")
        try {
            WebviewController(webTag: "test_invalid").isIncognitoMode()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").removeCache(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        try {
            WebviewController(webTag: "test_invalid").getBackForwardEntries()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }

        try {
            WebviewController(webTag: "test_invalid").stop()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100001)
        }
        Hilog.info(0u32, "cangjietest", "test_funs3_exception end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0139
     * @tc.name      : test_setWebDebuggingAccess
     * @tc.desc      : Test WebviewController setWebDebuggingAccess static method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_setWebDebuggingAccess() {
        Hilog.info(0u32, "cangjietest", "test_setWebDebuggingAccess start")
        WebviewController.setWebDebuggingAccess(true)
        WebviewController.setWebDebuggingAccess(false)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_setWebDebuggingAccess end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0140
     * @tc.name      : test_refresh
     * @tc.desc      : Test WebviewController reload method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_refresh() {
        Hilog.info(0u32, "cangjietest", "test_refresh start")
        let webController = getWebViewController("")
        webController.reload()
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_refresh end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0141
     * @tc.name      : test_loadUrl
     * @tc.desc      : Test WebviewController loadUrl method with various URLs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrl() {
        Hilog.info(0u32, "cangjietest", "test_loadUrl start")
        let webController = getWebViewController("")
        webController.loadUrl("www.baidu.com")
        webController.loadUrl("www.baidu.com", headers: [WebHeader("headerKey", "headerValue")])
        let title = webController.getTitle()
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "${title}")
        Hilog.info(0u32, "cangjietest", "test_loadUrl end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0142
     * @tc.name      : test_postMessage
     * @tc.desc      : Test WebviewController postMessage functionality
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_postMessage() {
        Hilog.info(0u32, "cangjietest", "test_postMessage start")
        TestDriver.driver.waitForComponent(On().id("loadmessage"), 3000i32).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("refresh"), 3000i32).getOrThrow().click()
        TestDriver.driver.click(52, 1212)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "test_postMessage end")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkweb_webview_0143
     * @tc.name      : test_configCookie
     * @tc.desc      : Test WebCookieManager configuration
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel20, TestLevel0]
    func test_configCookie() {
        Hilog.info(0u32, "cangjietest", "test_configCookie start")
        TestDriver.driver.waitForComponent(On().id("testConfigCookie"), 3000i32).getOrThrow().click()    
        @Expect(true) 
        Hilog.info(0u32, "cangjietest", "test_configCookie end")
    }
    /*
    * @tc.number    : Sub_Cangjie_arkweb_webview_zoomAccess_0400
    * @tc.name      : test_zoom_17100004
    * @tc.desc      : Test zoom with zoomAccess(false) throws 17100004
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_zoom_17100004() {
        Hilog.info(0u32, "cangjietest", "test_zoom_17100004 start")
        let webController = getWebViewController("4")  
        try {
            webController.zoomIn()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100004)
        }
        try {
            webController.zoomOut()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100004)
        }
        try {
            webController.zoom(1.0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100004)
        }
        Hilog.info(0u32, "cangjietest", "test_zoom_17100004 end")
    }
    /*
    * @tc.number    : Sub_Cangjie_arkweb_webview_registerJavaScriptProxy_17100001
    * @tc.name      : test_registerJavaScriptProxy_17100001
    * @tc.desc      : Test registerJavaScriptProxy with mismatched funcs and methodList size throws 17100001
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_registerJavaScriptProxy_17100001() {
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy_17100015 start")
        TestDriver.driver.waitForComponent(On().id("test_17100001"), 3000i32).getOrThrow().click()
        sleepFor(1.second)
        @Expect(getResult(), "\"17100001\"")
        Hilog.info(0u32, "cangjietest", "test_registerJavaScriptProxy_17100001 end")
}
    /*
    * @tc.number    : Sub_Cangjie_arkweb_webview_loadUrl_17100002
    * @tc.name      : test_loadUrl_error_code
    * @tc.desc      : Test loadUrl error code 17100002
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_loadUrl_error_code() {
        Hilog.info(0u32, "cangjietest", "test_loadUrl_error_code start")
        let webController = getWebViewController("")
        try {
            webController.loadUrl("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17100002)
        }
        Hilog.info(0u32, "cangjietest", "test_loadUrl_error_code end")
    }    

}