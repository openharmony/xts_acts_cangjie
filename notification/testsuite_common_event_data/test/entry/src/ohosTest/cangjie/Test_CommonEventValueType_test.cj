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
import std.time.*
import std.collection.*
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

@Test
class Test_CommonEventValueType {
    var received: Bool = false
    /*
     * @tc.number    : Sub_Cangjie_CommonEventValueType_Enum_0100
     * @tc.name      : Test_commonEventValueType_values
     * @tc.desc      : Feeds every documented CommonEventValueType variant into CommonEventPublishData.parameters and reads each back.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_commonEventValueType_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_commonEventValueType_values begins.")
        let params = HashMap<String, CommonEventValueType>()
        params.add("k1", CommonEventValueType.Int32Value(7i32))
        params.add("k2", CommonEventValueType.Float64Value(1.25f64))
        params.add("k3", CommonEventValueType.StringValue("value"))
        params.add("k4", CommonEventValueType.BoolValue(true))
        params.add("k5", CommonEventValueType.FD(5i32))
        params.add("k6", CommonEventValueType.ArrayString(["a", "b"]))
        params.add("k7", CommonEventValueType.ArrayInt32([1i32, 2i32]))
        params.add("k8", CommonEventValueType.ArrayInt64([1i64]))
        params.add("k9", CommonEventValueType.ArrayBool([true, false]))
        params.add("k10", CommonEventValueType.ArrayFloat64([1.5f64]))
        params.add("k11", CommonEventValueType.ArrayFD([5i32]))
        let publishData = CommonEventPublishData(parameters: params)
        @Expect(publishData.parameters.size, 11)
        match (publishData.parameters.get("k1").getOrThrow()) {
            case Int32Value(v) => @Expect(v, 7i32)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k2").getOrThrow()) {
            case Float64Value(v) => @Expect(v, 1.25f64)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k3").getOrThrow()) {
            case StringValue(v) => @Expect(v, "value")
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k4").getOrThrow()) {
            case BoolValue(v) => @Expect(v, true)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k5").getOrThrow()) {
            case FD(v) => @Expect(v, 5i32)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k6").getOrThrow()) {
            case ArrayString(v) => @Expect(v.size, 2)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k7").getOrThrow()) {
            case ArrayInt32(v) => @Expect(v.size, 2)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k8").getOrThrow()) {
            case ArrayInt64(v) => @Expect(v.size, 1)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k9").getOrThrow()) {
            case ArrayBool(v) => @Expect(v.size, 2)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k10").getOrThrow()) {
            case ArrayFloat64(v) => @Expect(v.size, 1)
            case _ => @Expect(false)
        }
        match (publishData.parameters.get("k11").getOrThrow()) {
            case ArrayFD(v) => @Expect(v.size, 1)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_commonEventValueType_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventData_Class_0200
     * @tc.name      : Test_commonEventData_fields
     * @tc.desc      : Reads CommonEventData fields delivered through the subscribe callback of a published event.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_commonEventData_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_commonEventData_fields begins.")
        let eventName = "com.example.cangjie.coverage.EVENT_DELIVERED"
        let info = CommonEventSubscribeInfo([eventName])
        let subscriber = CommonEventManager.createSubscriber(info)
        CommonEventManager.subscribe(subscriber, {
            e: Option<BusinessException>, a: Option<CommonEventData> =>
            if (let Some(data) <- a) {
                Hilog.info(0u32, "cangjietest", "event ${data.event} bundle ${data.bundleName} code ${data.code}")
                @Expect(data.event, eventName)
                this.received = true
            }
        })
        sleep(Duration.second * 1i64)
        try {
            CommonEventManager.publish(eventName)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "publish failed code=${e.code}: ${e.message}")
        }
        sleep(Duration.second * 1i64)
        CommonEventManager.unsubscribe(subscriber)
        @Expect(received, true)
        Hilog.info(0u32, "cangjietest", "testcase Test_commonEventData_fields ends.")
    }
}