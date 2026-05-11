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
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.graphics.color_space_manager.*
import kit.PerformanceAnalysisKit.*

@Test
class testCreateColor_CustomizeTwo_1 {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_80000
     * @tc.name      : TestCase_799
     * @tc.desc      : test color_manager create.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_799(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_799 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.000000f32,  0.000000f32,  0.000000f32,
             0.000000f32,  0.000000f32,  0.000000f32,  0.000000f32,
            0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -1.400000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -1.400000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_80100
     * @tc.name      : TestCase_800
     * @tc.desc      : test color_manager create.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_800(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_800 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.000000f32,  0.000000f32,  0.000000f32,
             0.000000f32,  0.000000f32,  0.000000f32,  0.000000f32,
            0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_800 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_80200
     * @tc.name      : TestCase_801
     * @tc.desc      : test color_manager create.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_801 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.000000f32,  0.000000f32,  0.000000f32,
             0.000000f32,  0.000000f32,  0.000000f32,  0.000000f32,
            0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 3.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 3.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_801 ends.")
    }
}
