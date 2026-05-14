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

@Test
class Test_Image_release {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_Image_release_0100
     * @tc.name      : test_PixelMap_release_01
     * @tc.desc      : test Image test_PixelMap_release_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_release_01(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let scaleX: Float32 = 2.0
        let scaleY: Float32 = 1.0
        var globalPixelMap = createPixelMap(color, opts)
        try {
            globalPixelMap.release()
            globalPixelMap.scale(scaleX, scaleY)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_Image_release_0200
     * @tc.name      : test_ImageSource_release_02
     * @tc.desc      : test Image test_ImageSource_release_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_release_02(): Unit {
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: false,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(6, 8), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgb565,
            index: 0,
            fitDensity: 20
        )
        var globalImageSource = createImageSource(JPG_Buf)
        globalImageSource.release()
        try {
            var globalPixelMap = globalImageSource.createPixelMap(options: opts)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_Image_release_0300
     * @tc.name      : test_ImageSource_release_03
     * @tc.desc      : test Image test_ImageSource_release_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_release_03(): Unit {
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: false,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(6, 8), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgb565,
            index: 0,
            fitDensity: 20
        )
        var globalImageSource = createImageSource(JPG_Buf)
        globalImageSource.release()
        try {
            globalImageSource.getImageProperty(ImageLength)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_Image_release_0500
     * @tc.name      : test_packer_release_05
     * @tc.desc      : test Image test_packer_release_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_packer_release_05(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            var globalPixelMap = createPixelMap(color, opts)
            var globalPacker = createImagePacker()
            globalPacker.release()
            var pack_opts = PackingOption("image/Jpeg", 100)
            var ret = globalPacker.packToData(globalPixelMap, pack_opts)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }
}
