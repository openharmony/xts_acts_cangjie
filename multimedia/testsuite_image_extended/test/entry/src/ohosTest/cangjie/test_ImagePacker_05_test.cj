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
import std.posix.*
import ohos.business_exception.BusinessException

@Test
class Test_ImagePacker_05 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0100
     * @tc.name      : test_createImagePacker_01
     * @tc.desc      : test Image test_createImagePacker_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createImagePacker_01(): Unit {
        var globalPacker: ImagePacker
        globalPacker = createImagePacker()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0200
     * @tc.name      : test_packing_02
     * @tc.desc      : test Image test_packing_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_02(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/Jpeg", 99, bufferSize: 10485760)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(ret.size>0)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0300
     * @tc.name      : test_packing_03
     * @tc.desc      : test Image test_packing_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_03(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/Jpeg", 100)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(ret.size>0)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0400
     * @tc.name      : test_packing_04
     * @tc.desc      : test Image test_packing_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_04(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPacker = createImagePacker()
            var pack_opts = PackingOption("image/Jpeg", 101)
            var ret = globalPacker.packToData(globalPixelMap, pack_opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0500
     * @tc.name      : test_packing_05
     * @tc.desc      : test Image test_packing_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_05(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/png", 1)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0600
     * @tc.name      : test_packing_06
     * @tc.desc      : test Image test_packing_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_06(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/webp", 2)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0700
     * @tc.name      : test_packing_07
     * @tc.desc      : test Image test_packing_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_07(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/gif", 2)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0800
     * @tc.name      : test_packing_08
     * @tc.desc      : test Image test_packing_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_08(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/Jpeg", 0)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_0900
     * @tc.name      : test_packing_09
     * @tc.desc      : test Image test_packing_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_09(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPacker = createImagePacker()
            var pack_opts = PackingOption("image/txt", 1)
            var ret = globalPacker.packToData(globalPixelMap, pack_opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_1000
     * @tc.name      : test_packing_10
     * @tc.desc      : test Image test_packing_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packing_10(): Unit {
        try {
            var globalPacker: ImagePacker
            var globalImageSource: ImageSource
            globalImageSource = createImageSource("//data/storage/el1/base/test.jpg")
            globalPacker = createImagePacker()
            var pack_opts = PackingOption("image/Jpeg", 50)
            var ret = globalPacker.packToData(globalImageSource, pack_opts)
            @Expect(ret.size != 0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_1100
     * @tc.name      : test_PackToFile_11
     * @tc.desc      : test Image test_PackToFile_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PackToFile_11(): Unit {
        var globalPacker: ImagePacker
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var fd: Int32 = 0
        fd = `open`("//data/storage/el1/base/mapDst.jpg", O_RDWR)
        globalPixelMap = createPixelMap(color, opts)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/webp", 2)
        var ret = globalPacker.packToData(globalPixelMap, pack_opts)
        @Expect(ret.size != 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_1200
     * @tc.name      : test_PackToFile_12
     * @tc.desc      : test Image test_PackToFile_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PackToFile_12(): Unit {
        try {
            var globalPacker: ImagePacker
            var globalImageSource: ImageSource
            var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
            var fd: Int32 = 0
            fd = `open`("//data/storage/el1/base/mapDst.jpg", O_RDWR)
            globalImageSource = createImageSource("//data/storage/el1/base/test.jpg")
            globalPacker = createImagePacker()
            var pack_opts = PackingOption("image/Jpeg", 50)
            var ret = globalPacker.packToData(globalImageSource, pack_opts)
            @Expect(ret.size != 0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_1300
     * @tc.name      : test_PackToFile_13
     * @tc.desc      : test Image test_PackToFile_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PackToFile_13(): Unit {
        var globalPacker: ImagePacker
        var globalImageSource: ImageSource
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var fd: Int32 = 0
        fd = `open`("//data/storage/el1/base/mapDst.jpg", O_RDWR)
        globalImageSource = createImageSource(JPG_Buf)
        globalPacker = createImagePacker()
        var pack_opts = PackingOption("image/Jpeg", 50)
        var ret = globalPacker.packToData(globalImageSource, pack_opts)
        @Expect(ret.size != 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImagePacker_05_1400
     * @tc.name      : test_ImagePacker_release_14
     * @tc.desc      : test Image test_ImagePacker_release_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImagePacker_release_14(): Unit {
        var globalPacker: ImagePacker
        globalPacker = createImagePacker()
        globalPacker.release()
        @Expect(true)
    }
}
