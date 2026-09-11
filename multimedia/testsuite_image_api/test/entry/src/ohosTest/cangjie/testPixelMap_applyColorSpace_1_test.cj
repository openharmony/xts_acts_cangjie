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
import kit.PerformanceAnalysisKit.Hilog
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.multimedia.image.*
import ohos.graphics.color_space_manager.*
import ohos.business_exception.BusinessException

@Test
class testPixelMap_applyColorSpace_1 {
    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_applyColorSpace_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Perform color space conversion on the image pixel colors according to the input target color space. targetColorSpace: "create(ColorSpace.UNKNOWN)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            let getColorSpace = pixelMap.getColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image types are not supported.")
            @Expect(e.code, 62980103)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_applyColorSpace_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Perform color space conversion on the image pixel colors according to the input target color space. targetColorSpace: "create(ColorSpace.CUSTOM)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize))
            let getColorSpace = pixelMap.getColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image types are not supported.")
            @Expect(e.code, 62980103)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_applyColorSpace_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Perform color space conversion on the image pixel colors according to the input target color space. targetColorSpace: "create(ColorSpace.UNKNOWN)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.RgbaF16, scaleMode: ScaleMode.FitTargetSize))
            let getColorSpace = pixelMap.getColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image types are not supported.")
            @Expect(e.code, 62980103)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_applyColorSpace_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Perform color space conversion on the image pixel colors according to the input target color space. targetColorSpace: "create(ColorSpace.UNKNOWN)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Nv21, scaleMode: ScaleMode.FitTargetSize))
            let getColorSpace = pixelMap.getColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image types are not supported.")
            @Expect(e.code, 62980103)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_applyColorSpace_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Perform color space conversion on the image pixel colors according to the input target color space. targetColorSpace: "create(ColorSpace.UNKNOWN)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Nv12, scaleMode: ScaleMode.FitTargetSize))
            let getColorSpace = pixelMap.getColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image types are not supported.")
            @Expect(e.code, 62980103)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }
}
