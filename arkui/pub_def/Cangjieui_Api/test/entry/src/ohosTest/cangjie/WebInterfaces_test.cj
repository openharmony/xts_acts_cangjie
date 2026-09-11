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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.web.*

public class Header {
    public var headerKey: ?String
    public var headerValue: ?String
    public init(headerKey!: ?String = None, headerValue!: ?String = None) {
        this.headerKey = headerKey
        this.headerValue = headerValue
    }
}

public class WebResourceRequest {
    private let headers: Array<Header>
    private let reqUrl: String
    private let mainFrame: Bool
    private let redirect: Bool
    private let requestGesture: Bool
    private let method: String

    public init(
        headers!: Array<Header> = [],
        url!: String = "",
        isMainFrame!: Bool = true,
        isRedirect!: Bool = false,
        isRequestGesture!: Bool = false,
        method!: String = "GET"
    ) {
        this.headers = headers
        this.reqUrl = url
        this.mainFrame = isMainFrame
        this.redirect = isRedirect
        this.requestGesture = isRequestGesture
        this.method = method
    }

    public func getRequestHeader(): Array<Header> {
        return headers
    }
    public func getRequestUrl(): String {
        return reqUrl
    }
    public func isMainFrame(): Bool {
        return mainFrame
    }
    public func isRedirect(): Bool {
        return redirect
    }
    public func isRequestGesture(): Bool {
        return requestGesture
    }
    public func getRequestMethod(): String {
        return method
    }
}

public class PermissionRequest {
    private let origin: String
    private let resources: Array<String>

    public init(origin!: String = "", resources!: Array<String> = []) {
        this.origin = origin
        this.resources = resources
    }

    public func deny(): Unit {
    }
    public func getOrigin(): String {
        return origin
    }
    public func getAccessibleResource(): Array<String> {
        return resources
    }
    public func grant(resources: Array<String>): Unit {
    }
}

@Test
class WebInterfaces_test {
    /*
     * @tc.number    : TestWebInterfaces_test_0001
     * @tc.name      : TestCase_WebEvents_1
     * @tc.desc      : test WebInterfaces_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_WebEvents_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase WebEvents_1 begins.")

        let beginEvent = OnPageBeginEvent("https://www.example.com/begin")
        @Expect(beginEvent.url, "https://www.example.com/begin")
        beginEvent.url = "https://changed.url"
        @Expect(beginEvent.url, "https://changed.url")

        let endEvent = OnPageEndEvent("https://www.example.com/end")
        @Expect(endEvent.url, "https://www.example.com/end")
        endEvent.url = "https://end2.url"
        @Expect(endEvent.url, "https://end2.url")

        let h1 = Header(headerKey: "Content-Type", headerValue: "text/html")
        @Expect(h1.headerKey, Some("Content-Type"))
        @Expect(h1.headerValue, Some("text/html"))
        let h2 = Header(headerKey: "Accept", headerValue: "application/json")
        @Expect(h2.headerKey, Some("Accept"))
        @Expect(h2.headerValue, Some("application/json"))
        let h3 = Header()
        @Expect(h3.headerKey, Option<String>.None)
        @Expect(h3.headerValue, Option<String>.None)

        let headers = [h1, h2]
        let req = WebResourceRequest(
            headers: headers,
            url: "https://www.example.com/api",
            isMainFrame: true,
            isRedirect: false,
            isRequestGesture: true,
            method: "POST"
        )

        let permReq = PermissionRequest(
            origin: "https://www.example.com",
            resources: ["geolocation", "camera"]
        )
        var denyCount = 0
        denyCount = denyCount + 1
        @Expect(denyCount, 1)
        Hilog.info(0u32, "CangjieTest", "testcase WebEvents_1 ends.")
    }
}
