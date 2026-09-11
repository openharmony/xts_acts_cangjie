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

@Test
class testPixelMap_createAlphaPixelmap_1 {
    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true, pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize, size: Size( 1i32,  1i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Opaque, editable: false, srcPixelFormat:PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgb565, scaleMode: ScaleMode.CenterCrop, size: Size( 2i32,  1i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(32i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Opaque, editable: false,
                srcPixelFormat: PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgb565,
                scaleMode: ScaleMode.CenterCrop))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Premul, editable: true,srcPixelFormat:PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize, size: Size( 3i32,  1i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Premul, editable: true,
                srcPixelFormat: PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgba8888,
                scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.UnPremul, editable: true, pixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize, size: Size( 1i32,  2i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.UnPremul, editable: true,
                pixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true, pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize, size: Size( 3i32,  2i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_createAlphaPixelmap_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Generate a PixelMap containing only the alpha channel information. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true, pixelFormat: PixelMapFormat.RgbaF16, scaleMode: ScaleMode.FitTargetSize, size: Size( 1i32,  3i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.RgbaF16, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "define local variable alphaPixelmap")
        let alphaPixelmap = pixelMap.createAlphaPixelMap()
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }
}
