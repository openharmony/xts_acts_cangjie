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

import kit.ArkData.*
import std.collection.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import ohos.business_exception.BusinessException
import ohos.hilog.Hilog
import ohos.callback_invoke.Callback1Argument

class Callback <: Callback1Argument<String> {
    public func invoke(err: ?BusinessException, arg: String) {
        Hilog.info(0, "test", "=========callback========= ${arg.toString()}======================")
    }
}
@Test
class Test_preferences_enum {
    private let TAG: String = "cangjietest"
    private let DOMAIN: UInt32 = 0u32

    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0100
    * @tc.name      : test_PreferencesEvent_change
    * @tc.desc      : test PreferencesEvent.PreferencesChange enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesEvent_change() {
        var event: PreferencesEvent = PreferencesEvent.PreferencesChange
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        var c = Callback()
        a.on(event, c)
        a.put("test_key", PreferencesValueType.Integer(100))
        a.flush()
        sleep(Duration.millisecond * 500)
        a.off(event, callback: c)
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(event is PreferencesEvent)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0200
    * @tc.name      : test_PreferencesEvent_multiProcessChange
    * @tc.desc      : test PreferencesEvent.PreferencesMultiProcessChange enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesEvent_multiProcessChange() {
        var event: PreferencesEvent = PreferencesEvent.PreferencesMultiProcessChange
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)
        var callbackCalled = AtomicBool(false)
        var c = Callback()
        a.on(event, c)
        a.put("test_key_multi", PreferencesValueType.StringData("test_value"))
        a.flush()
        sleep(Duration.millisecond * 500)
        a.off(event, callback:c)
        Preferences.deletePreferences(getAbilityContext(), str)
        @Expect(event is PreferencesEvent)
        @Expect(!callbackCalled.load())

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0300
    * @tc.name      : test_StorageType_Xml
    * @tc.desc      : test StorageType.Xml enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_StorageType_Xml() {
        var storageType: StorageType = StorageType.Xml
        var str = "xmlStore"
        var options = PreferencesOptions(str, storageType: storageType)

        var a = Preferences.getPreferences(getAbilityContext(), options)
        a.put("xml_key", PreferencesValueType.Integer(12345))
        a.flush()

        match (a.get("xml_key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                @Expect(n, 12345)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0400
    * @tc.name      : test_StorageType_Gskv
    * @tc.desc      : test StorageType.Gskv enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_StorageType_Gskv() {
        var storageType: StorageType = StorageType.Gskv
        var str = "gskvStore"
        var options = PreferencesOptions(str, storageType: storageType)

        var a = Preferences.getPreferences(getAbilityContext(), options)
        a.put("gskv_key", PreferencesValueType.StringData("gskv_value"))
        a.flush()

        match (a.get("gskv_key", PreferencesValueType.StringData(""))) {
            case PreferencesValueType.StringData(s) =>
                @Expect(s, "gskv_value")
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0500
    * @tc.name      : test_PreferencesValueType_Integer
    * @tc.desc      : test PreferencesValueType.Integer enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_Integer() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var value: PreferencesValueType = PreferencesValueType.Integer(9876543210)
        a.put("int_key", value)

        match (a.get("int_key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                @Expect(n, 9876543210)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0600
    * @tc.name      : test_PreferencesValueType_Double
    * @tc.desc      : test PreferencesValueType.Double enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_Double() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var value: PreferencesValueType = PreferencesValueType.Double(3.141592653589793)
        a.put("double_key", value)

        match (a.get("double_key", PreferencesValueType.Double(0.0))) {
            case PreferencesValueType.Double(d) =>
                @Expect(d, 3.141592653589793)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0700
    * @tc.name      : test_PreferencesValueType_StringData
    * @tc.desc      : test PreferencesValueType.StringData enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_StringData() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var value: PreferencesValueType = PreferencesValueType.StringData("测试字符串数据")
        a.put("string_key", value)

        match (a.get("string_key", PreferencesValueType.StringData(""))) {
            case PreferencesValueType.StringData(s) =>
                @Expect(s, "测试字符串数据")
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0800
    * @tc.name      : test_PreferencesValueType_BoolData
    * @tc.desc      : test PreferencesValueType.BoolData enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_BoolData() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var value: PreferencesValueType = PreferencesValueType.BoolData(true)
        a.put("bool_key", value)

        match (a.get("bool_key", PreferencesValueType.BoolData(false))) {
            case PreferencesValueType.BoolData(b) =>
                @Expect(b, true)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_0900
    * @tc.name      : test_PreferencesValueType_BoolArray
    * @tc.desc      : test PreferencesValueType.BoolArray enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_BoolArray() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var boolArray: Array<Bool> = [true, false, true, false, true]
        var value: PreferencesValueType = PreferencesValueType.BoolArray(boolArray)
        a.put("boolarray_key", value)

        match (a.get("boolarray_key", PreferencesValueType.BoolArray([]))) {
            case PreferencesValueType.BoolArray(arr) =>
                @Expect(arr, [true, false, true, false, true])
            case _ => @Expect(false)
        }

        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1000
    * @tc.name      : test_PreferencesValueType_DoubleArray
    * @tc.desc      : test PreferencesValueType.DoubleArray enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_DoubleArray() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var doubleArray: Array<Float64> = [1.1, 2.2, 3.3, 4.4, 5.5]
        var value: PreferencesValueType = PreferencesValueType.DoubleArray(doubleArray)
        a.put("doublearray_key", value)

        match (a.get("doublearray_key", PreferencesValueType.DoubleArray([]))) {
            case PreferencesValueType.DoubleArray(arr) =>
                @Expect(arr, [1.1, 2.2, 3.3, 4.4, 5.5])
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1100
    * @tc.name      : test_PreferencesValueType_StringArray
    * @tc.desc      : test PreferencesValueType.StringArray enum value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesValueType_StringArray() {
        var str = "myStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var stringArray: Array<String> = ["Hello", "World", "仓颉", "编程"]
        var value: PreferencesValueType = PreferencesValueType.StringArray(stringArray)
        a.put("stringarray_key", value)

        match (a.get("stringarray_key", PreferencesValueType.StringArray([]))) {
            case PreferencesValueType.StringArray(arr) =>
                @Expect(arr, ["Hello", "World", "仓颉", "编程"])
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)

    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1200
    * @tc.name      : test_PreferencesOptions_storageType_default
    * @tc.desc      : test PreferencesOptions.storageType default value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesOptions_storageType_default() {
        var str = "defaultStore"
        var options = PreferencesOptions(str)

        match (options.storageType) {
            case StorageType.Xml =>
                Hilog.info(DOMAIN, TAG, "Default storageType is Xml")
                @Expect(true)
            case StorageType.Gskv =>
                @Expect(false)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1300
    * @tc.name      : test_PreferencesOptions_storageType_xml
    * @tc.desc      : test PreferencesOptions.storageType with Xml value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesOptions_storageType_xml() {
        var str = "xmlOptionsStore"
        var options = PreferencesOptions(str, storageType: StorageType.Xml)

        match (options.storageType) {
            case StorageType.Xml => @Expect(true)
            case _ => @Expect(false)
        }

        var a = Preferences.getPreferences(getAbilityContext(), options)
        a.put("xml_options_key", PreferencesValueType.Integer(999))
        a.flush()

        match (a.get("xml_options_key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                @Expect(n, 999)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1400
    * @tc.name      : test_PreferencesOptions_storageType_gskv
    * @tc.desc      : test PreferencesOptions.storageType with Gskv value
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PreferencesOptions_storageType_gskv() {
        var str = "gskvOptionsStore"
        var options = PreferencesOptions(str, storageType: StorageType.Gskv)

        match (options.storageType) {
            case StorageType.Gskv => @Expect(true)
            case _ => @Expect(false)
        }

        var a = Preferences.getPreferences(getAbilityContext(), options)
        a.put("gskv_options_key", PreferencesValueType.StringData("gskv_test"))
        a.flush()

        match (a.get("gskv_options_key", PreferencesValueType.StringData(""))) {
            case PreferencesValueType.StringData(s) =>
                @Expect(s, "gskv_test")
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1500
    * @tc.name      : test_Preferences_on_off
    * @tc.desc      : test Preferences on/off methods with PreferencesEvent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Preferences_on_off() {
        var str = "onOffStore"
        var a = Preferences.getPreferences(getAbilityContext(), str)

        var changeCallback = Callback()

        var multiCallback = Callback()

        a.on(PreferencesEvent.PreferencesChange, changeCallback)
        a.on(PreferencesEvent.PreferencesMultiProcessChange, multiCallback)

        a.put("test_on_off", PreferencesValueType.Integer(888))
        a.flush()

        sleep(Duration.millisecond * 300)

        a.off(PreferencesEvent.PreferencesChange, callback: changeCallback)
        a.off(PreferencesEvent.PreferencesMultiProcessChange, callback: multiCallback)
        @Expect(true)
        Preferences.deletePreferences(getAbilityContext(), str)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkData_Test_preferences_enum_1600
    * @tc.name      : test_Preferences_get_with_Options
    * @tc.desc      : test Preferences.getPreferences with PreferencesOptions containing storageType
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Preferences_get_with_Options() {
        var str = "optionsStore"
        var xmlOptions = PreferencesOptions(str, storageType: StorageType.Xml)
        var gskvOptions = PreferencesOptions("gskv_" + str, storageType: StorageType.Gskv)

        var xmlPrefs = Preferences.getPreferences(getAbilityContext(), xmlOptions)
        var gskvPrefs = Preferences.getPreferences(getAbilityContext(), gskvOptions)

        xmlPrefs.put("xml_key", PreferencesValueType.Integer(111))
        xmlPrefs.flush()

        gskvPrefs.put("gskv_key", PreferencesValueType.Integer(222))
        gskvPrefs.flush()

        match (xmlPrefs.get("xml_key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                @Expect(n, 111)
            case _ => @Expect(false)
        }

        match (gskvPrefs.get("gskv_key", PreferencesValueType.Integer(0))) {
            case PreferencesValueType.Integer(n) =>
                @Expect(n, 222)
            case _ => @Expect(false)
        }
        Preferences.deletePreferences(getAbilityContext(), str)
        Preferences.deletePreferences(getAbilityContext(), "gskv_" + str)
    }
}