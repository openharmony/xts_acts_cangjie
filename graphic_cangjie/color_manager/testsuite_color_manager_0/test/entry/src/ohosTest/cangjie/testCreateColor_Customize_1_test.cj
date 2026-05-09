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
class testCreateColor_Customize_1 {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3200
     * @tc.name      : TestCase_31
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3300
     * @tc.name      : TestCase_32
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3400
     * @tc.name      : TestCase_33
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3500
     * @tc.name      : TestCase_34
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries( -0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
             0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3600
     * @tc.name      : TestCase_35
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3700
     * @tc.name      : TestCase_36
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3800
     * @tc.name      : TestCase_37
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3900
     * @tc.name      : TestCase_38
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4000
     * @tc.name      : TestCase_39
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4100
     * @tc.name      : TestCase_40
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4200
     * @tc.name      : TestCase_41
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4300
     * @tc.name      : TestCase_42
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4400
     * @tc.name      : TestCase_43
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4500
     * @tc.name      : TestCase_44
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4600
     * @tc.name      : TestCase_45
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4700
     * @tc.name      : TestCase_46
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4800
     * @tc.name      : TestCase_47
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_4900
     * @tc.name      : TestCase_48
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5000
     * @tc.name      : TestCase_49
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5100
     * @tc.name      : TestCase_50
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5200
     * @tc.name      : TestCase_51
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5300
     * @tc.name      : TestCase_52
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5400
     * @tc.name      : TestCase_53
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5500
     * @tc.name      : TestCase_54
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5600
     * @tc.name      : TestCase_55
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_55 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5700
     * @tc.name      : TestCase_56
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5800
     * @tc.name      : TestCase_57
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_57 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_5900
     * @tc.name      : TestCase_58
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_58 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6000
     * @tc.name      : TestCase_59
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_59 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6100
     * @tc.name      : TestCase_60
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_60 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6200
     * @tc.name      : TestCase_61
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_61 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6300
     * @tc.name      : TestCase_62
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6400
     * @tc.name      : TestCase_63
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_63 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6500
     * @tc.name      : TestCase_64
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_64 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6600
     * @tc.name      : TestCase_65
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_65 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6700
     * @tc.name      : TestCase_66
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_66 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6800
     * @tc.name      : TestCase_67
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_67 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_6900
     * @tc.name      : TestCase_68
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7000
     * @tc.name      : TestCase_69
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_69 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7100
     * @tc.name      : TestCase_70
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_70 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7200
     * @tc.name      : TestCase_71
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_71 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7300
     * @tc.name      : TestCase_72
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7400
     * @tc.name      : TestCase_73
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_73 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7500
     * @tc.name      : TestCase_74
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7600
     * @tc.name      : TestCase_75
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_75 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7700
     * @tc.name      : TestCase_76
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_76 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7800
     * @tc.name      : TestCase_77
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_77 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_7900
     * @tc.name      : TestCase_78
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_78 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
            -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8000
     * @tc.name      : TestCase_79
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_79 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8100
     * @tc.name      : TestCase_80
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_80 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8200
     * @tc.name      : TestCase_81
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_81 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8300
     * @tc.name      : TestCase_82
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_82 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8400
     * @tc.name      : TestCase_83
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_83 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8500
     * @tc.name      : TestCase_84
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_84 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8600
     * @tc.name      : TestCase_85
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_85 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8700
     * @tc.name      : TestCase_86
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_86 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8800
     * @tc.name      : TestCase_87
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_87 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_8900
     * @tc.name      : TestCase_88
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_88 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9000
     * @tc.name      : TestCase_89
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_89 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9100
     * @tc.name      : TestCase_90
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_90 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9200
     * @tc.name      : TestCase_91
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_91 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9300
     * @tc.name      : TestCase_92
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_92 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9400
     * @tc.name      : TestCase_93
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_93 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9500
     * @tc.name      : TestCase_94
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_94 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9600
     * @tc.name      : TestCase_95
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_95 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9700
     * @tc.name      : TestCase_96
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_96 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9800
     * @tc.name      : TestCase_97
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_97 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_9900
     * @tc.name      : TestCase_98
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_98 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10000
     * @tc.name      : TestCase_99
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_99 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10100
     * @tc.name      : TestCase_100
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_100 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_100 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10200
     * @tc.name      : TestCase_101
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_101 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10300
     * @tc.name      : TestCase_102
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_102 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10400
     * @tc.name      : TestCase_103
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_103 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10500
     * @tc.name      : TestCase_104
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_104 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10600
     * @tc.name      : TestCase_105
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_105 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10700
     * @tc.name      : TestCase_106
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_106 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10800
     * @tc.name      : TestCase_107
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_107 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_10900
     * @tc.name      : TestCase_108
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_108 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11000
     * @tc.name      : TestCase_109
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_109 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11100
     * @tc.name      : TestCase_110
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_110 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11200
     * @tc.name      : TestCase_111
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_111 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11300
     * @tc.name      : TestCase_112
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_112 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11400
     * @tc.name      : TestCase_113
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_113 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11500
     * @tc.name      : TestCase_114
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_114 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11600
     * @tc.name      : TestCase_115
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_115 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11700
     * @tc.name      : TestCase_116
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_116 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11800
     * @tc.name      : TestCase_117
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_117 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_11900
     * @tc.name      : TestCase_118
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_118 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12000
     * @tc.name      : TestCase_119
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_119 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12100
     * @tc.name      : TestCase_120
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_120 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12200
     * @tc.name      : TestCase_121
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_121 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12300
     * @tc.name      : TestCase_122
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_122 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12400
     * @tc.name      : TestCase_123
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_123 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12500
     * @tc.name      : TestCase_124
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_124 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12600
     * @tc.name      : TestCase_125
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_125 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12700
     * @tc.name      : TestCase_126
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_126 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32, -0.300000f32,
             0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,
            0.400000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12800
     * @tc.name      : TestCase_127
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_127 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_12900
     * @tc.name      : TestCase_128
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_128 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 0.000000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 0.000000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_13000
     * @tc.name      : TestCase_129
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_129 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32,
            -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
            -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, 1.200000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, 1.200000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_13100
     * @tc.name      : TestCase_130
     * @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(-0.300000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_130 begins.")
        Hilog.info(0, "cangjietest","define local variable primaries")
        let primaries = ColorSpacePrimaries(-0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,
             -0.300000f32)
        Hilog.info(0, "cangjietest","define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(primaries, -2.300000f32)
        Hilog.info(0, "cangjietest","define local variable gammaValue")
        let gammaValue = colorSpaceManagerInstance.getGamma()
        Hilog.info(0, "cangjietest","define local variable whitePoint")
        let whitePoint = colorSpaceManagerInstance.getWhitePoint()
        @Expect(gammaValue, -2.300000f32)
        @Expect(whitePoint[0i64], primaries.whitePointX)
        @Expect(whitePoint[1i64], primaries.whitePointY)
        Hilog.info(0, "cangjietest","testcase TestCase_130 ends.")
    }
}
