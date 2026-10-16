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
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.map
import std.collection.collectArray
import std.collection.forEach
import ohos.display.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.ui_test

@Test
class Test_location {
    override func beforeAll(): Unit {
        if (!GeoLocationManager.isLocationEnabled()) {
            openLocationSwitch()
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
    }

    private func waitLocationReady(location: Location): Unit {
        let maxAttempts = 100i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            try {
                if (location.timestamp > 0i64) {
                    return
                }
            } catch (_: Exception) {}
            attempts += 1i64
            sleepFor(100.milliSecond)
        }
    }

    private func openLocationSwitch(): Unit {
        if (GeoLocationManager.isLocationEnabled()) {
            return
        }
        wakeUpDisplay()
        let display = getDefaultDisplaySync()
        let screenWidth = Int32(display.width)
        let screenHeight = Int32(display.height)
        if (!pullDownControlCenter(screenWidth, screenHeight)) {
            Hilog.error(0u32, "cangjietest", "openLocationSwitch: the control center did not open, trying to continue anyway")
        }
        if (clickLocationToggleIfPresent()) {
            return
        }
        addLocationSwitchByEditing(screenWidth, screenHeight)
        clickLocationToggle(screenWidth, screenHeight)
    }

    private func pullDownControlCenter(screenWidth: Int32, screenHeight: Int32): Bool {
        let maxAttempts = 5i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            if (findControlCenterComponentById("Ctrl.NewToggleBaseComponent_Image_location").isSome() ||
                findControlCenterComponentById("Ctrl.HeaderLayout_Image_edit_btn").isSome() ||
                findControlCenterComponentByText(["编辑"]).isSome() ||
                findControlCenterComponentById("Ctrl.ToggleEditView_Open_Candidate_Library_Btn").isSome() ||
                findControlCenterComponentById("Ctrl.ToggleEditView_Add_Btn").isSome()) {
                return true
            }
            swipe(from: Point(screenWidth * 9 / 10, screenHeight / 100), deltaY: screenHeight / 5)
            sleepFor(1.second)
            attempts += 1i64
        }
        false
    }

    private func clickLocationToggleIfPresent(): Bool {
        ensureEditLayoutSaved()
        if (let Some(toggle) <- findControlCenterComponentById("Ctrl.NewToggleBaseComponent_Image_location")) {
            try {
                let center = toggle.getBoundsCenter()
                click(at: Point(center.x, center.y))
                if (waitForLocationEnabled(15i64)) {
                    pressBack()
                    sleepFor(1.second)
                    Hilog.info(0u32, "cangjietest", "openLocationSwitch: the location switch is now enabled")
                    return true
                }
                Hilog.error(0u32, "cangjietest", "openLocationSwitch: clicked the location toggle but the switch is still off")
                return false
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "openLocationSwitch: failed to click the location toggle: ${e.toString()}")
                return false
            }
        }
        false
    }

    private func ensureEditLayoutSaved(): Unit {
        let maxAttempts = 3i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            if (findControlCenterComponentByText(["编辑"]).isNone()) {
                return
            }
            if (let Some(checkmark) <- findControlCenterComponentById("Ctrl.ToggleEditView_header_btn_right_FOCUS")) {
                clickComponentCenter(checkmark)
            }
            sleepFor(1.second)
            attempts += 1i64
        }
    }

    private func waitForLocationEnabled(maxAttempts: Int64): Bool {
        var attempts = 0i64
        while (attempts < maxAttempts) {
            if (GeoLocationManager.isLocationEnabled()) {
                return true
            }
            sleepFor(200.milliSecond)
            attempts += 1i64
        }
        false
    }

    private func clickLocationToggle(screenWidth: Int32, screenHeight: Int32): Unit {
        let maxAttempts = 6i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            if (clickLocationToggleIfPresent()) {
                return
            }
            swipe(from: Point(screenWidth / 2, screenHeight / 3), deltaY: -(screenHeight / 20))
            sleepFor(1.second)
            attempts += 1i64
        }
        swipe(from: Point(screenWidth * 9 / 10, screenHeight / 100), deltaY: screenHeight / 5)
        sleepFor(1.second)
        if (!clickLocationToggleIfPresent()) {
            Hilog.error(0u32, "cangjietest", "openLocationSwitch: the location switch could not be enabled")
        }
    }

    private func addLocationSwitchByEditing(screenWidth: Int32, screenHeight: Int32): Unit {
        Hilog.info(0u32, "cangjietest", "openLocationSwitch: the location toggle is hidden, adding it back through control-center editing")
        if (let Some(editButton) <- findControlCenterComponentById("Ctrl.HeaderLayout_Image_edit_btn")) {
            clickComponentCenter(editButton)
        } else if (findControlCenterComponentByText(["编辑"]).isNone()) {
            click(at: Point(screenWidth / 6, screenHeight / 9))
            Hilog.info(0u32, "cangjietest", "openLocationSwitch: clicked the fallback edit point")
        }
        sleepFor(1.second)
        if (!clickLastControlCenterComponentById("Ctrl.ToggleEditView_Open_Candidate_Library_Btn")) {
            click(at: Point(screenWidth / 2, screenHeight * 17 / 20))
            Hilog.info(0u32, "cangjietest", "openLocationSwitch: clicked the fallback add-row point")
        }
        sleepFor(1.second)
        clickLocationEntryPlus(screenWidth, screenHeight)
        sleepFor(1.second)
        if (findControlCenterComponentById("Ctrl.ToggleEditView_Add_Btn").isSome()) {
            click(at: Point(screenWidth / 2, screenHeight / 4))
            sleepFor(1.second)
        }
        ensureEditLayoutSaved()
        sleepFor(1.second)
    }

    private func clickLocationEntryPlus(screenWidth: Int32, screenHeight: Int32): Unit {
        let maxScrollAttempts = 3i64
        var scrollAttempts = 0i64
        while (scrollAttempts < maxScrollAttempts) {
            if (clickLocationEntryPlusOnce()) {
                return
            }
            swipe(from: Point(screenWidth / 2, screenHeight * 4 / 5), deltaY: -(screenHeight / 10))
            sleepFor(1.second)
            scrollAttempts += 1i64
        }
        Hilog.error(0u32, "cangjietest", "openLocationSwitch: the 位置 entry was not found in the switch-add list")
    }

    private func clickLocationEntryPlusOnce(): Bool {
        let entry = match (findControlCenterComponentById("Ctrl.NewToggleBaseComponent_Image_location")) {
            case Some(icon) => Some(icon)
            case None => findControlCenterComponentByText(["位置", "位置信息"])
        }
        if (let Some(entryComponent) <- entry) {
            try {
                let entryBounds = entryComponent.getBounds()
                if (let Some(addButton) <- findAddButtonForEntry(entryBounds)) {
                    let center = addButton.getBoundsCenter()
                    click(at: Point(center.x, center.y))
                    Hilog.info(0u32, "cangjietest", "openLocationSwitch: clicked the add button of the 位置 entry at (${center.x}, ${center.y})")
                    return true
                }
                Hilog.error(0u32, "cangjietest", "openLocationSwitch: no add button matches the 位置 entry")
                return false
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "openLocationSwitch: failed to locate the 位置 entry: ${e.toString()}")
                return false
            }
        }
        false
    }

    private func findAddButtonForEntry(entryBounds: ui_test.Rect): Option<ui_test.Component> {
        let addButtons = findAllControlCenterComponentsById("Ctrl.ToggleEditView_Add_Btn")
        var best: Option<ui_test.Component> = None
        var bestDistance = Int64.Max
        for (addButton in addButtons) {
            let addBounds = addButton.getBounds()
            if (addBounds.left >= entryBounds.right || entryBounds.left >= addBounds.right) {
                continue
            }
            if (addBounds.top > entryBounds.top) {
                continue
            }
            let centerX = (addBounds.left + addBounds.right) / 2
            let centerY = (addBounds.top + addBounds.bottom) / 2
            let dx = Int64(centerX - entryBounds.right)
            let dy = Int64(centerY - entryBounds.top)
            let distance = dx * dx + dy * dy
            if (distance > 160000i64) {
                continue
            }
            if (distance < bestDistance) {
                bestDistance = distance
                best = addButton
            }
        }
        best
    }

    private func clickLastControlCenterComponentById(id: String): Bool {
        try {
            let components = findAllControlCenterComponentsById(id)
            if (components.size == 0) {
                return false
            }
            var target = components[0]
            var targetTop = target.getBounds().top
            for (component in components) {
                let top = component.getBounds().top
                if (top > targetTop) {
                    target = component
                    targetTop = top
                }
            }
            let center = target.getBoundsCenter()
            click(at: Point(center.x, center.y))
            Hilog.info(0u32, "cangjietest", "openLocationSwitch: clicked ${id} at (${center.x}, ${center.y})")
            return true
        } catch (e: Exception) {
            Hilog.error(0u32, "cangjietest", "openLocationSwitch: failed to click ${id}: ${e.toString()}")
            return false
        }
    }

    private func clickComponentCenter(component: ui_test.Component): Unit {
        try {
            let center = component.getBoundsCenter()
            let point = Point(center.x, center.y)
            click(at: point)
            Hilog.info(0u32, "cangjietest", "openLocationSwitch: clicked a control-center component at (${point.x}, ${point.y})")
        } catch (e: Exception) {
            Hilog.error(0u32, "cangjietest", "openLocationSwitch: failed to click a control-center component: ${e.toString()}")
        }
    }

    private func findAllControlCenterComponentsById(id: String): Array<ui_test.Component> {
        try {
            match (TestDriver.driver.findComponents(ui_test.On().id(id))) {
                case Some(components) => components
                case None => Array<ui_test.Component>()
            }
        } catch (e: Exception) {
            Array<ui_test.Component>()
        }
    }

    private func findControlCenterComponentById(id: String): Option<ui_test.Component> {
        findAllControlCenterComponentsById(id).get(0)
    }

    private func findAllControlCenterComponentsByText(text: String): Array<ui_test.Component> {
        try {
            match (TestDriver.driver.findComponents(ui_test.On().text(text))) {
                case Some(components) => components
                case None => Array<ui_test.Component>()
            }
        } catch (e: Exception) {
            Array<ui_test.Component>()
        }
    }

    private func findControlCenterComponentByText(texts: Array<String>): Option<ui_test.Component> {
        for (text in texts) {
            if (let Some(component) <- findAllControlCenterComponentsByText(text).get(0)) {
                return component
            }
        }
        None
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
        waitLocationReady(location)
        @Expect(location.latitude > -90.0 && location.latitude < 90.0, true)
        @Expect(location.longitude > -180.0 && location.longitude < 180.0, true)
        @Expect(location.altitude >= 0.0, true)
        @Expect(location.accuracy >= 0.0, true)
        @Expect(location.speed >= 0.0 , true)
        @Expect(location.direction >= 0.0 && location.direction <= 360.0, true)
        if (let Some(v) <- location.directionAccuracy) {
            @Expect(v >= 0.0 && v <= 360.0 , true)
        }
        try{
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
        }catch(e:Exception){
            @Expect(false)
        }
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
     * @tc.number    : Sub_Cangjie_test_singlelocationrequest
     * @tc.name      : test_singlelocationrequest
     * @tc.desc      : check application info_test_test_singlelocationrequest
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_singlelocationrequest(): Unit {
        let caseParams: Array<(LocatingPriority, Int32)> = [
            (LocatingPriority.PriorityAccuracy, 0i32),
            (LocatingPriority.PriorityAccuracy, -1i32),
            (LocatingPriority.PriorityAccuracy, 1i32),
            (LocatingPriority.PriorityLocatingSpeed, 0i32),
            (LocatingPriority.PriorityLocatingSpeed, -1i32),
            (LocatingPriority.PriorityLocatingSpeed, 1i32)
        ]
        for ((priority, timeoutMs) in caseParams) {
            let sinlocreq = SingleLocationRequest(priority, timeoutMs)
            match ((sinlocreq.locatingPriority, priority)) {
                case (PriorityAccuracy, PriorityAccuracy) => @Expect(true)
                case (PriorityLocatingSpeed, PriorityLocatingSpeed) => @Expect(true)
                case (_, _) => @Expect(false)
            }
            @Expect(sinlocreq.locatingTimeoutMs, timeoutMs)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_currentlocationrequest
     * @tc.name      : test_currentlocationrequest
     * @tc.desc      : check application info_test_test_currentlocationrequest
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_currentlocationrequest(): Unit {
        let curlocreqDef = CurrentLocationRequest()
        match (curlocreqDef.priority) {
            case FirstFix => @Expect(true)
            case _ => @Expect(false)
        }
        match (curlocreqDef.scenario) {
            case Unset => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(curlocreqDef.maxAccuracy, 0.0f32)
        @Expect(curlocreqDef.timeoutMs, 5000i32)

        let caseParams: Array<(LocationRequestPriority, LocationRequestScenario, Float32, Int32)> = [
            (LocationRequestPriority.Unset, LocationRequestScenario.Unset, 1.111f32, 0i32),
            (LocationRequestPriority.Accuracy, LocationRequestScenario.Navigation, 1.111f32, 0i32),
            (LocationRequestPriority.LowPower, LocationRequestScenario.TrajectoryTracking, 1.111f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.CarHailing, 1.111f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.DailyLifeService, 1.111f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.NoPower, 1.111f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.NoPower, 0.00001f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.NoPower, -1.1112f32, 0i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.NoPower, -1.1112f32, -1i32),
            (LocationRequestPriority.FirstFix, LocationRequestScenario.NoPower, -1.1112f32, 100000i32)
        ]
        for ((priority, scenario, maxAccuracy, timeoutMs) in caseParams) {
            let curlocreq = CurrentLocationRequest(priority: priority, scenario: scenario,
                maxAccuracy: maxAccuracy, timeoutMs: timeoutMs)
            match ((priority, curlocreq.priority)) {
                case (Unset, Unset) => @Expect(true)
                case (Accuracy, Accuracy) => @Expect(true)
                case (LowPower, LowPower) => @Expect(true)
                case (FirstFix, FirstFix) => @Expect(true)
                case _ => @Expect(false)
            }
            match ((scenario, curlocreq.scenario)) {
                case (Unset, Unset) => @Expect(true)
                case (Navigation, Navigation) => @Expect(true)
                case (TrajectoryTracking, TrajectoryTracking) => @Expect(true)
                case (CarHailing, CarHailing) => @Expect(true)
                case (DailyLifeService, DailyLifeService) => @Expect(true)
                case (NoPower, NoPower) => @Expect(true)
                case _ => @Expect(false)
            }
            @Expect(curlocreq.maxAccuracy, maxAccuracy)
            @Expect(curlocreq.timeoutMs, timeoutMs)
        }
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
        waitLocationReady(location)
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
        @Expect(location.sourceType.isSome(), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_location_additionsMap_0500
     * @tc.name      : test_location_additionsMap
     * @tc.desc      : Reads the optional additionsMap field returned with a location.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_location_additionsMap(): Unit {
        try {
            let location = GeoLocationManager.getCurrentLocation()
            waitLocationReady(location)
            match (location.additionsMap) {
                case Some(map) => @Expect(map.size >= 0)
                case None => @Expect(true)
            }
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_location_sourceTypes_0400
     * @tc.name      : test_location_sourceTypes
     * @tc.desc      : Obtains the current location and asserts the returned sourceType is one of the documented LocationSourceType values.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_location_sourceTypes(): Unit {
        try {
            let location = GeoLocationManager.getCurrentLocation()
            waitLocationReady(location)
            match (location.sourceType) {
                case Some(Gnss) => @Expect(true)
                case Some(Network) => @Expect(true)
                case Some(Indoor) => @Expect(true)
                case Some(Rtk) => @Expect(true)
                case Some(_) => @Expect(false)
                case None => @Expect(false)
            }
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }
}
