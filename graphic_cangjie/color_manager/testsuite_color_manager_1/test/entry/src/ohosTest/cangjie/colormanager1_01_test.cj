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

internal import kit.AbilityKit.*
internal import kit.ArkGraphics2D.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.graphics.color_space_manager.*
import ohos.base.*

@Test
class Test_color_manager {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_manager_0100
    * @tc.name      : test_getColorSpaceName
    * @tc.desc      : test ArkGraphics2D getColorSpaceType
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getColorSpaceName() {
        try {
            let colorSpaceManagerInstance = create(ColorSpace.Srgb)
            let colorSpace: ColorSpace = colorSpaceManagerInstance.getColorSpaceType()
            @Expect(colorSpace.toString(), "ColorSpace.Srgb")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_manager_0200
    * @tc.name      : test_getWhitePoint
    * @tc.desc      : test ArkGraphics2D getWhitePoint
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getWhitePoint() {
        try {
            let colorSpaceManagerInstance = create(
                ColorSpacePrimaries( 1.0,  1.0,  1.0,  1.0,  1.0,  1.0,
                     1.0,  1.0), 0.1)
            let colorSpaceArray = colorSpaceManagerInstance.getWhitePoint()
            @Expect(colorSpaceArray[0], 1.0)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_manager_0300
    * @tc.name      : test_getGamma
    * @tc.desc      : test ArkGraphics2D getGamma
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getGamma() {
        try {
            let colorSpaceManagerInstance = create(
                ColorSpacePrimaries( 1.0,  1.0,  1.0,  1.0,  1.0,  1.0,
                     1.0,  1.0), 0.1)
            let gamma = colorSpaceManagerInstance.getGamma()
            @Expect(gamma, 0.1)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_manager_0400
    * @tc.name      : test_checkRet
    * @tc.desc      : test ArkGraphics2D getGamma
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_checkRet() {
        try {
            let colorSpaceManagerInstance = create(
                ColorSpacePrimaries( 1.0,  1.0,  1.0,  1.0,  1.0,  1.0,
                     1.0,  1.0), -1.0)
            let gamma = colorSpaceManagerInstance.getGamma()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
