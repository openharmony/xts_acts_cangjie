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

package ohos_app_cangjie_entry.Web_Uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.web.webview.*
import kit.PerformanceAnalysisKit.Hilog

class JsProxyEmpty {
    public func emptyMethod(): String {
        return ""
    }
}

@Component
public class View_Web_uevent_04 {
    @State
    var loadInterceptResult: String = "None"
    @State
    var pageBeginResult: String = "None"
    @State
    var pageEndResult: String = "None"

    func build() {
        Column(){
        Text("onLoadIntercept: ${this.loadInterceptResult}").id("onLoadIntercept_check")
        Text("onPageBegin: ${this.pageBeginResult}").id("onPageBegin_check")
        Text("onPageEnd: ${this.pageEndResult}").id("onPageEnd_check")
        Row(space: 5i64.vp,
            child: {
                => Column(space: 5i64.vp,
                    child: {
                        => Web(src: "www.example.com", controller: WebviewController())
                            .javaScriptProxy(funcList:[],name: "testProxy", methodList:["testMethod"],
                        controller: WebviewController())
                            .nestedScroll(scrollForward: NestedScrollMode.SelfOnly, scrollBackward:NestedScrollMode.SelfOnly )
                        .onLoadIntercept(
                        {
                            req =>
                            req.data.getRequestHeader()
                            req.data.getRequestUrl()
                            req.data.isMainFrame()
                            req.data.isRedirect()
                            req.data.isRequestGesture()
                            req.data.getRequestMethod()
                            Hilog.info(1,"1","this.doInter: false")
                            return false
                        })
                            .onPageBegin({ e =>
                                this.pageBeginResult = "begun"
                                Hilog.info(0, "AppLogCj", "Web onPageBegin")
                            })
                            .onPageEnd({ e =>
                                this.pageEndResult = "ended"
                                Hilog.info(0, "AppLogCj", "Web onPageEnd")
                            })
                            .id("Web_uevent_id")
                    })
            }).width(100i64.percent)
        }

    }
}
