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
class testCreateColor_Customize_4 {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33200
     * @tc.name      : TestCase_331
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_331 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33300
     * @tc.name      : TestCase_332
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_332 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33400
     * @tc.name      : TestCase_333
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_333 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33500
     * @tc.name      : TestCase_334
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_334 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33600
     * @tc.name      : TestCase_335
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_335 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33700
     * @tc.name      : TestCase_336
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_336 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33800
     * @tc.name      : TestCase_337
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_337 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_33900
     * @tc.name      : TestCase_338
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_338 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34000
     * @tc.name      : TestCase_339
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_339 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34100
     * @tc.name      : TestCase_340
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_340 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34200
     * @tc.name      : TestCase_341
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_341 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34300
     * @tc.name      : TestCase_342
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_342 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34400
     * @tc.name      : TestCase_343
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_343 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34500
     * @tc.name      : TestCase_344
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_344 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34600
     * @tc.name      : TestCase_345
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_345 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34700
     * @tc.name      : TestCase_346
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_346 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34800
     * @tc.name      : TestCase_347
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_347 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_34900
     * @tc.name      : TestCase_348
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_348 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35000
     * @tc.name      : TestCase_349
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_349 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35100
     * @tc.name      : TestCase_350
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_350 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35200
     * @tc.name      : TestCase_351
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_351 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35300
     * @tc.name      : TestCase_352
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_352 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35400
     * @tc.name      : TestCase_353
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_353 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35500
     * @tc.name      : TestCase_354
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_354 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35600
     * @tc.name      : TestCase_355
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_355 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35700
     * @tc.name      : TestCase_356
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_356 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35800
     * @tc.name      : TestCase_357
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_357 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_35900
     * @tc.name      : TestCase_358
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_358 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36000
     * @tc.name      : TestCase_359
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_359 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36100
     * @tc.name      : TestCase_360
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_360 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36200
     * @tc.name      : TestCase_361
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_361 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36300
     * @tc.name      : TestCase_362
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_362 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36400
     * @tc.name      : TestCase_363
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_363 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36500
     * @tc.name      : TestCase_364
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_364 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36600
     * @tc.name      : TestCase_365
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_365 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36700
     * @tc.name      : TestCase_366
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_366 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36800
     * @tc.name      : TestCase_367
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_367 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_36900
     * @tc.name      : TestCase_368
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_368 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37000
     * @tc.name      : TestCase_369
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_369 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37100
     * @tc.name      : TestCase_370
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_370 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37200
     * @tc.name      : TestCase_371
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_371 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37300
     * @tc.name      : TestCase_372
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_372 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37400
     * @tc.name      : TestCase_373
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_373 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37500
     * @tc.name      : TestCase_374
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_374 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37600
     * @tc.name      : TestCase_375
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_375 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37700
     * @tc.name      : TestCase_376
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_376 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37800
     * @tc.name      : TestCase_377
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_377 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_37900
     * @tc.name      : TestCase_378
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_378 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38000
     * @tc.name      : TestCase_379
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_379 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38100
     * @tc.name      : TestCase_380
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_380 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38200
     * @tc.name      : TestCase_381
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_381 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38300
     * @tc.name      : TestCase_382
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_382 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38400
     * @tc.name      : TestCase_383
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_383 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38500
     * @tc.name      : TestCase_384
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_384 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38600
     * @tc.name      : TestCase_385
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_385 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38700
     * @tc.name      : TestCase_386
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_386 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38800
     * @tc.name      : TestCase_387
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_387 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_38900
     * @tc.name      : TestCase_388
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_388 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39000
     * @tc.name      : TestCase_389
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_389 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39100
     * @tc.name      : TestCase_390
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_390 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39200
     * @tc.name      : TestCase_391
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_391 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39300
     * @tc.name      : TestCase_392
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_392 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39400
     * @tc.name      : TestCase_393
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_393 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39500
     * @tc.name      : TestCase_394
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_394 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39600
     * @tc.name      : TestCase_395
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_395 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39700
     * @tc.name      : TestCase_396
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_396 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39800
     * @tc.name      : TestCase_397
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_397 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_39900
     * @tc.name      : TestCase_398
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_398 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40000
     * @tc.name      : TestCase_399
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_399 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40100
     * @tc.name      : TestCase_400
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_400 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_400 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40200
     * @tc.name      : TestCase_401
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_401 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40300
     * @tc.name      : TestCase_402
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_402 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40400
     * @tc.name      : TestCase_403
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_403 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40500
     * @tc.name      : TestCase_404
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_404 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40600
     * @tc.name      : TestCase_405
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_405 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40700
     * @tc.name      : TestCase_406
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_406 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40800
     * @tc.name      : TestCase_407
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_407 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_40900
     * @tc.name      : TestCase_408
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_408 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41000
     * @tc.name      : TestCase_409
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_409 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41100
     * @tc.name      : TestCase_410
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_410 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41200
     * @tc.name      : TestCase_411
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_411 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41300
     * @tc.name      : TestCase_412
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_412 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41400
     * @tc.name      : TestCase_413
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_413 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41500
     * @tc.name      : TestCase_414
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_414 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  0.400000f32,  0.400000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41600
     * @tc.name      : TestCase_415
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_415 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41700
     * @tc.name      : TestCase_416
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_416 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41800
     * @tc.name      : TestCase_417
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_417 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_41900
     * @tc.name      : TestCase_418
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_418 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42000
     * @tc.name      : TestCase_419
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_419 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42100
     * @tc.name      : TestCase_420
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_420 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42200
     * @tc.name      : TestCase_421
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_421 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42300
     * @tc.name      : TestCase_422
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_422 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42400
     * @tc.name      : TestCase_423
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_423 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42500
     * @tc.name      : TestCase_424
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_424 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42600
     * @tc.name      : TestCase_425
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_425 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42700
     * @tc.name      : TestCase_426
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_426 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42800
     * @tc.name      : TestCase_427
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_427 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_42900
     * @tc.name      : TestCase_428
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_428 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_43000
     * @tc.name      : TestCase_429
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_429 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_43100
     * @tc.name      : TestCase_430
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_430 begins.")
        Hilog.info(0, "cangjietest", "define local variable primaries")
        let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32, -0.300000f32,
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
        Hilog.info(0, "cangjietest", "testcase TestCase_430 ends.")
    }
}
