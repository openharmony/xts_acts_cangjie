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
class testPixelMap_crop_1 {
    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  1i32), 0i32, 0i32))
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
            pixelMap.crop(Region(Size(1i32, 1i32), 0i32, 0i32))
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  1i32), 5i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(32i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Opaque, editable: false,
                    srcPixelFormat: PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgb565,
                    scaleMode: ScaleMode.CenterCrop))
            pixelMap.crop(Region(Size(2i32, 1i32), 5i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  1i32), 10i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Premul, editable: true,
                    srcPixelFormat: PixelMapFormat.Rgb565, pixelFormat: PixelMapFormat.Rgba8888,
                    scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 1i32), 10i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  1i32), 0i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.UnPremul, editable: true,
                    pixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 1i32), 0i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  1i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Rgb888, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(1i32, 1i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  2i32), 10i32, 2i32))
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
            pixelMap.crop(Region(Size(1i32, 2i32), 10i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  1i32), 0i32, 4i32))
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
            pixelMap.crop(Region(Size(3i32, 1i32), 0i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  2i32), 5i32, 4i32))
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
            pixelMap.crop(Region(Size(1i32, 2i32), 5i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  2i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(1i32, 2i32), 0i32, 0i32))
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  2i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 2i32), 0i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  2i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 2i32), 0i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  3i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(1i32, 3i32), 0i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  3i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 3i32), 0i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  3i32), 0i32, 0i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 3i32), 0i32, 0i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  1i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 1i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  2i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 2i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  2i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 2i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  3i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(1i32, 3i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  3i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 3i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  3i32), 5i32, 2i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 3i32), 5i32, 2i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  1i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 1i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  2i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 2i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  2i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 2i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : PixelMap.crop(Region(Size( 1i32,  3i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(1i32, 3i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : PixelMap.crop(Region(Size( 2i32,  3i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(2i32, 3i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_crop_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : PixelMap.crop(Region(Size( 3i32,  3i32), 10i32, 4i32))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
                InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true,
                    pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize))
            pixelMap.crop(Region(Size(3i32, 3i32), 10i32, 4i32))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Cropping exceptions.")
            @Expect(e.code, 62980109i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }
}
