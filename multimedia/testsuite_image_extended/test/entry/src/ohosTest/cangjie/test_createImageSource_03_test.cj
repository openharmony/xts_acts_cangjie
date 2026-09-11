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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.ImageKit.*
import ohos.device_info.*
internal import ohos.business_exception.BusinessException
internal import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_createImageSource_03 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0100
     * @tc.name      : test_creatImageSource_01
     * @tc.desc      : test Image test_creatImageSource_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_01(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/test.jpg")
            image_info = globalImageSource.getImageInfo(index: 0)
            globalImageSource.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0200
     * @tc.name      : test_creatImageSource_02
     * @tc.desc      : test Image test_creatImageSource_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_02(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/test.bmp")
            image_info = globalImageSource.getImageInfo()
            globalImageSource.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0300
     * @tc.name      : test_creatImageSource_03
     * @tc.desc      : test Image test_creatImageSource_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_03(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/test.gif")
            image_info = globalImageSource.getImageInfo(index: 0)
            globalImageSource.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0400
     * @tc.name      : test_creatImageSource_04
     * @tc.desc      : test Image test_creatImageSource_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_04(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/test.png")
            image_info = globalImageSource.getImageInfo()
            globalImageSource.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0500
     * @tc.name      : test_creatImageSource_05
     * @tc.desc      : test Image test_creatImageSource_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_05(): Unit {
        var globalImageSource: ImageSource
        try {
            globalImageSource = createImageSource("/data/storage/el1/base/test.123")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0600
     * @tc.name      : test_creatImageSource_06
     * @tc.desc      : test Image test_creatImageSource_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_06(): Unit {
        var globalImageSource: ImageSource
        var path: String = ""
        try {
            globalImageSource = createImageSource(path)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0700
     * @tc.name      : test_creatImageSource_07
     * @tc.desc      : test Image test_creatImageSource_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_07(): Unit {
        var globalImageSource: ImageSource
        var path: String = "file:///multimedia/test.jpg"
        try {
            globalImageSource = createImageSource(path)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0800
     * @tc.name      : test_creatImageSource_08
     * @tc.desc      : test Image test_creatImageSource_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_08(): Unit {
        var globalImageSource: ImageSource
        try {
            globalImageSource = createImageSource(-2)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_0900
     * @tc.name      : test_creatImageSource_09
     * @tc.desc      : test Image test_creatImageSource_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_09(): Unit {
        var globalImageSource: ImageSource
        globalImageSource = createImageSource(0)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1000
     * @tc.name      : test_creatImageSource_10
     * @tc.desc      : test Image test_creatImageSource_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_10(): Unit {
        var globalImageSource: ImageSource
        var opts = SourceOptions(120, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(6, 8))
        globalImageSource = createImageSource(0, opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1100
     * @tc.name      : test_creatImageSource_11
     * @tc.desc      : test Image test_creatImageSource_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_11(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        globalImageSource = createImageSource(buf)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1200
     * @tc.name      : test_creatImageSource_12
     * @tc.desc      : test Image test_creatImageSource_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_12(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(0, repeat: 0)
        try {
            globalImageSource = createImageSource(buf)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1300
     * @tc.name      : test_creatImageSource_13
     * @tc.desc      : test Image test_creatImageSource_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_13(): Unit {
        try {
            var globalImageSource: ImageSource
            var opts = SourceOptions(120, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(4, 6))
            globalImageSource = createImageSource("/data/storage/el1/base/test.jpg", opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1400
     * @tc.name      : test_creatImageSource_14
     * @tc.desc      : test Image test_creatImageSource_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_14(): Unit {
        try {
            var globalImageSource: ImageSource
            var opts = SourceOptions(120)
            globalImageSource = createImageSource("/data/storage/el1/base/test.webp", opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1500
     * @tc.name      : test_creatImageSource_15
     * @tc.desc      : test Image test_creatImageSource_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_15(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = SourceOptions(120)
        globalImageSource = createImageSource(buf, opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1600
     * @tc.name      : test_creatImageSource_16
     * @tc.desc      : test Image test_creatImageSource_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_16(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = SourceOptions(120, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(6, 8))
        globalImageSource = createImageSource(buf, opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1700
     * @tc.name      : test_creatImageSource_17
     * @tc.desc      : test Image test_creatImageSource_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_17(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(0, repeat: 0)
        var opts = SourceOptions(120, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(6, 8))
        try {
            globalImageSource = createImageSource(buf, opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1800
     * @tc.name      : test_ImageSource_getImageInfo_18
     * @tc.desc      : test Image test_ImageSource_getImageInfo_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getImageInfo_18(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/test.jpg")
            image_info = globalImageSource.getImageInfo()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_1900
     * @tc.name      : test_ImageSource_getImageInfo_19
     * @tc.desc      : test Image test_ImageSource_getImageInfo_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getImageInfo_19(): Unit {
        var globalImageSource: ImageSource
        var image_info: ImageInfo
        globalImageSource = createImageSource(JPG_Buf)
        image_info = globalImageSource.getImageInfo()
        @Expect(image_info.size.width, 472)
        @Expect(image_info.size.height, 226)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_2000
     * @tc.name      : test_creatImageSource_20
     * @tc.desc      : test Image test_creatImageSource_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_20(): Unit {
        var globalImageSource: ImageSource
        var buf: Array<UInt8> = Array<UInt8>(96, repeat: 5)
        var opts = SourceOptions(120, sourcePixelFormat: PixelMapFormat.Rgba8888, sourceSize: Size(6, 8))
        try {
            globalImageSource = createImageSource(buf, opts)
            var image_info = globalImageSource.getImageInfo(index: 0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Failed to create plugin.")
            @Expect(e.code, 62980118)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_2100
     * @tc.name      : test_ImageSource_GetInfo_21
     * @tc.desc      : test Image test_ImageSource_GetInfo_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_GetInfo_21(): Unit {
        try {
            var globalImageSource: ImageSource
            var image_info: ImageInfo
            globalImageSource = createImageSource("/data/storage/el1/base/EXIF.jpg")
            var Width = globalImageSource.getImageProperty(ImageWidth)
            var Length = globalImageSource.getImageProperty(ImageLength)
            @Expect(Width != "error")
            @Expect(Length != "error")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageSource_03_2200
     * @tc.name      : test_ImageSource_modify_22
     * @tc.desc      : test Image test_ImageSource_modify_22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_modify_22(): Unit {
        try {
            var globalImageSource = createImageSource("/data/storage/el1/base/EXIF.jpg")
            globalImageSource.modifyImageProperty(ImageWidth, "4096")
            globalImageSource.modifyImageProperty(ImageLength, "800")
            var Width = globalImageSource.getImageProperty(ImageWidth)
            var Length = globalImageSource.getImageProperty(ImageLength)
            @Expect(Width, "4096")
            @Expect(Length, "800")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }
}
