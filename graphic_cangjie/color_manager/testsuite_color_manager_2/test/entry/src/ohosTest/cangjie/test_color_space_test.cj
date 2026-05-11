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
import ohos.graphics.color_space_manager.*
import std.math.*
import ohos.multimedia.image.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*

@Test
class Test_ColorSpace_01 {

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0100
    * @tc.name      : test_getColorSpace_01
    * @tc.desc      : test ColorSpace test_getColorSpace_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_getColorSpace_01(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager

        try {
            color_manager = globalPixelMap.getColorSpace()
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image types are not supported.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0200
    * @tc.name      : test_setColorSpace_02
    * @tc.desc      : test ColorSpace test_setColorSpace_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_02(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var colorSpaceName = AdobeRgb1998
        color_manager = create(colorSpaceName)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.AdobeRgb1998")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, 2.200000)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.312700, 0.329000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0300
    * @tc.name      : test_setColorSpace_03
    * @tc.desc      : test ColorSpace test_setColorSpace_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_03(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var colorSpaceName = DciP3
        color_manager = create(colorSpaceName)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.DciP3")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, 2.600000)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.314000, 0.351000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0400
    * @tc.name      : test_setColorSpace_04
    * @tc.desc      : test ColorSpace test_setColorSpace_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_04(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var colorSpaceName = DisplayP3
        color_manager = create(colorSpaceName)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.DisplayP3")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, 2.400000)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.312700, 0.329000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    

    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0500
    * @tc.name      : test_setColorSpace_05
    * @tc.desc      : test ColorSpace test_setColorSpace_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_05(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var colorSpaceName = Srgb
        color_manager = create(colorSpaceName)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.Srgb")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, 2.400000)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.312700, 0.329000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0600
    * @tc.name      : test_setColorSpace_06
    * @tc.desc      : test ColorSpace test_setColorSpace_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_06(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( 0.1,  0.1,  0.2,  0.2,  0.3,  0.3,
             0.4,  0.4)
        var gamma: Float32 = 1.0
        color_manager = create(primaries, gamma)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.Custom")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, gamma)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.400000, 0.400000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0700
    * @tc.name      : test_setColorSpace_07
    * @tc.desc      : test ColorSpace test_setColorSpace_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_07(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries(0.1,  0.1,  0.2,  0.2,  0.3,  0.3,
             0.4,  0.4)
        var gamma: Float32 = 1.0
        color_manager = create(primaries, gamma)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.Custom")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, gamma)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.400000, 0.400000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    

    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0800
    * @tc.name      : test_applyColorSpace_08
    * @tc.desc      : test ColorSpace test_applyColorSpace_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_applyColorSpace_08(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( 0.1,  0.1,  0.2,  0.2,  0.3,  0.3,
             0.4,  0.4)
        var gamma: Float32 = 1.0
        color_manager = create(primaries, gamma)
        var getColorManager: ColorSpaceManager
        var targetColorSpace = create(AdobeRgb1998)

        try {
            globalPixelMap.setColorSpace(color_manager)
            globalPixelMap.applyColorSpace(targetColorSpace)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.AdobeRgb1998")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, gamma)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.400000, 0.400000]")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_0900
    * @tc.name      : test_applyColorSpace_09
    * @tc.desc      : test ColorSpace test_applyColorSpace_09
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_applyColorSpace_09(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( 0.1,  0.1,  0.2,  0.2,  0.3,  0.3,
             0.4,  0.4)
        var gamma: Float32 = 1.0
        color_manager = create(primaries, gamma)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.applyColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(getColorManager.getColorSpaceType().toString(), "ColorSpace.Custom")
            var getGamma = color_manager.getGamma()
            @Expect(getGamma, gamma)
            var pointArr: Array<Float32> = color_manager.getWhitePoint()
            @Expect(pointArr.toString(), "[0.400000, 0.400000]")
        } catch (e: Exception) {
            @Expect(e.message, " ")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpace_01_1000
    * @tc.name      : test_setColorSpace_12
    * @tc.desc      : test ColorSpace test_setColorSpace_12
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_setColorSpace_12(): Unit {
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888,  alphaType: AlphaType.Premul, srcPixelFormat: PixelMapFormat.Bgra8888, scaleMode: ScaleMode.FitTargetSize)
        var globalPixelMap: PixelMap = createPixelMap(color, opts)
        var color_manager: ColorSpaceManager
        var colorSpaceName = Srgb
        color_manager = create(colorSpaceName)
        var getColorManager: ColorSpaceManager

        try {
            globalPixelMap.release()
            globalPixelMap.setColorSpace(color_manager)
            getColorManager = globalPixelMap.getColorSpace()
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Image initialization abnormal.")
        }
    }
}
