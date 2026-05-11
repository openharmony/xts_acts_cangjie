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
class Test_ColorSpaceManager_01 {
    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0100
    * @tc.name      : test_creat_colorSpaceManager_01
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_01(): Unit {
        var colorSpaceName = ColorSpace.Unknown
        try {
            let colorSpaceManager = create(colorSpaceName)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "[ColorSpaceManager] create: Parameter value is abnormal. Cannot create color manager object using ApiColorSpaceType 5")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0200
    * @tc.name      : test_creat_colorSpaceManager_02
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_02
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_02(): Unit {
        var color_manager: ColorSpaceManager
        var colorSpaceName = Custom
        try {
            color_manager = create(colorSpaceName)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message.toString(), "[ColorSpaceManager] create: Parameter value is abnormal. Cannot create color manager object using ApiColorSpaceType 5")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0300
    * @tc.name      : test_creat_colorSpaceManager_03
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_03
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_03(): Unit {
        var colorSpaceName = AdobeRgb1998
        var color_manager = create(colorSpaceName)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.AdobeRgb1998")
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, 2.200000)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.312700, 0.329000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0400
    * @tc.name      : test_creat_colorSpaceManager_04
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_04
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_04(): Unit {
        var color_manager: ColorSpaceManager
        var colorSpaceName = DciP3
        color_manager = create(colorSpaceName)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.DciP3")
        color_manager = create(colorSpaceName)
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, 2.600000)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.314000, 0.351000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0500
    * @tc.name      : test_creat_colorSpaceManager_05
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_05(): Unit {
        var colorSpaceName = DisplayP3
        var color_manager = create(colorSpaceName)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.DisplayP3")
        color_manager = create(colorSpaceName)
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, 2.400000)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.312700, 0.329000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0600
    * @tc.name      : test_creat_colorSpaceManager_06
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_06(): Unit {
        var color_manager: ColorSpaceManager
        var colorSpaceName = Srgb
        color_manager = create(colorSpaceName)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.Srgb")
        color_manager = create(colorSpaceName)
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, 2.400000)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.312700, 0.329000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0700
    * @tc.name      : test_creat_colorSpaceManager_07
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_07(): Unit {
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( 0.1,  0.1,  0.2,  0.2,  0.3,  0.3,
             0.4,  0.4)
        var gamma: Float32 = 1.0
        color_manager = create(primaries, gamma)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.Custom")
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, gamma)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.400000, 0.400000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0800
    * @tc.name      : test_creat_colorSpaceManager_08
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_08(): Unit {
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( 0.0,  0.0,  0.0,  0.0,  0.0,  0.0,
             0.0,  0.0)
        var gamma: Float32 = 0.0
        color_manager = create(primaries, gamma)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.Custom")
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, gamma)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[0.000000, 0.000000]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_ColorSpace_Test_ColorSpaceManager_01_0900
    * @tc.name      : test_creat_colorSpaceManager_09
    * @tc.desc      : test ColorSpace test_creat_colorSpaceManager_09
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]

        func test_creat_colorSpaceManager_09(): Unit {
        var color_manager: ColorSpaceManager
        var primaries = ColorSpacePrimaries( -1.0,  0.0,  0.0,  0.0,  0.0,  0.0,
             -1.0,  0.0)
        var gamma: Float32 = -1.0
        color_manager = create(primaries, gamma)
        var getSpaceName = color_manager.getColorSpaceType()
        @Expect(getSpaceName.toString(), "ColorSpace.Custom")
        var getGamma = color_manager.getGamma()
        @Expect(getGamma, gamma)
        var pointArr: Array<Float32> = color_manager.getWhitePoint()
        @Expect(pointArr.toString(), "[-1.000000, 0.000000]")
    }
}
