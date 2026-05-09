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
class Test_createPixelMap_01 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0100
     * @tc.name      : test_createPixelMap_01
     * @tc.desc      : test Image test_createPixelMap_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_01(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,
            scaleMode: ScaleMode.CenterCrop, alphaType: AlphaType.Unknown)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0200
     * @tc.name      : test_createPixelMap_02
     * @tc.desc      : test Image test_createPixelMap_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_02(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,
            scaleMode: ScaleMode.CenterCrop, alphaType: AlphaType.Opaque)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0300
     * @tc.name      : test_createPixelMap_03
     * @tc.desc      : test Image test_createPixelMap_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_03(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,
            scaleMode: ScaleMode.FitTargetSize, alphaType: AlphaType.Premul)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0400
     * @tc.name      : test_createPixelMap_04
     * @tc.desc      : test Image test_createPixelMap_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_04(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,
            scaleMode: ScaleMode.FitTargetSize, alphaType: AlphaType.UnPremul)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0500
     * @tc.name      : test_createPixelMap_05
     * @tc.desc      : test Image test_createPixelMap_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_05(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0600
     * @tc.name      : test_createPixelMap_06
     * @tc.desc      : test Image test_createPixelMap_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_06(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: false, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0700
     * @tc.name      : test_createPixelMap_07
     * @tc.desc      : test Image test_createPixelMap_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_07(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0800
     * @tc.name      : test_createPixelMap_08
     * @tc.desc      : test Image test_createPixelMap_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_08(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: false, pixelFormat: PixelMapFormat.Rgb565)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_0900
     * @tc.name      : test_createPixelMap_09
     * @tc.desc      : test Image test_createPixelMap_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_09(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Unknown)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1000
     * @tc.name      : test_createPixelMap_10
     * @tc.desc      : test Image test_createPixelMap_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_10(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1100
     * @tc.name      : test_createPixelMap_11
     * @tc.desc      : test Image test_createPixelMap_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_11(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(2, 3), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1200
     * @tc.name      : test_createPixelMap_12
     * @tc.desc      : test Image test_createPixelMap_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap_12(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(-1, -1), editable: true, pixelFormat: PixelMapFormat.Unknown)
        try {
            globalPixelMap = createPixelMap(color, opts)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1300
     * @tc.name      : test_PixelMap_opacity_13
     * @tc.desc      : test Image test_PixelMap_opacity_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_opacity_13(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var rate: Float32 = 0.5
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.opacity(rate)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1400
     * @tc.name      : test_PixelMap_opacity_14
     * @tc.desc      : test Image test_PixelMap_opacity_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_opacity_14(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var rate: Float32 = -0.5
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.opacity(rate)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image types are not supported.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1500
     * @tc.name      : test_PixelMap_scale_15
     * @tc.desc      : test Image test_PixelMap_scale_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_scale_15(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var scaleX: Float32 = 2.0
        var scaleY: Float32 = 0.5
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.scale(scaleX, scaleY)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 3)
            @Expect(imageInfo.size.width, 16)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1600
     * @tc.name      : test_PixelMap_scale_16
     * @tc.desc      : test Image test_PixelMap_scale_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_scale_16(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var scaleX: Float32 = 0.0
        var scaleY: Float32 = 0.0
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.scale(scaleX, scaleY)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 4)
            @Expect(imageInfo.size.width, 6)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1700
     * @tc.name      : test_PixelMap_scale_17
     * @tc.desc      : test Image test_PixelMap_scale_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_scale_17(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var scaleX: Float32 = -1.0
        var scaleY: Float32 = -0.5
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.scale(scaleX, scaleY)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 2)
            @Expect(imageInfo.size.width, 6)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1800
     * @tc.name      : test_PixelMap_rotate_18
     * @tc.desc      : test Image test_PixelMap_rotate_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_rotate_18(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var angle: Float32 = 90.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.rotate(angle)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 4)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_1900
     * @tc.name      : test_PixelMap_rotate_19
     * @tc.desc      : test Image test_PixelMap_rotate_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_rotate_19(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var angle: Float32 = -90.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.rotate(angle)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 4)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2000
     * @tc.name      : test_PixelMap_rotate_20
     * @tc.desc      : test Image test_PixelMap_rotate_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_rotate_20(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var angle: Float32 = 0.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.rotate(angle)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 4)
            @Expect(imageInfo.size.width, 6)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2100
     * @tc.name      : test_PixelMap_rotate_21
     * @tc.desc      : test Image test_PixelMap_rotate_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_rotate_21(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        var angle: Float32 = 3600.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.rotate(angle)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 4)
            @Expect(imageInfo.size.width, 6)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2200
     * @tc.name      : test_PixelMap_translate_22
     * @tc.desc      : test Image test_PixelMap_translate_22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_translate_22(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var tran_x: Float32 = 2.0
        var tran_y: Float32 = 3.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.translate(tran_x, tran_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 9)
            @Expect(imageInfo.size.width, 10)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2300
     * @tc.name      : test_PixelMap_translate_23
     * @tc.desc      : test Image test_PixelMap_translate_23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_translate_23(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var tran_x: Float32 = 0.0
        var tran_y: Float32 = 0.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.translate(tran_x, tran_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 8)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2400
     * @tc.name      : test_PixelMap_translate_24
     * @tc.desc      : test Image test_PixelMap_translate_24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_translate_24(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var tran_x: Float32 = -1.0
        var tran_y: Float32 = -3.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.translate(tran_x, tran_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 3)
            @Expect(imageInfo.size.width, 7)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2500
     * @tc.name      : test_PixelMap_translate_25
     * @tc.desc      : test Image test_PixelMap_translate_25
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_translate_25(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var tran_x: Float32 = -10.0
        var tran_y: Float32 = -8.0

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.translate(tran_x, tran_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 8)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2600
     * @tc.name      : test_PixelMap_flip_26
     * @tc.desc      : test Image test_PixelMap_flip_26
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_flip_26(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var flip_x: Bool = true
        var flip_y: Bool = true

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.flip(flip_x, flip_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 8)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2700
     * @tc.name      : test_PixelMap_flip_27
     * @tc.desc      : test Image test_PixelMap_flip_27
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_flip_27(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var flip_x: Bool = false
        var flip_y: Bool = true

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.flip(flip_x, flip_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 8)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2800
     * @tc.name      : test_PixelMap_flip_28
     * @tc.desc      : test Image test_PixelMap_flip_28
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_flip_28(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var flip_x: Bool = false
        var flip_y: Bool = false

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.flip(flip_x, flip_y)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 6)
            @Expect(imageInfo.size.width, 8)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_2900
     * @tc.name      : test_PixelMap_crop_29
     * @tc.desc      : test Image test_PixelMap_crop_29
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_29(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, 3), 1, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            var imageInfo = globalPixelMap.getImageInfo()
            @Expect(imageInfo.size.height, 3)
            @Expect(imageInfo.size.width, 3)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3000
     * @tc.name      : test_PixelMap_crop_30
     * @tc.desc      : test Image test_PixelMap_crop_30
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_30(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, 3), -1, 1)
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3100
     * @tc.name      : test_PixelMap_crop_31
     * @tc.desc      : test Image test_PixelMap_crop_31
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_31(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, 3), 1, -1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3200
     * @tc.name      : test_PixelMap_crop_32
     * @tc.desc      : test Image test_PixelMap_crop_32
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_32(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(-3, 3), 1, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3300
     * @tc.name      : test_PixelMap_crop_33
     * @tc.desc      : test Image test_PixelMap_crop_33
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_33(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, -3), 1, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3400
     * @tc.name      : test_PixelMap_crop_34
     * @tc.desc      : test Image test_PixelMap_crop_34
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_34(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(10, 11), 1, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3500
     * @tc.name      : test_PixelMap_crop_35
     * @tc.desc      : test Image test_PixelMap_crop_35
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_35(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, 3), 8, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3600
     * @tc.name      : test_PixelMap_crop_36
     * @tc.desc      : test Image test_PixelMap_crop_36
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_crop_36(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: false, pixelFormat: PixelMapFormat.Rgb565)
        var region = Region(Size(3, 3), 1, 1)

        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.crop(region)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3700
     * @tc.name      : test_createAlphaPixelmap_37
     * @tc.desc      : test Image test_createAlphaPixelmap_37
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createAlphaPixelmap_37(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Bgra8888)
        var alphaPixelMap: PixelMap

        try {
            globalPixelMap = createPixelMap(color, opts)
            alphaPixelMap = globalPixelMap.createAlphaPixelMap()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3800
     * @tc.name      : test_getImageInfo_38
     * @tc.desc      : test Image test_getImageInfo_38
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getImageInfo_38(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(6, 8), editable: true, pixelFormat: PixelMapFormat.Rgb565)

        globalPixelMap = createPixelMap(color, opts)
        let imageInfo = globalPixelMap.getImageInfo()
        @Expect(imageInfo.size.height, 6)
        @Expect(imageInfo.size.width, 8)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_3900
     * @tc.name      : test_getImageInfo_39
     * @tc.desc      : test Image test_getImageInfo_39
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getImageInfo_39(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let expectNum: UInt32 = 24

        globalPixelMap = createPixelMap(color, opts)
        let num = globalPixelMap.getBytesNumberPerRow()
        @Expect(expectNum, num)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_4000
     * @tc.name      : test_getImageInfo_40
     * @tc.desc      : test Image test_getImageInfo_40
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getImageInfo_40(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let expectNum: UInt32 = 96

        globalPixelMap = createPixelMap(color, opts)
        let num = globalPixelMap.getPixelBytesNumber()
        @Expect(expectNum, num)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_4100
     * @tc.name      : test_PixelMap_release_41
     * @tc.desc      : test Image test_PixelMap_release_41
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_release_41(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)

        globalPixelMap = createPixelMap(color, opts)
        try {
            globalPixelMap.release()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createPixelMap_01_4200
     * @tc.name      : test_createpm_rotate_fuzz
     * @tc.desc      : test Image test_createpm_rotate_fuzz
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createpm_rotate_fuzz() {
        let JPG_Buf: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        let newImageSource = createImageSource(JPG_Buf)
        let rotate: UInt32 = 8193
        let option = DecodingOptions(
            sampleSize: 1,
            rotate: rotate,
            editable: true,
            desiredSize: Size(0, 0),
            desiredRegion: Region(Size(3, 4), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgba8888,
            index: 0,
            fitDensity: 1
        )
        try {
            newImageSource.createPixelMap(options: option)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980115)
            @Expect(e.message, "Invalid rotate ${rotate}")
        }
    }
}
