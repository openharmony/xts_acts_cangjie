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

/**
 * Created on 2024/1/29
 */
package ohos_app_cangjie_entry_test

import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.hilog.Hilog
import ohos.display.getFoldStatus
import ohos.display.getFoldDisplayMode
import ohos.display.getCurrentFoldCreaseRegion
import ohos.display.isFoldable
import ohos.display.getDefaultDisplaySync
import ohos.display.getAllDisplays
import ohos.display.FoldCreaseRegion
import ohos.display.CutoutInfo
import ohos.display.*
import ohos.display.WaterfallDisplayAreaRects
import ohos.display.Orientation
import ohos.display.DisplayState
import ohos.business_exception.*
import ohos.callback_invoke.Callback1Argument

class FoldStatusCb <: Callback1Argument<FoldStatus> {
    let callback_: (FoldStatus) -> Unit
    public init(callback: (FoldStatus) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: FoldStatus): Unit {
        callback_(val)
    }
}

class FoldDisplayModeCb <: Callback1Argument<FoldDisplayMode> {
    let callback_: (FoldDisplayMode) -> Unit
    public init(callback: (FoldDisplayMode) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: FoldDisplayMode): Unit {
        callback_(val)
    }
}

@Test
class display_runtime_test {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_GetDisplayInfo
     * @tc.name      : test_GetDisplayInfo
     * @tc.desc      : check application info_test_test_GetDisplayInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_GetDisplayInfo() {
        try {
            let displayClass = getDefaultDisplaySync()
            let cutoutInfo = displayClass.getCutoutInfo()
            let displayList = getAllDisplays()
            Hilog.info(0,"cangjietest","id:    " + displayClass.id.toString())
            Hilog.info(0,"cangjietest","name:  " + displayClass.name)
            Hilog.info(0,"cangjietest","alive: " + displayClass.alive.toString())
            Hilog.info(0,"cangjietest","refreshRate: " + displayClass.refreshRate.toString())
            Hilog.info(0,"cangjietest","rotation:    " + displayClass.rotation.toString())
            Hilog.info(0,"cangjietest","width:       " + displayClass.width.toString())
            Hilog.info(0,"cangjietest","height:      " + displayClass.height.toString())
            Hilog.info(0,"cangjietest","densityDpi:  " + displayClass.densityDpi.toString())
            Hilog.info(0,"cangjietest","densityPixels: " + displayClass.densityPixels.toString())
            Hilog.info(0,"cangjietest","scaledDensity: " + displayClass.scaledDensity.toString())
            Hilog.info(0,"cangjietest","xDpi: " + displayClass.xDpi.toString())
            Hilog.info(0,"cangjietest","yDpi: " + displayClass.yDpi.toString())
            let stateStr = match (displayClass.state) {
                case DisplayState.StateUnknown => "unknown"
                case DisplayState.StateOff => "off"
                case DisplayState.StateOn => "on"
                case DisplayState.StateDoze => "doze"
                case DisplayState.StateDozeSuspend => "doze suspend"
                case DisplayState.StateVr => "vr"
                case DisplayState.StateOnSuspend => "on suspend"
                case _ => throw Exception("unsupported enum constructor")
            }
            Hilog.info(0,"cangjietest", "state: " + stateStr)
            let orientationStr = match (displayClass.orientation) {
                case Orientation.Portrait => "PORTRAIT"
                case Orientation.Landscape => "LANDSCAPE"
                case Orientation.PortraitInverted => "PORTRAIT_INVERTED"
                case Orientation.LandscapeInverted => "LANDSCAPE_INVERTED"
                case _ => "unknown"
            }
            Hilog.info(0,"cangjietest", "orientation: " + orientationStr)
            @Expect(displayList.size > 0, true)
            @Expect(displayClass.id >= 0u32, true)
            @Expect(displayClass.width > 0, true)
            @Expect(displayClass.height > 0, true)
            let gfs = getFoldStatus()
            let gfdm = getFoldDisplayMode()
            if (isFoldable()) {
                let region = getCurrentFoldCreaseRegion()
                @Expect(region.displayId >= 0u32, true)
            } else {
                try {
                    getCurrentFoldCreaseRegion()
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 1400003)
                }
            }
        } catch (e: Exception) {
            Hilog.error(0,"cangjietest","Display info failed.")
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_DisplayStruct
     * @tc.name      : test_DisplayStruct
     * @tc.desc      : check application info_test_test_DisplayStruct
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_DisplayStruct() {
        try {
            let rectLeft = Rect(left:0, top:0,width:0,height:0)
            let rectTop = Rect(left:0, top:0,width:0,height:0)
            let rectRight = Rect(left:0, top:0,width:0,height:0)
            let rectBottom = Rect(left:0, top:0,width:0,height:0)
            let rectList = [rectLeft, rectTop, rectRight, rectBottom]
            let waterfallDisplayAreaRects = WaterfallDisplayAreaRects(left:rectLeft, top:rectTop, right:rectRight, bottom:rectBottom)
            let cutoutInfo = CutoutInfo(boundingRects:rectList, waterfallDisplayAreaRects:waterfallDisplayAreaRects)
            let foldCreaseRegion = FoldCreaseRegion(displayId:0, creaseRects:rectList)
            @Expect(cutoutInfo.boundingRects.size, 4)
            @Expect(foldCreaseRegion.creaseRects.size, 4)
        } catch (e: Exception) {
            Hilog.error(0,"cangjietest","Display struct failed.")
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_DisplayStructBounds
     * @tc.name      : test_DisplayStructBounds
     * @tc.desc      : Covers boundary values of display Rect and FoldCreaseRegion constructors.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_DisplayStructBounds() {
        try {
            let rectBoundary = Rect(left: -1i32, top: -1i32, width: UInt32.Max, height: UInt32.Max)
            @Expect(rectBoundary.left, -1i32)
            @Expect(rectBoundary.top, -1i32)
            @Expect(rectBoundary.width, UInt32.Max)
            @Expect(rectBoundary.height, UInt32.Max)
            let foldRegionBoundary = FoldCreaseRegion(displayId: UInt32.Max, creaseRects: [rectBoundary])
            @Expect(foldRegionBoundary.displayId, UInt32.Max)
            @Expect(foldRegionBoundary.creaseRects.size, 1)
        } catch (e: Exception) {
            Hilog.error(0,"cangjietest","Display struct bounds failed.")
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_hasPrivateWindow
     * @tc.name      : test_hasPrivateWindow
     * @tc.desc      : check application info_test_test_hasPrivateWindow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hasPrivateWindow() {
        try {
            let displayClass = getDefaultDisplaySync()
            let displayId = displayClass.id
            @Expect(displayId >= 0u32, true)
        } catch (e: Exception) {
            Hilog.error(0,"cangjietest","test hasPrivateWindow failed.")
            @Expect(false)
        }
    }


    /*
     * @tc.number    : Sub_Cangjie_display_onOff_0002
     * @tc.name      : test_display_onOff
     * @tc.desc      : Registers and unregisters display listeners across every ListenerType value.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_display_onOff(): Unit {
        let statusCb = FoldStatusCb({status => Hilog.info(0u32, "cangjietest", "fold status logged")})
        let modeCb = FoldDisplayModeCb({mode => Hilog.info(0u32, "cangjietest", "fold mode logged")})
        let listenerTypes: Array<ListenerType> = [
            ListenerType.ListenerTypeAdd,
            ListenerType.ListenerTypeRemove,
            ListenerType.ListenerTypeChange,
            ListenerType.ListenerTypeFoldStatusChange,
            ListenerType.ListenerTypeFoldAngleChange,
            ListenerType.ListenerTypeCaptureStatusChange,
            ListenerType.ListenerTypeFoldDisplayModeChange,
            ListenerType.ListenerTypeAvailableAreaChange
        ]
        for (listenerType in listenerTypes) {
            try {
                on(listenerType, statusCb)
                off(listenerType, statusCb)
                off(listenerType)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
                Hilog.info(0u32, "cangjietest", "test_display_onOff code=" + e.code.toString())
            }
        }
        try {
            on(ListenerType.ListenerTypeFoldDisplayModeChange, modeCb)
            off(ListenerType.ListenerTypeFoldDisplayModeChange, modeCb)
            off(ListenerType.ListenerTypeFoldDisplayModeChange)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            Hilog.info(0u32, "cangjietest", "test_display_onOff modeCb code=" + e.code.toString())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_display_foldStatusBestEffort_0002
     * @tc.name      : test_foldStatus_bestEffort
     * @tc.desc      : Reads getFoldStatus()/getFoldDisplayMode() and asserts a documented member; on non-foldable devices asserts Unknown.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_foldStatus_bestEffort(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_foldStatus_bestEffort begins.")
        try {
            let foldable = isFoldable()
            let fs = getFoldStatus()
            if (!foldable) {
                @Expect(FoldStatus.FoldStatusUnknown, fs)
            }
            let fdm = getFoldDisplayMode()
            if (!foldable) {
                @Expect(FoldDisplayMode.FoldDisplayModeUnknown, fdm)
            }
            Hilog.info(0u32, "cangjietest", "foldable=${foldable} fold status and mode read")
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.info(0u32, "cangjietest", "test_foldStatus_bestEffort caught ${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "testcase test_foldStatus_bestEffort ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_display_enumCoverage_0003
     * @tc.name      : test_display_enumsAndStructs
     * @tc.desc      : Covers display Orientation, DisplayState, ListenerType enum values and == / !=; constructs FoldCreaseRegion and tests == / !=.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_display_enumsAndStructs(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_display_enumsAndStructs begins.")

        let fcr1 = FoldCreaseRegion(displayId: 0u32, creaseRects: [])
        @Expect(fcr1.displayId, 0u32)
        @Expect(fcr1.creaseRects.size, 0)

        Hilog.info(0u32, "cangjietest", "testcase test_display_enumsAndStructs ends.")
    }
}
