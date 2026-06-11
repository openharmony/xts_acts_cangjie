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
class testCreateImageSource_Int32_SourceOptions_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 1i32,  1i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create an ImageSource instance, createImageSource("-114514", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 1i32,  1i32))")
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
            let imageSource = createImageSource(-114514i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create an ImageSource instance, createImageSource("-1", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 1i32,  1i32))")
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
            let imageSource = createImageSource(-1i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Create an ImageSource instance, createImageSource("0", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 2i32,  1i32))")
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
            let imageSource = createImageSource(0i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Create an ImageSource instance, createImageSource("1", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 2i32,  1i32))")
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
            let imageSource = createImageSource(1i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Create an ImageSource instance, createImageSource("114514", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 2i32,  1i32))")
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
            let imageSource = createImageSource(114514i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Create an ImageSource instance, createImageSource("2147483647", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 3i32,  1i32))")
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
            let imageSource = createImageSource(2147483647i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 3i32,  1i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 3i32,  1i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 1i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 1i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 1i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 2i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 2i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 2i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 3i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 3i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 3i32,  2i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 1i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 1i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 1i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 2i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 2i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 2i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 3i32,  3i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 1i32,  1i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 2i32,  1i32))")
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
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 1i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(1i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 2i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(2i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 1i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 1i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 1i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 1i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 1i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(1i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 2i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 2i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 2i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 2i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 2i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(2i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 3i32,  1i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(3i32, 1i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 1i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(1i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_55 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 2i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_57 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(2i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_58 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_59 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_60 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_61 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 3i32,  2i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_63 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(3i32, 2i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_64 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_65 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_66 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_67 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 1i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_69 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(1i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_70 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_71 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb565, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_73 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size( 2i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_75 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv12, sourceSize: Size(2i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_76 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_77 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Bgra8888, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_78 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Rgb888, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_79 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Alpha8, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_80 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.RgbaF16, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_SourceOptions_createImageSource_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648", "SourceOptions( 0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size( 3i32,  3i32))")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_81 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource(-2147483648i32,
                SourceOptions(0i32, sourcePixelFormat: PixelMapFormat.Nv21, sourceSize: Size(3i32, 3i32)))
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_81 ends.")
    }
}
