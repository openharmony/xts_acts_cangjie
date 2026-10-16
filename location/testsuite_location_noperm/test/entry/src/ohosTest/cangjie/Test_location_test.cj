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
import ohos.display.*
import ohos.ui_test

@Test
class Test_location_noperm {

    override func beforeAll(): Unit {
        if (!GeoLocationManager.isLocationEnabled()) {
            openLocationSwitch()
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
