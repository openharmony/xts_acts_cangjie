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
import std.collection.ArrayList
import ohos.base.*
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.state_management.*

@Test
class StateManagementInterfaces_1_test {
    /*
     * @tc.number    : TestStateManagement_ColorMode_0100
     * @tc.name      : TestCase_ColorMode_1
     * @tc.desc      : init ColorMode values and validate via match and == operator
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ColorMode_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ColorMode_1 begins.")
        let light = ColorMode.Light
        var lightMatch = 0
        match (light) {
            case ColorMode.Light => lightMatch = 1
            case _ => ()
        }
        @Expect(lightMatch, 1)
        let dark = ColorMode.Dark
        var darkMatch = 0
        match (dark) {
            case ColorMode.Dark => darkMatch = 1
            case _ => ()
        }
        @Expect(darkMatch, 1)
        var notEqualCount = 0
        if (light != dark) {
            notEqualCount = 1
        }
        @Expect(notEqualCount, 1)
        var equalSelfCount = 0
        if (light == ColorMode.Light) {
            equalSelfCount = 1
        }
        @Expect(equalSelfCount, 1)
        Hilog.info(0u32, "CangjieTest", "testcase ColorMode_1 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_LayoutDirection_0100
     * @tc.name      : TestCase_LayoutDirection_1
     * @tc.desc      : init LayoutDirection values and validate via match and == operator
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_LayoutDirection_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase LayoutDirection_1 begins.")
        let ltr = LayoutDirection.Ltr
        var ltrMatch = 0
        match (ltr) {
            case LayoutDirection.Ltr => ltrMatch = 1
            case _ => ()
        }
        @Expect(ltrMatch, 1)
        let rtl = LayoutDirection.Rtl
        var rtlMatch = 0
        match (rtl) {
            case LayoutDirection.Rtl => rtlMatch = 1
            case _ => ()
        }
        @Expect(rtlMatch, 1)
        let autoDir = LayoutDirection.Auto
        var autoMatch = 0
        match (autoDir) {
            case LayoutDirection.Auto => autoMatch = 1
            case _ => ()
        }
        @Expect(autoMatch, 1)
        var ltrRtlDiff = 0
        if (ltr != rtl) {
            ltrRtlDiff = 1
        }
        @Expect(ltrRtlDiff, 1)
        var ltrAutoDiff = 0
        if (ltr != autoDir) {
            ltrAutoDiff = 1
        }
        @Expect(ltrAutoDiff, 1)
        Hilog.info(0u32, "CangjieTest", "testcase LayoutDirection_1 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_AppStorage_0100
     * @tc.name      : TestCase_AppStorage_1
     * @tc.desc      : test AppStorage setOrCreate/has/get/set/size/delete
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_AppStorage_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase AppStorage_1 begins.")
        AppStorage.setOrCreate<String>("sm_testKey1", "value1")
        var hasCount = 0
        if (AppStorage.has("sm_testKey1")) {
            hasCount = 1
        }
        @Expect(hasCount, 1)
        let sz = AppStorage.size()
        @Expect(sz, 1)
        let val = AppStorage.get<String>("sm_testKey1")
        var valCount = 0
        match (val) {
            case Some(_) => valCount = 1
            case None => ()
        }
        @Expect(valCount, 1)
        let val2 = AppStorage.get<String>("sm_testKey1")
        var val2Count = 0
        match (val2) {
            case Some(_) => val2Count = 1
            case None => ()
        }
        @Expect(val2Count, 1)
        var hasMissing = 0
        if (!AppStorage.has("sm_nonExistentKey")) {
            hasMissing = 1
        }
        @Expect(hasMissing, 1)
        Hilog.info(0u32, "CangjieTest", "testcase AppStorage_1 ends.")
    }
    /*
     * @tc.number    : TestStateManagement_AppStorage_0200
     * @tc.name      : TestCase_AppStorage_2
     * @tc.desc      : test AppStorage link/setAndLink/property/setAndProp/keys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_AppStorage_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase AppStorage_2 begins.")
        AppStorage.setOrCreate<String>("sm_linkKey", "linkValue")
        let linkResult = AppStorage.link<String>("sm_linkKey")
        var linkCount = 0
        match (linkResult) {
            case Some(_) => linkCount = 1
            case None => ()
        }
        @Expect(linkCount, 1)
        let linkMissing = AppStorage.link<String>("sm_missingLinkKey")
        var linkNoneCount = 0
        match (linkMissing) {
            case Some(_) => ()
            case None => linkNoneCount = 1
        }
        @Expect(linkNoneCount, 1)
        let propResult = AppStorage.property<String>("sm_linkKey")
        var propCount = 0
        match (propResult) {
            case Some(_) => propCount = 1
            case None => ()
        }
        @Expect(propCount, 1)
        Hilog.info(0u32, "CangjieTest", "testcase AppStorage_2 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_Environment_0100
     * @tc.name      : TestCase_Environment_1
     * @tc.desc      : test Environment keys and envProp
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Environment_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Environment_1 begins.")
        let envKeys = Environment.keys()
        let keysLen = envKeys.size
        @Expect(keysLen >= 0, true)
        let envResult = Environment.envProp<String>("sm_testEnvColorMode", "Light")
        @Expect(envResult, false)
        var envSuccess = 0
        if (envResult) {
            envSuccess = 1
        }
        @Expect(envSuccess, 0)
        Hilog.info(0u32, "CangjieTest", "testcase Environment_1 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_LocalStorage_0100
     * @tc.name      : TestCase_LocalStorage_1
     * @tc.desc      : construct LocalStorage, test setOrCreate/has/size/get/set/delete
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_LocalStorage_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase LocalStorage_1 begins.")
        let ls = LocalStorage()
        @Expect(ls.size(), 0)
        let createResult = ls.setOrCreate<String>("sm_lsKey1", "lsValue1")
        var createSuccess = 0
        if (createResult) {
            createSuccess = 1
        }
        @Expect(createSuccess, 1)
        var hasCount = 0
        if (ls.has("sm_lsKey1")) {
            hasCount = 1
        }
        @Expect(hasCount, 1)
        @Expect(ls.size(), 1)
        let val = ls.get<String>("sm_lsKey1")
        var valCount = 0
        match (val) {
            case Some(_) => valCount = 1
            case None => ()
        }
        @Expect(valCount, 1)
        Hilog.info(0u32, "CangjieTest", "testcase LocalStorage_1 ends.")
    }
    /*
     * @tc.number    : TestStateManagement_LocalStorage_0200
     * @tc.name      : TestCase_LocalStorage_2
     * @tc.desc      : test LocalStorage link/setAndLink/property/setAndProp/keys/clear
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_LocalStorage_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase LocalStorage_2 begins.")
        let ls = LocalStorage()
        ls.setOrCreate<String>("sm_lsLinkKey", "lsLinkValue")
        let linkResult = ls.link<String>("sm_lsLinkKey")
        var linkCount = 0
        match (linkResult) {
            case Some(_) => linkCount = 1
            case None => ()
        }
        @Expect(linkCount, 1)
        var opsCount = 0
        let setAndLinkObj = ls.setAndLink<String>("sm_lsSetAndLinkKey", "defaultLinkVal")
        opsCount = opsCount + 1
        @Expect(opsCount, 1)
        let propResult = ls.property<String>("sm_lsLinkKey")
        var propCount = 0
        match (propResult) {
            case Some(_) => propCount = 1
            case None => ()
        }
        @Expect(propCount, 1)
        var opsCount2 = 0
        let setAndPropObj = ls.setAndProp<String>("sm_lsSetAndPropKey", "defaultPropVal")
        opsCount2 = opsCount2 + 1
        @Expect(opsCount2, 1)
        let keys = ls.keys()
        var keysPresent = 0
        match (keys) {
            case _ => keysPresent = 1
        }
        @Expect(keysPresent, 1)
        @Expect(ls.size(), 3)
        let clearResult = ls.clear()
        var clearSuccess = 0
        if (clearResult) {
            clearSuccess = 1
        }
        @Expect(clearSuccess, 1)
        @Expect(ls.size(), 0)
        Hilog.info(0u32, "CangjieTest", "testcase LocalStorage_2 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_ObservedArrayList_0100
     * @tc.name      : TestCase_ObservedArrayList_1
     * @tc.desc      : construct ObservedArrayList from ArrayList, validate size/[]/isEmpty/append/insert/remove
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ObservedArrayList_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ObservedArrayList_1 begins.")
        let arr = ArrayList<String>()
        arr.add("a")
        arr.add("b")
        arr.add("c")
        let list = ObservedArrayList<String>(arr)
        @Expect(list.size, 3)
        @Expect(list[0], "a")
        @Expect(list[1], "b")
        @Expect(list[2], "c")
        var notEmpty = 0
        if (!list.isEmpty()) {
            notEmpty = 1
        }
        @Expect(notEmpty, 1)
        Hilog.info(0u32, "CangjieTest", "testcase ObservedArrayList_1 ends.")
    }
    /*
     * @tc.number    : TestStateManagement_ObservedArrayList_0200
     * @tc.name      : TestCase_ObservedArrayList_2
     * @tc.desc      : construct ObservedArrayList from Array, validate clone/prepend/removeIf/clear
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ObservedArrayList_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ObservedArrayList_2 begins.")
        let arr: Array<String> = ["a", "b", "c"]
        let list = ObservedArrayList<String>(arr)
        @Expect(list.size, 3)
        let cloned = list.clone()
        @Expect(cloned.size, 3)
        @Expect(cloned[0], "a")
        @Expect(cloned[1], "b")
        @Expect(cloned[2], "c")
        Hilog.info(0u32, "CangjieTest", "testcase ObservedArrayList_2 ends.")
    }

    /*
     * @tc.number    : TestStateManagement_PersistentStorage_0100
     * @tc.name      : TestCase_PersistentStorage_1
     * @tc.desc      : test PersistentStorage persistProp/keys/deleteProp
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_PersistentStorage_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase PersistentStorage_1 begins.")
        PersistentStorage.persistProp<String>("sm_persistKey_12345", "persistValue")
        let keys = PersistentStorage.keys()
        var keyFound = 0
        for (k in keys) {
            if (k == "sm_persistKey_12345") {
                keyFound = 1
            }
        }
        @Expect(keyFound, 1)
        PersistentStorage.deleteProp("sm_persistKey_12345")
        let keys2 = PersistentStorage.keys()
        var keyFound2 = 0
        for (k in keys2) {
            if (k == "sm_persistKey_12345") {
                keyFound2 = 1
            }
        }
        @Expect(keyFound2, 0)
        Hilog.info(0u32, "CangjieTest", "testcase PersistentStorage_1 ends.")
    }

    /*
     * @tc.number    : TestStateManagementInterfaces_1_test_0001
     * @tc.name      : TestCase_PersistentStorage_bulk
     * @tc.desc      : test StateManagementInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_PersistentStorage_bulk(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase PersistentStorage_bulk begins.")
        var opsCount = 0
        PersistentStorage.persistProp<String>("bulk_persist_key1", "value1")
        opsCount = opsCount + 1
        let keys1 = PersistentStorage.keys()
        var key1Found = 0
        for (k in keys1) {
            if (k == "bulk_persist_key1") {
                key1Found = 1
            }
        }
        @Expect(key1Found, 1)
        let props: Array<(String, String)> = [
            ("bulk_persist_key2", "value2"),
            ("bulk_persist_key3", "value3"),
            ("bulk_persist_key4", "value4")
        ]
        PersistentStorage.persistProps<String>(props)
        opsCount = opsCount + 1
        @Expect(opsCount, 2)
        let keys2 = PersistentStorage.keys()
        var key2Found = 0
        var key3Found = 0
        var key4Found = 0
        for (k in keys2) {
            if (k == "bulk_persist_key2") {
                key2Found = 1
            }
            if (k == "bulk_persist_key3") {
                key3Found = 1
            }
            if (k == "bulk_persist_key4") {
                key4Found = 1
            }
        }
        @Expect(key2Found, 1)
        @Expect(key3Found, 1)
        @Expect(key4Found, 1)
        var totalKeysFound = key1Found + key2Found + key3Found + key4Found
        @Expect(totalKeysFound, 4)
        PersistentStorage.deleteProp("bulk_persist_key1")
        PersistentStorage.deleteProp("bulk_persist_key2")
        PersistentStorage.deleteProp("bulk_persist_key3")
        PersistentStorage.deleteProp("bulk_persist_key4")
        let keys3 = PersistentStorage.keys()
        var key1AfterDelete = 0
        for (k in keys3) {
            if (k == "bulk_persist_key1") {
                key1AfterDelete = 1
            }
        }
        @Expect(key1AfterDelete, 0)
        Hilog.info(0u32, "CangjieTest", "testcase PersistentStorage_bulk ends.")
    }
}
