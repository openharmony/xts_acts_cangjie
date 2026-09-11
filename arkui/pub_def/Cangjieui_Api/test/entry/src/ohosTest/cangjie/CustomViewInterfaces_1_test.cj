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
import ohos.base.*
import ohos.arkui.component.custom_view.*

class TestRemoteView <: RemoteView {
    var marker: String = "test"
    var appearCount: Int64 = 0
    var pageShowCount: Int64 = 0
    var pageHideCount: Int64 = 0
    var disappearCount: Int64 = 0
    var didBuildCount: Int64 = 0
    var transitionCount: Int64 = 0

    public func build(): Unit { }

    protected override func aboutToAppear(): Unit {
        appearCount = appearCount + 1
    }
    protected override func onPageShow(): Unit {
        pageShowCount = pageShowCount + 1
    }
    protected override func onPageHide(): Unit {
        pageHideCount = pageHideCount + 1
    }
    protected override func onBackPress(): Bool {
        return true
    }
    protected override func pageTransition(): Unit {
        transitionCount = transitionCount + 1
    }
    protected override func aboutToDisappear(): Unit {
        disappearCount = disappearCount + 1
    }
    protected override func onDidBuild(): Unit {
        didBuildCount = didBuildCount + 1
    }

    public func triggerAppear(): Unit { aboutToAppear() }
    public func triggerPageShow(): Unit { onPageShow() }
    public func triggerPageHide(): Unit { onPageHide() }
    public func triggerBackPress(): Bool { return onBackPress() }
    public func triggerTransition(): Unit { pageTransition() }
    public func triggerDisappear(): Unit { aboutToDisappear() }
    public func triggerDidBuild(): Unit { onDidBuild() }
}

@Test
class CustomViewInterfaces_1_test {
    /*
     * @tc.number    : TestRemoteView_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test RemoteView init, build, and all lifecycle methods via subclass, validate counters
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let view = TestRemoteView()
        @Expect(view.marker, "test")
        @Expect(view.appearCount, 0)
        @Expect(view.pageShowCount, 0)
        @Expect(view.pageHideCount, 0)
        @Expect(view.disappearCount, 0)
        @Expect(view.didBuildCount, 0)
        @Expect(view.transitionCount, 0)
        view.build()
        @Expect(view.marker, "test")
        view.triggerAppear()
        @Expect(view.appearCount, 1)
        view.triggerAppear()
        @Expect(view.appearCount, 2)
        view.triggerPageShow()
        @Expect(view.pageShowCount, 1)
        view.triggerPageHide()
        @Expect(view.pageHideCount, 1)
        view.triggerDisappear()
        @Expect(view.disappearCount, 1)
        view.triggerDidBuild()
        @Expect(view.didBuildCount, 1)
        view.triggerTransition()
        @Expect(view.transitionCount, 1)
        view.marker = "modified"
        @Expect(view.marker, "modified")
    }
    /*
     * @tc.number    : TestRemoteView_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test RemoteView onBackPress return value and repeated lifecycle calls
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let view = TestRemoteView()
        @Expect(view.marker, "test")
        let backResult = view.triggerBackPress()
        @Expect(backResult, true)
        view.triggerAppear()
        view.triggerAppear()
        view.triggerAppear()
        @Expect(view.appearCount, 3)
        view.triggerPageShow()
        view.triggerPageShow()
        @Expect(view.pageShowCount, 2)
        view.triggerPageHide()
        @Expect(view.pageHideCount, 1)
        view.triggerDisappear()
        view.triggerDisappear()
        @Expect(view.disappearCount, 2)
        view.triggerDidBuild()
        view.triggerDidBuild()
        view.triggerDidBuild()
        @Expect(view.didBuildCount, 3)
        view.triggerTransition()
        @Expect(view.transitionCount, 1)
        view.marker = "finalState"
        @Expect(view.marker, "finalState")
        @Expect(view.appearCount, 3)
        @Expect(view.pageShowCount, 2)
        @Expect(view.pageHideCount, 1)
        @Expect(view.disappearCount, 2)
        @Expect(view.didBuildCount, 3)
    }
}
