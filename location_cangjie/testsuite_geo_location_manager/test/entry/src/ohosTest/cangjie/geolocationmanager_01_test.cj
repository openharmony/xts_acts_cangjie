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

import ohos.base.*
import std.unittest.testmacro.*
import ohos.geo_location_manager.*
import ohos.ability_access_ctrl.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.map
import std.collection.collectArray
import std.collection.forEach

@Test
class Test_location {
    override func beforeAll(): Unit {
        if (!GeoLocationManager.isLocationEnabled()) {
            swipe(from: Point(1146, 77), deltaY: 200)
            sleepFor(1.second)
            click(
                at: Screen
                    .getTheOnlyUiComponentWhoseIdEqualsTo("Ctrl.NewToggleBaseComponent_Image_location")
                    .centerPoint)
            pressBack()
            sleepFor(1.second)
        }
        ["ohos.permission.APPROXIMATELY_LOCATION", "ohos.permission.LOCATION"] |>
            forEach<Permissions> {
            permissionName: Permissions =>
            sleepFor(3.second)
            getRequiredPermissions([permissionName])
            try {
                sleepFor(3.second)
                click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("本次使用允许").centerPoint)
            } catch (e: Exception) {}
        }
    }

    override func afterAll(): Unit {
        if (GeoLocationManager.isLocationEnabled()) {
            //            let b = Screen
            //                .getTheOnlyUiComponentWhoseIdEqualsTo("sbgright")
            //                .centerPoint
            //            swipe(from: b, deltaY: 200)
            sleepFor(1.second)
            sleepFor(1.second)
            try {
                click(
                    at: Screen
                        .getTheOnlyUiComponentWhoseIdEqualsTo("Ctrl.NewToggleBaseComponent_Image_location")
                        .centerPoint)
            } catch (e: Exception) {}
            pressBack()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getCurrentLocation
     * @tc.name      : test_getCurrentLocation
     * @tc.desc      : check application info_test_test_getCurrentLocation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCurrentLocation(): Unit {
        let location = GeoLocationManager.getCurrentLocation()
        @Expect(location.latitude > -90.0 && location.latitude < 90.0, true)
        @Expect(location.longitude > -180.0 && location.longitude < 180.0, true)
        @Expect(location.altitude >= 0.0, true)
        @Expect(location.accuracy >= 0.0, true)
        @Expect(location.speed >= 0.0 , true)
        @Expect(location.direction >= 0.0 && location.direction <= 360.0, true)
        if (let Some(v) <- location.directionAccuracy) {
            @Expect(v >= 0.0 && v <= 360.0 , true)
        }
        let curLocRequest_0 = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.Unset, maxAccuracy: 200.0)
        let curLocRet_0 = GeoLocationManager.getCurrentLocation(curLocRequest_0)
        @Expect(true)
        let curLocRequest_1 = CurrentLocationRequest(priority: LocationRequestPriority.LowPower,
            scenario: LocationRequestScenario.Navigation, maxAccuracy: 200.0)
        let curLocRet_1 = GeoLocationManager.getCurrentLocation(curLocRequest_1)
        @Expect(true)
        let curLocRequest_2 = CurrentLocationRequest(priority: LocationRequestPriority.Accuracy,
            scenario: LocationRequestScenario.TrajectoryTracking, maxAccuracy: 200.0)
        let curLocRet_2 = GeoLocationManager.getCurrentLocation(curLocRequest_2)
        @Expect(true)
        let curLocRequest_3 = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.CarHailing, maxAccuracy: 200.0)
        let curLocRet_3 = GeoLocationManager.getCurrentLocation(curLocRequest_3)
        @Expect(true)
        let curLocRequest_4 = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.DailyLifeService, maxAccuracy: 200.0)
        let curLocRet_4 = GeoLocationManager.getCurrentLocation(curLocRequest_4)
        @Expect(true)
        let curLocRequest_5 = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: 200.0)
        let curLocRet_5 = GeoLocationManager.getCurrentLocation(curLocRequest_5)
        @Expect(true)
        let singleLocRequest = SingleLocationRequest(LocatingPriority.PriorityAccuracy, 10000)
        let singleLocRet = GeoLocationManager.getCurrentLocation(singleLocRequest)
        @Expect(true)
        let singleLocRequest_1 = SingleLocationRequest(LocatingPriority.PriorityLocatingSpeed, 10000)
        let singleLocRet_1 = GeoLocationManager.getCurrentLocation(singleLocRequest_1)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_isLocationEnabled
     * @tc.name      : test_isLocationEnabled
     * @tc.desc      : check application info_test_test_isLocationEnabled
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isLocationEnabled(): Unit {
        @Expect(GeoLocationManager.isLocationEnabled() , true)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_1
     * @tc.name      : test_singlelocationrequest_1
     * @tc.desc      : check application info_test_test_singlelocationrequest_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_1(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityAccuracy, 0i32)
        match (sinlocreq.locatingPriority) {
            case PriorityAccuracy => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_2
     * @tc.name      : test_singlelocationrequest_2
     * @tc.desc      : check application info_test_test_singlelocationrequest_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_2(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityAccuracy, -1i32)
        match (sinlocreq.locatingPriority) {
            case PriorityAccuracy => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, -1i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_3
     * @tc.name      : test_singlelocationrequest_3
     * @tc.desc      : check application info_test_test_singlelocationrequest_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_3(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityAccuracy, 1i32)
        match (sinlocreq.locatingPriority) {
            case PriorityAccuracy => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, 1i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_4
     * @tc.name      : test_singlelocationrequest_4
     * @tc.desc      : check application info_test_test_singlelocationrequest_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_4(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityLocatingSpeed, 0i32)
        match (sinlocreq.locatingPriority) {
            case PriorityLocatingSpeed => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_5
     * @tc.name      : test_singlelocationrequest_5
     * @tc.desc      : check application info_test_test_singlelocationrequest_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_5(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityLocatingSpeed, -1i32)
        match (sinlocreq.locatingPriority) {
            case PriorityLocatingSpeed => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, -1i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest_6
     * @tc.name      : test_singlelocationrequest_6
     * @tc.desc      : check application info_test_test_singlelocationrequest_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest_6(): Unit {
        let sinlocreq = SingleLocationRequest(LocatingPriority.PriorityLocatingSpeed, 1i32)
        match (sinlocreq.locatingPriority) {
            case PriorityLocatingSpeed => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(sinlocreq.locatingTimeoutMs, 1i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_1
     * @tc.name      : test_currentlocationrequest_1
     * @tc.desc      : check application info_test_test_currentlocationrequest_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_1(): Unit {
        let curlocreq = CurrentLocationRequest()
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case Unset => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 0.0f32)
        @Expect(curlocreq.timeoutMs, 5000i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_2
     * @tc.name      : test_currentlocationrequest_2
     * @tc.desc      : check application info_test_test_currentlocationrequest_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_2(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.Unset,
            scenario: LocationRequestScenario.Unset, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case Unset => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case Unset => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_3
     * @tc.name      : test_currentlocationrequest_3
     * @tc.desc      : check application info_test_test_currentlocationrequest_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_3(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.Accuracy,
            scenario: LocationRequestScenario.Navigation, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case Accuracy => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case Navigation => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_4
     * @tc.name      : test_currentlocationrequest_4
     * @tc.desc      : check application info_test_test_currentlocationrequest_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_4(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.LowPower,
            scenario: LocationRequestScenario.TrajectoryTracking, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case LowPower => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case TrajectoryTracking => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_5
     * @tc.name      : test_currentlocationrequest_5
     * @tc.desc      : check application info_test_test_currentlocationrequest_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_5(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.CarHailing, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case CarHailing => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_6
     * @tc.name      : test_currentlocationrequest_6
     * @tc.desc      : check application info_test_test_currentlocationrequest_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_6(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.DailyLifeService, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case DailyLifeService => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_7
     * @tc.name      : test_currentlocationrequest_7
     * @tc.desc      : check application info_test_test_currentlocationrequest_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_7(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: 1.111f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 1.111f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_8
     * @tc.name      : test_currentlocationrequest_8
     * @tc.desc      : check application info_test_test_currentlocationrequest_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_8(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: 0.00001f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, 0.00001f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_9
     * @tc.name      : test_currentlocationrequest_9
     * @tc.desc      : check application info_test_test_currentlocationrequest_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_9(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: -1.1112f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, -1.1112f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_10
     * @tc.name      : test_currentlocationrequest_10
     * @tc.desc      : check application info_test_test_currentlocationrequest_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_10(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: -1.1112f32, timeoutMs: -1i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, -1.1112f32)
        @Expect(curlocreq.timeoutMs, -1i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_11
     * @tc.name      : test_currentlocationrequest_11
     * @tc.desc      : check application info_test_test_currentlocationrequest_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_11(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: -1.1112f32, timeoutMs: 0i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, -1.1112f32)
        @Expect(curlocreq.timeoutMs, 0i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest_12
     * @tc.name      : test_currentlocationrequest_12
     * @tc.desc      : check application info_test_test_currentlocationrequest_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest_12(): Unit {
        let curlocreq = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.NoPower, maxAccuracy: -1.1112f32, timeoutMs: 100000i32)
        match (curlocreq.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreq.scenario) {
            case NoPower => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreq.maxAccuracy, -1.1112f32)
        @Expect(curlocreq.timeoutMs, 100000i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_location
     * @tc.name      : test_location
     * @tc.desc      : check application info_test_test_location
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_location(): Unit {
        let curlocreq = CurrentLocationRequest()
        let location = GeoLocationManager.getCurrentLocation(curlocreq)
        @Expect(location.latitude>=-90.0 && location.latitude<=90.0)
        @Expect(location.longitude>=-180.0 && location.longitude<=180.0)
        @Expect(location.altitude>=0.0)
        @Expect(location.accuracy>=0.0)
        @Expect(location.speed>=0.0)
        @Expect(location.timestamp>=0i64)
        @Expect(location.direction>=0.0)
        @Expect(location.timeSinceBoot>=0i64)
        @Expect(location.additions.getOrThrow().size>=0)
        @Expect(location.additionSize.getOrThrow()>=0i64)
        @Expect(location.altitudeAccuracy.getOrThrow()>=0.0)
        @Expect(location.speedAccuracy.getOrThrow()>=0.0)
        @Expect(location.directionAccuracy.getOrThrow()>=0.0)
        @Expect(location.uncertaintyOfTimeSinceBoot.getOrThrow()>=0i64)
        match (location.sourceType.getOrThrow()) {
            case NetWork => @Expect(true)
            case _ => @Expect(false)
        }
    }
}
