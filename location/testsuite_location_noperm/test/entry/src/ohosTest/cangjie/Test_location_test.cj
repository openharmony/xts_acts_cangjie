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
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_location_noperm {
    /*
     * @tc.number    : Sub_Cangjie_test_getCurrentLocation_noperm
     * @tc.name      : test_getCurrentLocation_noperm
     * @tc.desc      : verify getCurrentLocation throws 201 when location permissions are not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getCurrentLocation_noperm(): Unit {
        try {
            let _ = GeoLocationManager.getCurrentLocation()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getCurrentLocation noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getCurrentLocationByRequest_noperm
     * @tc.name      : test_getCurrentLocationByRequest_noperm
     * @tc.desc      : verify getCurrentLocation(CurrentLocationRequest) throws 201 when location permissions are not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getCurrentLocationByRequest_noperm(): Unit {
        let curLocRequest = CurrentLocationRequest(priority: LocationRequestPriority.FirstFix,
            scenario: LocationRequestScenario.Unset, maxAccuracy: 200.0)
        try {
            let _ = GeoLocationManager.getCurrentLocation(curLocRequest)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getCurrentLocation(request) noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getCurrentLocationBySingleRequest_noperm
     * @tc.name      : test_getCurrentLocationBySingleRequest_noperm
     * @tc.desc      : verify getCurrentLocation(SingleLocationRequest) throws 201 when location permissions are not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getCurrentLocationBySingleRequest_noperm(): Unit {
        let singleLocRequest = SingleLocationRequest(LocatingPriority.PriorityAccuracy, 10000)
        try {
            let _ = GeoLocationManager.getCurrentLocation(singleLocRequest)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getCurrentLocation(singleRequest) noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }
}
