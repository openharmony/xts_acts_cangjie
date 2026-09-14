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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.*
import ohos.business_exception.BusinessException

@Test
class TestWantFullParams {
    /*
     * @tc.number    : Sub_Cangjie_ability_Want_0200
     * @tc.name      : Test_want_fullParams
     * @tc.desc      : Verifies Want construction with every named parameter and WantValueType variant.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_want_fullParams(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_want_fullParams begins.")
        let map = HashMap<String, WantValueType>()
        map.add("int", WantValueType.Int64Value(114514i64))
        map.add("float", WantValueType.Float64Value(3.14f64))
        map.add("str", WantValueType.StringValue("abc"))
        map.add("bool", WantValueType.BoolValue(true))
        let arr: Array<WantValueType> = [WantValueType.Int64Value(1i64), WantValueType.StringValue("x")]
        map.add("arr", WantValueType.ArrayValue(arr))
        let sub = HashMap<String, WantValueType>()
        sub.add("k", WantValueType.StringValue("v"))
        map.add("map", WantValueType.HashMapValue(sub))
        let fds = HashMap<String, Int32>()
        fds.add("f1", 1i32)
        let want = Want(
            deviceId: "dev0",
            bundleName: "com.ohos.example",
            abilityName: "EntryAbility",
            moduleName: "entry",
            flags: 1u32,
            uri: "file:///tmp/1.txt",
            action: "ohos.want.action.viewData",
            entities: ["entity.system.home"],
            dataType: "text/plain",
            parameters: map
        )
        @Expect(want.deviceId, "dev0")
        @Expect(want.bundleName, "com.ohos.example")
        @Expect(want.abilityName, "EntryAbility")
        @Expect(want.moduleName, "entry")
        @Expect(want.flags, 1u32)
        @Expect(want.uri, "file:///tmp/1.txt")
        @Expect(want.action, "ohos.want.action.viewData")
        @Expect(want.entities.size, 1)
        @Expect(want.dataType, "text/plain")
        @Expect(want.parameters.size, 6)
        @Expect(want.parameters.contains("int"), true)
        match (want.parameters.get("int").getOrThrow()) {
            case Int64Value(v) => @Expect(v, 114514i64)
            case _ => @Expect(false)
        }
        match (want.parameters.get("float").getOrThrow()) {
            case Float64Value(v) => @Expect(v, 3.14f64)
            case _ => @Expect(false)
        }
        match (want.parameters.get("str").getOrThrow()) {
            case StringValue(v) => @Expect(v, "abc")
            case _ => @Expect(false)
        }
        match (want.parameters.get("bool").getOrThrow()) {
            case BoolValue(v) => @Expect(v, true)
            case _ => @Expect(false)
        }
        match (want.parameters.get("arr").getOrThrow()) {
            case ArrayValue(v) => @Expect(v.size, 2)
            case _ => @Expect(false)
        }
        match (want.parameters.get("map").getOrThrow()) {
            case HashMapValue(v) => @Expect(v.size, 1)
            case _ => @Expect(false)
        }
        let want0 = Want()
        @Expect(want0.deviceId, "")
        @Expect(want0.bundleName, "")
        @Expect(want0.abilityName, "")
        @Expect(want0.moduleName, "")
        @Expect(want0.flags, 0u32)
        @Expect(want0.entities.size, 0)
        Hilog.info(0u32, "cangjietest", "testcase Test_want_fullParams ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_StartOptions_0100
     * @tc.name      : Test_startOptions_full
     * @tc.desc      : Verifies StartOptions named parameters and documented display identifiers.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_startOptions_full(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_startOptions_full begins.")
        let options = StartOptions(windowMode: WindowMode.WindowModeFullscreen, displayId: 0i32)
        match (options.windowMode) {
            case Some(WindowMode.WindowModeFullscreen) => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(options.displayId, 0i32)
        let optionsSplitPrimary = StartOptions(windowMode: WindowMode.WindowModeSplitPrimary)
        match (optionsSplitPrimary.windowMode) {
            case Some(WindowMode.WindowModeSplitPrimary) => @Expect(true)
            case _ => @Expect(false)
        }
        let optionsSplitSecondary = StartOptions(windowMode: WindowMode.WindowModeSplitSecondary)
        match (optionsSplitSecondary.windowMode) {
            case Some(WindowMode.WindowModeSplitSecondary) => @Expect(true)
            case _ => @Expect(false)
        }
        let options2 = StartOptions()
        @Expect(options2.windowMode.isNone(), true)
        @Expect(options2.displayId, 0i32)
        let currentDisplayOptions = StartOptions(displayId: -1i32)
        @Expect(currentDisplayOptions.displayId, -1i32)
        Hilog.info(0u32, "cangjietest", "testcase Test_startOptions_full ends.")
    }
}
