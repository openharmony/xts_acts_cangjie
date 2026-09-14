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
import ohos.arkui.component.navigation.*

@Test
class NavInterfaces_1_test {
    /*
     * @tc.number    : TestLaunchMode_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test LaunchMode Standard and MoveToTopSingleTon, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let standard = LaunchMode.Standard
        let moveToTop = LaunchMode.MoveToTopSingleTon
        @Expect(standard == LaunchMode.Standard, true)
        @Expect(standard != LaunchMode.Standard, false)
        @Expect(moveToTop == LaunchMode.MoveToTopSingleTon, true)
        @Expect(moveToTop != LaunchMode.MoveToTopSingleTon, false)
        @Expect(standard != moveToTop, true)
        @Expect(standard == moveToTop, false)
    }
    /*
     * @tc.number    : TestLaunchMode_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test LaunchMode PopToSingleTon and NewInstance, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let popToSingle = LaunchMode.PopToSingleTon
        let newInstance = LaunchMode.NewInstance
        @Expect(popToSingle == LaunchMode.PopToSingleTon, true)
        @Expect(popToSingle != LaunchMode.PopToSingleTon, false)
        @Expect(newInstance == LaunchMode.NewInstance, true)
        @Expect(newInstance != LaunchMode.NewInstance, false)
        @Expect(popToSingle != newInstance, true)
        @Expect(newInstance != LaunchMode.Standard, true)
    }
    /*
     * @tc.number    : TestBarStyle_0100
     * @tc.name      : TestCase_3
     * @tc.desc      : test BarStyle Standard and Stack, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let standard = BarStyle.Standard
        let stack = BarStyle.Stack
        @Expect(standard == BarStyle.Standard, true)
        @Expect(standard != BarStyle.Standard, false)
        @Expect(stack == BarStyle.Stack, true)
        @Expect(stack != BarStyle.Stack, false)
        @Expect(standard != stack, true)
        @Expect(stack != standard, true)
    }
    /*
     * @tc.number    : TestNavigationOptions_0100
     * @tc.name      : TestCase_4
     * @tc.desc      : test NavigationOptions default init, validate launchMode and animated are None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let opts = NavigationOptions()
        @Expect(opts.launchMode.isNone(), false)
        @Expect(opts.animated.isNone(), false)
    }
    /*
     * @tc.number    : TestNavigationOptions_0200
     * @tc.name      : TestCase_5
     * @tc.desc      : test NavigationOptions init with launchMode and animated, validate both fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let opts = NavigationOptions(launchMode: LaunchMode.MoveToTopSingleTon, animated: false)
        @Expect(opts.launchMode.isSome(), true)
        @Expect(opts.launchMode.getOrThrow() == LaunchMode.MoveToTopSingleTon, true)
        @Expect(opts.animated.isSome(), true)
        @Expect(opts.animated.getOrThrow(), false)
        opts.launchMode = LaunchMode.NewInstance
        opts.animated = true
        @Expect(opts.launchMode.getOrThrow() == LaunchMode.NewInstance, true)
        @Expect(opts.animated.getOrThrow(), true)
    }
    /*
     * @tc.number    : TestNavPathInfo_0100
     * @tc.name      : TestCase_6
     * @tc.desc      : test NavPathInfo init with name and param, validate name, param, onPop
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let info = NavPathInfo(name: "page1", param: "param1")
        @Expect(info.name.isSome(), true)
        @Expect(info.name.getOrThrow(), "page1")
        @Expect(info.param.isSome(), true)
        @Expect(info.param.getOrThrow(), "param1")
        @Expect(info.onPop.isNone(), true)
    }
    /*
     * @tc.number    : TestNavPathInfo_0200
     * @tc.name      : TestCase_7
     * @tc.desc      : test NavPathInfo init with onPop callback, validate name, param, onPop and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let onPopCb: Callback<PopInfo, Unit> = { popInfo: PopInfo =>
            let i = popInfo.info
            let r = popInfo.result
        }
        let info = NavPathInfo(name: "page2", param: "param2", onPop: onPopCb)
        @Expect(info.name.getOrThrow(), "page2")
        @Expect(info.param.getOrThrow(), "param2")
        @Expect(info.onPop.isSome(), true)
        info.name = "modifiedPage"
        @Expect(info.name.getOrThrow(), "modifiedPage")
        info.param = Option<String>.None
        @Expect(info.param.isNone(), true)
        info.onPop = Option<Callback<PopInfo, Unit>>.None
        @Expect(info.onPop.isNone(), true)
    }
    /*
     * @tc.number    : TestNavPathStack_0100
     * @tc.name      : TestCase_8
     * @tc.desc      : test NavPathStack init and pushPath, pop, validate pop returns correct NavPathInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let stack = NavPathStack()
        let poppedEmpty = stack.pop()
        @Expect(poppedEmpty.isNone(), true)
        let info = NavPathInfo(name: "pushedPage", param: "pushedParam")
        stack.pushPath(info)
        let popped = stack.pop()
        @Expect(popped.isSome(), true)
        @Expect(popped.getOrThrow().name.getOrThrow(), "pushedPage")
        @Expect(popped.getOrThrow().param.getOrThrow(), "pushedParam")
        let poppedAgain = stack.pop()
        @Expect(poppedAgain.isNone(), true)
    }
    /*
     * @tc.number    : TestNavPathStack_0200
     * @tc.name      : TestCase_9
     * @tc.desc      : test NavPathStack pushPathByName and pop with animated flag, validate returned info
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let stack = NavPathStack()
        stack.pushPathByName("byNamePage", "byNameParam", animated: false)
        let popped = stack.pop(animated: true)
        @Expect(popped.isSome(), true)
        @Expect(popped.getOrThrow().name.getOrThrow(), "byNamePage")
        @Expect(popped.getOrThrow().param.getOrThrow(), "byNameParam")
        let opts = NavigationOptions(launchMode: LaunchMode.Standard, animated: true)
        let info = NavPathInfo(name: "optsPage", param: "optsParam")
        stack.pushPath(info, options: opts)
        let popped2 = stack.pop()
        @Expect(popped2.isSome(), true)
        @Expect(popped2.getOrThrow().name.getOrThrow(), "optsPage")
    }
    /*
     * @tc.number    : TestPopInfo_0100
     * @tc.name      : TestCase_10
     * @tc.desc      : test PopInfo via NavPathInfo.onPop callback, validate info and result fields accessible
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let onPopCb: Callback<PopInfo, Unit> = { popInfo: PopInfo =>
            let infoField: NavPathInfo = popInfo.info
            let resultField: String = popInfo.result
        }
        let info = NavPathInfo(name: "popInfoPage", param: "popInfoParam", onPop: onPopCb)
        @Expect(info.onPop.isSome(), true)
        @Expect(info.name.getOrThrow(), "popInfoPage")
        @Expect(info.param.getOrThrow(), "popInfoParam")
    }
    /*
     * @tc.number    : TestNavDestinationContext_0100
     * @tc.name      : TestCase_11
     * @tc.desc      : test NavDestinationContext via onReady callback, validate pathInfo, pathStack, navDestinationId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let pathInfo = NavPathInfo(name: "ctxPage", param: "ctxParam")
        let pathStack = NavPathStack()
        let navDestId = "NavDest_001"
        @Expect(pathInfo.name.getOrThrow(), "ctxPage")
        @Expect(pathInfo.param.getOrThrow(), "ctxParam")
        @Expect(pathStack.pop().isNone(), true)
        @Expect(navDestId, "NavDest_001")
        let onReadyCb: Callback<NavDestinationContext, Unit> = { ctx: NavDestinationContext =>
            let pInfo: NavPathInfo = ctx.pathInfo
            let pStack: NavPathStack = ctx.pathStack
            let pId: String = ctx.navDestinationId
        }
    }
}
