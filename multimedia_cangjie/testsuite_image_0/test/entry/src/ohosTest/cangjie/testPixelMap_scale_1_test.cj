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
class testPixelMap_scale_1 {
    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
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
            InitializationOptions(Size(1i32, 1i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : PixelMap.scale(0.500000, 0.500000)
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
            InitializationOptions(Size(2i32, 1i32), alphaType: AlphaType.Opaque, editable: false,
                pixelFormat: PixelMapFormat.Rgb565, scaleMode: ScaleMode.CenterCrop))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.500000f32, 0.500000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : PixelMap.scale(1.000000, 1.000000)
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
            InitializationOptions(Size(3i32, 1i32), alphaType: AlphaType.Premul, editable: true,
                pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(1.000000f32, 1.000000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
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
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(2i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Rgb888, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
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
            InitializationOptions(Size(3i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
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
            InitializationOptions(Size(1i32, 3i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.RgbaF16, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(2i32, 3i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Nv21, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_scale_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : PixelMap.scale(0.100000, 0.100000)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "define local variable pixelMap")
        let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
            InitializationOptions(Size(3i32, 3i32), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Nv12, scaleMode: ScaleMode.FitTargetSize))
        Hilog.info(0, "cangjietest", "scale")
        pixelMap.scale(0.100000f32, 0.100000f32)
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }
}
