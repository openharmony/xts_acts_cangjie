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
class testCreateColor_Customize_3 {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23200
     * @tc.name      : TestCase_231
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_231 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23300
     * @tc.name      : TestCase_232
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_232 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23400
     * @tc.name      : TestCase_233
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_233 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23500
     * @tc.name      : TestCase_234
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_234 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23600
     * @tc.name      : TestCase_235
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_235 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23700
     * @tc.name      : TestCase_236
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_236 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23800
     * @tc.name      : TestCase_237
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_237 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_23900
     * @tc.name      : TestCase_238
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_238 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24000
     * @tc.name      : TestCase_239
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_239 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24100
     * @tc.name      : TestCase_240
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_240 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24200
     * @tc.name      : TestCase_241
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_241 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24300
     * @tc.name      : TestCase_242
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_242 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24400
     * @tc.name      : TestCase_243
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_243 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24500
     * @tc.name      : TestCase_244
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_244 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24600
     * @tc.name      : TestCase_245
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_245 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24700
     * @tc.name      : TestCase_246
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_246 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24800
     * @tc.name      : TestCase_247
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_247 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_24900
     * @tc.name      : TestCase_248
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_248 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25000
     * @tc.name      : TestCase_249
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_249 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25100
     * @tc.name      : TestCase_250
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_250 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25200
     * @tc.name      : TestCase_251
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_251 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25300
     * @tc.name      : TestCase_252
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_252 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25400
     * @tc.name      : TestCase_253
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_253 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25500
     * @tc.name      : TestCase_254
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_254 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25600
     * @tc.name      : TestCase_255
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_255 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25700
     * @tc.name      : TestCase_256
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_256 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25800
     * @tc.name      : TestCase_257
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_257 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_25900
     * @tc.name      : TestCase_258
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_258 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26000
     * @tc.name      : TestCase_259
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_259 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26100
     * @tc.name      : TestCase_260
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_260 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26200
     * @tc.name      : TestCase_261
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_261 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26300
     * @tc.name      : TestCase_262
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_262 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26400
     * @tc.name      : TestCase_263
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_263 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26500
     * @tc.name      : TestCase_264
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_264 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26600
     * @tc.name      : TestCase_265
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_265 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26700
     * @tc.name      : TestCase_266
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_266 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26800
     * @tc.name      : TestCase_267
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_267 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_26900
     * @tc.name      : TestCase_268
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_268 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27000
     * @tc.name      : TestCase_269
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_269 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27100
     * @tc.name      : TestCase_270
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_270 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27200
     * @tc.name      : TestCase_271
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_271 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27300
     * @tc.name      : TestCase_272
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_272 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27400
     * @tc.name      : TestCase_273
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_273 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27500
     * @tc.name      : TestCase_274
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_274 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27600
     * @tc.name      : TestCase_275
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_275 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27700
     * @tc.name      : TestCase_276
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_276 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27800
     * @tc.name      : TestCase_277
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_277 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_27900
     * @tc.name      : TestCase_278
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_278 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28000
     * @tc.name      : TestCase_279
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_279 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28100
     * @tc.name      : TestCase_280
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_280 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28200
     * @tc.name      : TestCase_281
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_281 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28300
     * @tc.name      : TestCase_282
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_282 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28400
     * @tc.name      : TestCase_283
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_283 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28500
     * @tc.name      : TestCase_284
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_284 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28600
     * @tc.name      : TestCase_285
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_285 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28700
     * @tc.name      : TestCase_286
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_286 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28800
     * @tc.name      : TestCase_287
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_287 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_28900
     * @tc.name      : TestCase_288
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_288 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29000
     * @tc.name      : TestCase_289
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_289 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29100
     * @tc.name      : TestCase_290
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_290 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29200
     * @tc.name      : TestCase_291
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_291 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29300
     * @tc.name      : TestCase_292
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_292 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29400
     * @tc.name      : TestCase_293
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_293 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29500
     * @tc.name      : TestCase_294
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_294 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29600
     * @tc.name      : TestCase_295
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_295 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29700
     * @tc.name      : TestCase_296
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_296 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29800
     * @tc.name      : TestCase_297
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_297 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_29900
     * @tc.name      : TestCase_298
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_298 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30000
     * @tc.name      : TestCase_299
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_299 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30100
     * @tc.name      : TestCase_300
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_300 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_300 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30200
     * @tc.name      : TestCase_301
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_301 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30300
     * @tc.name      : TestCase_302
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_302 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30400
     * @tc.name      : TestCase_303
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_303 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30500
     * @tc.name      : TestCase_304
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_304 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30600
     * @tc.name      : TestCase_305
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_305 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30700
     * @tc.name      : TestCase_306
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_306 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30800
     * @tc.name      : TestCase_307
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_307 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_30900
     * @tc.name      : TestCase_308
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_308 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31000
     * @tc.name      : TestCase_309
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_309 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31100
     * @tc.name      : TestCase_310
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_310 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31200
     * @tc.name      : TestCase_311
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_311 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31300
     * @tc.name      : TestCase_312
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_312 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31400
     * @tc.name      : TestCase_313
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_313 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31500
     * @tc.name      : TestCase_314
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_314 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31600
     * @tc.name      : TestCase_315
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_315 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31700
     * @tc.name      : TestCase_316
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_316 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31800
     * @tc.name      : TestCase_317
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_317 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_31900
     * @tc.name      : TestCase_318
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_318 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32000
     * @tc.name      : TestCase_319
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_319 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32100
     * @tc.name      : TestCase_320
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_320 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32200
     * @tc.name      : TestCase_321
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_321 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32300
     * @tc.name      : TestCase_322
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_322 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32400
     * @tc.name      : TestCase_323
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_323 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32500
     * @tc.name      : TestCase_324
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_324 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32600
     * @tc.name      : TestCase_325
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_325 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32700
     * @tc.name      : TestCase_326
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_326 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32800
     * @tc.name      : TestCase_327
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_327 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_32900
     * @tc.name      : TestCase_328
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_328 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33000
     * @tc.name      : TestCase_329
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_329 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33100
     * @tc.name      : TestCase_330
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_330 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest", "define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest", "define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest", "testcase TestCase_330 ends.")
    }
}
