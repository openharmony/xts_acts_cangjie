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
            Hilog.info(0,"","","id:    " + displayClass.id.toString())
            Hilog.info(0,"","","name:  " + displayClass.name)
            Hilog.info(0,"","","alive: " + displayClass.alive.toString())
            Hilog.info(0,"","","refreshRate: " + displayClass.refreshRate.toString())
            Hilog.info(0,"","","rotation:    " + displayClass.rotation.toString())
            Hilog.info(0,"","","width:       " + displayClass.width.toString())
            Hilog.info(0,"","","height:      " + displayClass.height.toString())
            Hilog.info(0,"","","densityDpi:  " + displayClass.densityDpi.toString())
            Hilog.info(0,"","","densityPixels: " + displayClass.densityPixels.toString())
            Hilog.info(0,"","","scaledDensity: " + displayClass.scaledDensity.toString())
            Hilog.info(0,"","","xDpi: " + displayClass.xDpi.toString())
            Hilog.info(0,"","","yDpi: " + displayClass.yDpi.toString())
            Hilog.info(0,"","",
                "state: " + match (displayClass.state) {
                    case DisplayState.StateUnknown => "unknow"
                    case DisplayState.StateOff => "off"
                    case DisplayState.StateOn => "on"
                    case DisplayState.StateDoze => "doze"
                    case DisplayState.StateDozeSuspend => "doze suspend"
                    case DisplayState.StateVr => "vr"
                    case DisplayState.StateOnSuspend => "on suspend"
                    case _ => throw Exception("unsupported enum constructor")
                })
            Hilog.info(0,"","",
                "orientation: " + match (displayClass.orientation) {
                    case Orientation.Portrait => "PORTRAIT"
                    case Orientation.Landscape => "LANDSCAPE"
                    case Orientation.PortraitInverted => "PORTRAIT_INVERTED"
                    case Orientation.LandscapeInverted => "LANDSCAPE_INVERTED"
                    case _ => "unknow"
                })
            @Expect(displayList.size != 0)
            if (isFoldable()) {
                let status = getFoldStatus()
                let mode = getFoldDisplayMode()
            } else {
                let status = getFoldStatus()
                let mode = getFoldDisplayMode()
            }
            try {
                let region = getCurrentFoldCreaseRegion()
            } catch (e: Exception) {
                Hilog.error(0,"","","Not fold display.")
            }
        } catch (e: Exception) {
            Hilog.error(0,"","","Display info failed.")
            @Expect(false)
        }
        @Expect(true)
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

            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","Display struct failed.")
            @Expect(false)
        }
        @Expect(true)
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","test hasPrivateWindow failed.")
            @Expect(false)
        }
        @Expect(true)
    }


}
