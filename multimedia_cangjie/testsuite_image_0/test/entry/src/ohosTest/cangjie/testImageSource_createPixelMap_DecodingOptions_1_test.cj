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

@Test
class testImageSource_createPixelMap_DecodingOptions_1 {
    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 1i32,  1i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(1i32, 1i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 1u32, editable: false, desiredSize: Size( 2i32,  1i32), desiredRegion: Region(Size( 2i32,  1i32), 5i32, 0i32), desiredPixelFormat: PixelMapFormat.Rgb565, index: 1u32, fitDensity: 1i32, desiredColorSpace: create(ColorSpace.ADOBE_RGB_1998))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.jpg")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 1u32, editable: false, desiredSize: Size(2i32, 1i32),
                    desiredRegion: Region(Size(2i32, 1i32), 5i32, 0i32), desiredPixelFormat: PixelMapFormat.Rgb565,
                    index: 1u32, fitDensity: 1i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 3i32,  1i32), desiredRegion: Region(Size( 3i32,  1i32), 10i32, 0i32), desiredPixelFormat: PixelMapFormat.Rgba8888, index: 2u32, fitDensity: 2i32, desiredColorSpace: create(ColorSpace.DCI_P3))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.bmp")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(3i32, 1i32),
                    desiredRegion: Region(Size(3i32, 1i32), 10i32, 0i32), desiredPixelFormat: PixelMapFormat.Rgba8888,
                    index: 2u32, fitDensity: 2i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  2i32), desiredRegion: Region(Size( 2i32,  1i32), 0i32, 2i32), desiredPixelFormat: PixelMapFormat.Bgra8888, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.DISPLAY_P3))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.gif")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 2i32),
                    desiredRegion: Region(Size(2i32, 1i32), 0i32, 2i32), desiredPixelFormat: PixelMapFormat.Bgra8888,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 2i32,  2i32), desiredRegion: Region(Size( 1i32,  1i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Rgb888, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.SRGB))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.123")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(2i32, 2i32),
                    desiredRegion: Region(Size(1i32, 1i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Rgb888,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 3i32,  2i32), desiredRegion: Region(Size( 1i32,  2i32), 10i32, 2i32), desiredPixelFormat: PixelMapFormat.Alpha8, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.CUSTOM))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(3i32, 2i32),
                    desiredRegion: Region(Size(1i32, 2i32), 10i32, 2i32), desiredPixelFormat: PixelMapFormat.Alpha8,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  3i32), desiredRegion: Region(Size( 3i32,  1i32), 0i32, 4i32), desiredPixelFormat: PixelMapFormat.RgbaF16, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 3i32),
                    desiredRegion: Region(Size(3i32, 1i32), 0i32, 4i32), desiredPixelFormat: PixelMapFormat.RgbaF16,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 2i32,  3i32), desiredRegion: Region(Size( 1i32,  2i32), 5i32, 4i32), desiredPixelFormat: PixelMapFormat.Nv21, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(2i32, 3i32),
                    desiredRegion: Region(Size(1i32, 2i32), 5i32, 4i32), desiredPixelFormat: PixelMapFormat.Nv21,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 3i32,  3i32), desiredRegion: Region(Size( 1i32,  1i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Nv12, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(3i32, 3i32),
                    desiredRegion: Region(Size(1i32, 1i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Nv12,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 1i32,  2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(1i32, 2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 2i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 1i32,  3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(1i32, 3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 3i32), 0i32, 0i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  1i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 1i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  2i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 2i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  2i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 2i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 1i32,  3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(1i32, 3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 3i32), 5i32, 2i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  1i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 1i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  2i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 2i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  2i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 2i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 1i32,  3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(1i32, 3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 2i32,  3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(2i32, 3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_DecodingOptions_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Create a PixelMap object by using image decoding parameters. ImageSource.createPixelMap(options!: "DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size( 1i32,  1i32), desiredRegion: Region(Size( 3i32,  3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown, index: 0u32, fitDensity: 0i32, desiredColorSpace: create(ColorSpace.UNKNOWN))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            let createPixelMap = imageSource.createPixelMap(
                options: DecodingOptions(sampleSize: 1u32, rotate: 0u32, editable: true, desiredSize: Size(1i32, 1i32),
                    desiredRegion: Region(Size(3i32, 3i32), 10i32, 4i32), desiredPixelFormat: PixelMapFormat.Unknown,
                    index: 0u32, fitDensity: 0i32,))
            @Expect(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }
}
