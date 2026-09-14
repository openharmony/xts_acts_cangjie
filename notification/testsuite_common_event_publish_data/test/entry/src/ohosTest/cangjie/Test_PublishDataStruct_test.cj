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
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_PublishDataStruct {
    /*
     * @tc.number    : Sub_Cangjie_CommonEventPublishData_Struct_0100
     * @tc.name      : Test_publishData_defaultAndBounds
     * @tc.desc      : Covers default-parameter construction and code boundary values of CommonEventPublishData.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_publishData_defaultAndBounds(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_publishData_defaultAndBounds begins.")
        let def = CommonEventPublishData()
        @Expect(def.bundleName, "")
        @Expect(def.data, "")
        @Expect(def.code, 0i32)
        @Expect(def.subscriberPermissions.size, 0)
        @Expect(def.isOrdered, false)
        @Expect(def.isSticky, false)
        @Expect(def.parameters.size, 0)

        let params = HashMap<String, CommonEventValueType>()
        params.add("int", CommonEventValueType.Int32Value(1i32))
        params.add("float", CommonEventValueType.Float64Value(1.5f64))
        params.add("str", CommonEventValueType.StringValue("s"))
        params.add("bool", CommonEventValueType.BoolValue(true))
        params.add("fd", CommonEventValueType.FD(3i32))
        params.add("arrstr", CommonEventValueType.ArrayString(["a"]))
        params.add("arri32", CommonEventValueType.ArrayInt32([1i32]))
        params.add("arri64", CommonEventValueType.ArrayInt64([1i64]))
        params.add("arrbool", CommonEventValueType.ArrayBool([true]))
        params.add("arrf64", CommonEventValueType.ArrayFloat64([1.5f64]))
        params.add("arrfd", CommonEventValueType.ArrayFD([3i32]))

        let caseCodes: Array<Int32> = [Int32.Min, -1i32, 0i32, 1i32, Int32.Max]
        for (c in caseCodes) {
            let pd = CommonEventPublishData(bundleName: "bundle", data: "data", code: c,
                subscriberPermissions: ["permission"], isOrdered: true, isSticky: false, parameters: params)
            @Expect(pd.code, c)
            @Expect(pd.bundleName, "bundle")
            @Expect(pd.data, "data")
            @Expect(pd.subscriberPermissions.size, 1)
            @Expect(pd.isOrdered, true)
            @Expect(pd.isSticky, false)
            @Expect(pd.parameters.size, 11)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_publishData_defaultAndBounds ends.")
    }
}