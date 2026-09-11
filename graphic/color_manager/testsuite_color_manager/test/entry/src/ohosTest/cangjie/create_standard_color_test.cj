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
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.*

@Test
class TestCreateStandardColor {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0100
     * @tc.name      : test_case_0
     * @tc.desc      : test color_manager create "0".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_0(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_0 begins.")
        Hilog.info(0, "cangjietest", "requestSuspendDelay reason failed")
        try {
            let colorSpaceManagerInstance = create(ColorSpace.Unknown)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 18600001i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_case_0 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0200
     * @tc.name      : test_case_1
     * @tc.desc      : test color_manager create "ColorSpace.AdobeRgb1998".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.AdobeRgb1998)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.AdobeRgb1998")
        Hilog.info(0, "cangjietest", "testcase test_case_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0300
     * @tc.name      : test_case_2
     * @tc.desc      : test color_manager create "ColorSpace.DciP3".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DciP3)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.DciP3")
        Hilog.info(0, "cangjietest", "testcase test_case_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0400
     * @tc.name      : test_case_3
     * @tc.desc      : test color_manager create "ColorSpace.DisplayP3".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplayP3)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.DisplayP3")
        Hilog.info(0, "cangjietest", "testcase test_case_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0500
     * @tc.name      : test_case_4
     * @tc.desc      : test color_manager create "ColorSpace.Srgb".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Srgb)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Srgb")
        Hilog.info(0, "cangjietest", "testcase test_case_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0600
     * @tc.name      : test_case_5
     * @tc.desc      : test color_manager create "ColorSpace.Custom".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_5 begins.")
        Hilog.info(0, "cangjietest", "requestSuspendDelay reason failed")
        try {
            let colorSpaceManagerInstance = create(ColorSpace.Custom)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 18600001i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_case_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0700
     * @tc.name      : test_case_6
     * @tc.desc      : test color_manager create "ColorSpace.Bt709".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt709)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt709")
        Hilog.info(0, "cangjietest", "testcase test_case_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0800
     * @tc.name      : test_case_7
     * @tc.desc      : test color_manager create "ColorSpace.Bt601Ebu".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_7 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt601Ebu)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt601Ebu")
        Hilog.info(0, "cangjietest", "testcase test_case_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_0900
     * @tc.name      : test_case_8
     * @tc.desc      : test color_manager create "ColorSpace.Bt601SmpteC".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_8 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt601SmpteC)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt601SmpteC")
        Hilog.info(0, "cangjietest", "testcase test_case_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1000
     * @tc.name      : test_case_9
     * @tc.desc      : test color_manager create "ColorSpace.Bt2020Hlg".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_9 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt2020Hlg)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt2020Hlg")
        Hilog.info(0, "cangjietest", "testcase test_case_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1100
     * @tc.name      : test_case_10
     * @tc.desc      : test color_manager create "ColorSpace.Bt2020Pq".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_10 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt2020Pq)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt2020Pq")
        Hilog.info(0, "cangjietest", "testcase test_case_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1200
     * @tc.name      : test_case_11
     * @tc.desc      : test color_manager create "ColorSpace.P3Hlg".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_11 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.P3Hlg)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3Hlg")
        Hilog.info(0, "cangjietest", "testcase test_case_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1300
     * @tc.name      : test_case_12
     * @tc.desc      : test color_manager create "ColorSpace.P3Pq".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.P3Pq)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3Pq")
        Hilog.info(0, "cangjietest", "testcase test_case_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1400
     * @tc.name      : test_case_13
     * @tc.desc      : test color_manager create "ColorSpace.AdobeRgb1998Limit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_13 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.AdobeRgb1998Limit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.AdobeRgb1998Limit")
        Hilog.info(0, "cangjietest", "testcase test_case_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1500
     * @tc.name      : test_case_14
     * @tc.desc      : test color_manager create "ColorSpace.DisplayP3Limit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_14 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplayP3Limit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.DisplayP3Limit")
        Hilog.info(0, "cangjietest", "testcase test_case_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1600
     * @tc.name      : test_case_15
     * @tc.desc      : test color_manager create "ColorSpace.SrgbLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_15 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.SrgbLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.SrgbLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1700
     * @tc.name      : test_case_16
     * @tc.desc      : test color_manager create "ColorSpace.Bt709Limit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt709Limit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt709Limit")
        Hilog.info(0, "cangjietest", "testcase test_case_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1800
     * @tc.name      : test_case_17
     * @tc.desc      : test color_manager create "ColorSpace.Bt601EbuLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt601EbuLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt601EbuLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_1900
     * @tc.name      : test_case_18
     * @tc.desc      : test color_manager create "ColorSpace.Bt601SmpteCLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_18 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt601SmpteCLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt601SmpteCLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2000
     * @tc.name      : test_case_19
     * @tc.desc      : test color_manager create "ColorSpace.Bt2020HlgLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_19 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt2020HlgLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt2020HlgLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2100
     * @tc.name      : test_case_20
     * @tc.desc      : test color_manager create "ColorSpace.Bt2020PqLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_20 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.Bt2020PqLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Bt2020PqLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2200
     * @tc.name      : test_case_21
     * @tc.desc      : test color_manager create "ColorSpace.P3HlgLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_21 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.P3HlgLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3HlgLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2300
     * @tc.name      : test_case_22
     * @tc.desc      : test color_manager create "ColorSpace.P3PqLimit".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_22 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.P3PqLimit)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3PqLimit")
        Hilog.info(0, "cangjietest", "testcase test_case_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2400
     * @tc.name      : test_case_23
     * @tc.desc      : test color_manager create "ColorSpace.LinearP3".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_23 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.LinearP3)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.LinearP3")
        Hilog.info(0, "cangjietest", "testcase test_case_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2500
     * @tc.name      : test_case_24
     * @tc.desc      : test color_manager create "ColorSpace.LinearSrgb".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_24 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.LinearSrgb)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.LinearSrgb")
        Hilog.info(0, "cangjietest", "testcase test_case_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2600
     * @tc.name      : test_case_25
     * @tc.desc      : test color_manager create "ColorSpace.LinearBt709".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_25 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.LinearBt709)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.LinearSrgb")
        Hilog.info(0, "cangjietest", "testcase test_case_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2700
     * @tc.name      : test_case_26
     * @tc.desc      : test color_manager create "ColorSpace.LinearBt2020".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_26 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.LinearBt2020)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.LinearBt2020")
        Hilog.info(0, "cangjietest", "testcase test_case_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2800
     * @tc.name      : test_case_27
     * @tc.desc      : test color_manager create "ColorSpace.DisplaySrgb".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_27 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplaySrgb)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.Srgb")
        Hilog.info(0, "cangjietest", "testcase test_case_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_2900
     * @tc.name      : test_case_28
     * @tc.desc      : test color_manager create "ColorSpace.DisplayP3Srgb".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_28 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplayP3Srgb)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.DisplayP3")
        Hilog.info(0, "cangjietest", "testcase test_case_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3000
     * @tc.name      : test_case_29
     * @tc.desc      : test color_manager create "ColorSpace.DisplayP3Hlg".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_29 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplayP3Hlg)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3Hlg")
        Hilog.info(0, "cangjietest", "testcase test_case_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_3100
     * @tc.name      : test_case_30
     * @tc.desc      : test color_manager create "ColorSpace.DisplayP3Pq".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_30 begins.")
        Hilog.info(0, "cangjietest", "define local variable colorSpaceManagerInstance")
        let colorSpaceManagerInstance = create(ColorSpace.DisplayP3Pq)
        Hilog.info(0, "cangjietest", "define local variable colorSpace")
        let colorSpace = colorSpaceManagerInstance.getColorSpaceType()
        @Expect("ColorSpace." + colorSpace.toString(), "ColorSpace.ColorSpace.P3Pq")
        Hilog.info(0, "cangjietest", "testcase test_case_30 ends.")
    }
}
