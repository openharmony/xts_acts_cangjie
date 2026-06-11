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
class testCreateColor_Customize_6 {
/*
* @tc.number    : Sub_Cangjie_color_manager_create_53200
* @tc.name      : TestCase_531
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_531(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_531 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_531 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53300
* @tc.name      : TestCase_532
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_532(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_532 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_532 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53400
* @tc.name      : TestCase_533
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_533(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_533 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_533 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53500
* @tc.name      : TestCase_534
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_534(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_534 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_534 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53600
* @tc.name      : TestCase_535
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_535(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_535 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_535 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53700
* @tc.name      : TestCase_536
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_536(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_536 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_536 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53800
* @tc.name      : TestCase_537
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_537(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_537 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_537 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_53900
* @tc.name      : TestCase_538
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_538(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_538 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_538 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54000
* @tc.name      : TestCase_539
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_539(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_539 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_539 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54100
* @tc.name      : TestCase_540
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_540(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_540 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_540 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54200
* @tc.name      : TestCase_541
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_541(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_541 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_541 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54300
* @tc.name      : TestCase_542
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_542(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_542 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_542 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54400
* @tc.name      : TestCase_543
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_543(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_543 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_543 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54500
* @tc.name      : TestCase_544
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_544(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_544 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_544 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54600
* @tc.name      : TestCase_545
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_545(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_545 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_545 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54700
* @tc.name      : TestCase_546
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_546(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_546 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_546 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54800
* @tc.name      : TestCase_547
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_547(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_547 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_547 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_54900
* @tc.name      : TestCase_548
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_548(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_548 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_548 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55000
* @tc.name      : TestCase_549
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_549(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_549 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_549 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55100
* @tc.name      : TestCase_550
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_550(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_550 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_550 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55200
* @tc.name      : TestCase_551
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_551(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_551 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_551 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55300
* @tc.name      : TestCase_552
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_552(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_552 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_552 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55400
* @tc.name      : TestCase_553
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_553(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_553 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_553 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55500
* @tc.name      : TestCase_554
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_554(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_554 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_554 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55600
* @tc.name      : TestCase_555
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_555(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_555 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_555 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55700
* @tc.name      : TestCase_556
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_556(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_556 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_556 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55800
* @tc.name      : TestCase_557
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_557(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_557 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_557 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_55900
* @tc.name      : TestCase_558
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_558(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_558 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_558 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56000
* @tc.name      : TestCase_559
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_559(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_559 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_559 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56100
* @tc.name      : TestCase_560
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_560(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_560 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_560 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56200
* @tc.name      : TestCase_561
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_561(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_561 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_561 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56300
* @tc.name      : TestCase_562
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_562(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_562 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_562 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56400
* @tc.name      : TestCase_563
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_563(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_563 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_563 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56500
* @tc.name      : TestCase_564
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_564(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_564 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_564 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56600
* @tc.name      : TestCase_565
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_565(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_565 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_565 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56700
* @tc.name      : TestCase_566
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_566(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_566 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_566 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56800
* @tc.name      : TestCase_567
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_567(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_567 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_567 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_56900
* @tc.name      : TestCase_568
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_568(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_568 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_568 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57000
* @tc.name      : TestCase_569
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_569(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_569 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_569 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57100
* @tc.name      : TestCase_570
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_570(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_570 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_570 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57200
* @tc.name      : TestCase_571
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_571(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_571 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_571 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57300
* @tc.name      : TestCase_572
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_572(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_572 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_572 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57400
* @tc.name      : TestCase_573
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_573(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_573 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_573 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57500
* @tc.name      : TestCase_574
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_574(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_574 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_574 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57600
* @tc.name      : TestCase_575
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_575(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_575 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_575 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57700
* @tc.name      : TestCase_576
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_576(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_576 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_576 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57800
* @tc.name      : TestCase_577
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_577(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_577 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_577 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_57900
* @tc.name      : TestCase_578
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_578(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_578 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_578 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58000
* @tc.name      : TestCase_579
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_579(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_579 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_579 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58100
* @tc.name      : TestCase_580
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_580(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_580 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_580 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58200
* @tc.name      : TestCase_581
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_581(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_581 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_581 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58300
* @tc.name      : TestCase_582
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_582(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_582 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_582 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58400
* @tc.name      : TestCase_583
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_583(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_583 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_583 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58500
* @tc.name      : TestCase_584
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_584(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_584 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_584 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58600
* @tc.name      : TestCase_585
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_585(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_585 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_585 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58700
* @tc.name      : TestCase_586
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_586(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_586 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_586 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58800
* @tc.name      : TestCase_587
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_587(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_587 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_587 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_58900
* @tc.name      : TestCase_588
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_588(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_588 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_588 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59000
* @tc.name      : TestCase_589
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_589(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_589 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_589 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59100
* @tc.name      : TestCase_590
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_590(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_590 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_590 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59200
* @tc.name      : TestCase_591
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_591(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_591 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_591 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59300
* @tc.name      : TestCase_592
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_592(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_592 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_592 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59400
* @tc.name      : TestCase_593
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_593(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_593 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_593 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59500
* @tc.name      : TestCase_594
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_594(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_594 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_594 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59600
* @tc.name      : TestCase_595
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_595(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_595 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_595 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59700
* @tc.name      : TestCase_596
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_596(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_596 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_596 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59800
* @tc.name      : TestCase_597
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_597(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_597 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_597 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_59900
* @tc.name      : TestCase_598
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_598(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_598 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_598 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60000
* @tc.name      : TestCase_599
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_599(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_599 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_599 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60100
* @tc.name      : TestCase_600
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_600(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_600 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_600 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60200
* @tc.name      : TestCase_601
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_601(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_601 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_601 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60300
* @tc.name      : TestCase_602
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_602(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_602 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_602 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60400
* @tc.name      : TestCase_603
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_603(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_603 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_603 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60500
* @tc.name      : TestCase_604
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_604(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_604 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_604 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60600
* @tc.name      : TestCase_605
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_605(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_605 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_605 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60700
* @tc.name      : TestCase_606
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_606(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_606 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  -0.300000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_606 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60800
* @tc.name      : TestCase_607
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_607(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_607 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_607 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_60900
* @tc.name      : TestCase_608
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_608(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_608 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_608 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61000
* @tc.name      : TestCase_609
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_609(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_609 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_609 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61100
* @tc.name      : TestCase_610
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_610(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_610 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_610 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61200
* @tc.name      : TestCase_611
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_611(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_611 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_611 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61300
* @tc.name      : TestCase_612
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_612(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_612 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_612 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61400
* @tc.name      : TestCase_613
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_613(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_613 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_613 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61500
* @tc.name      : TestCase_614
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_614(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_614 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_614 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61600
* @tc.name      : TestCase_615
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_615(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_615 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_615 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61700
* @tc.name      : TestCase_616
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_616(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_616 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_616 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61800
* @tc.name      : TestCase_617
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_617(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_617 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_617 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_61900
* @tc.name      : TestCase_618
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_618(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_618 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_618 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62000
* @tc.name      : TestCase_619
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_619(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_619 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_619 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62100
* @tc.name      : TestCase_620
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_620(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_620 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_620 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62200
* @tc.name      : TestCase_621
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_621(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_621 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_621 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62300
* @tc.name      : TestCase_622
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_622(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_622 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_622 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62400
* @tc.name      : TestCase_623
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_623(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_623 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_623 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62500
* @tc.name      : TestCase_624
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_624(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_624 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32, -0.300000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_624 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62600
* @tc.name      : TestCase_625
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_625(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_625 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_625 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62700
* @tc.name      : TestCase_626
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_626(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_626 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_626 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62800
* @tc.name      : TestCase_627
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_627(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_627 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, -0.300000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_627 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_62900
* @tc.name      : TestCase_628
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "-2.300000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_628(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_628 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, -2.300000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, -2.300000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_628 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_63000
* @tc.name      : TestCase_629
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "0.000000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_629(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_629 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 0.000000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 0.000000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_629 ends.")
}

/*
* @tc.number    : Sub_Cangjie_color_manager_create_63100
* @tc.name      : TestCase_630
* @tc.desc      : test color_manager create primaries:"ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)", gamma: "1.200000".
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 0
*/

@TestCase
@Tag[APILevel22, TestLevel0]
func TestCase_630(): Unit  {
Hilog.info(0, "cangjietest", "testcase TestCase_630 begins.")
Hilog.info(0, "cangjietest", "define local variable primaries")
let primaries = ColorSpacePrimaries(0.400000f32,  0.400000f32, -0.300000f32, -0.300000f32, -0.300000f32,  0.400000f32,  0.400000f32, 0.400000f32)
Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
let colorSpaceManagerInstance = create(primaries, 1.200000f32)
Hilog.info(0, "cangjietest", "define local variable gammaValue")
let gammaValue = colorSpaceManagerInstance.getGamma()
Hilog.info(0, "cangjietest", "define local variable whitePoint")
let whitePoint = colorSpaceManagerInstance.getWhitePoint()
@Expect(gammaValue, 1.200000f32)
@Expect(whitePoint[0i64], primaries.whitePointX)
@Expect(whitePoint[1i64], primaries.whitePointY)
Hilog.info(0, "cangjietest", "testcase TestCase_630 ends.")
}

}
