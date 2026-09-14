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
import kit.PerformanceAnalysisKit.Hilog
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.multimedia.image.*

@Test
class Test_ImageOptionFields {
    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_sourceDensity_0100
     * @tc.name      : TestCase_sourceDensity
     * @tc.desc      : SourceOptions.sourceDensity field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_sourceDensity(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_sourceDensity begins.")
        let opts = SourceOptions(240i32, sourcePixelFormat: PixelMapFormat.Unknown, sourceSize: Size(1i32, 1i32))
        @Expect(opts.sourceDensity, 240i32)
        Hilog.info(0, "cangjietest", "testcase TestCase_sourceDensity ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_desiredColorSpace_0200
     * @tc.name      : TestCase_desiredColorSpace
     * @tc.desc      : DecodingOptions.desiredColorSpace field default None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_desiredColorSpace(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_desiredColorSpace begins.")
        let opts = DecodingOptions()
        var colorSpaceIsNone = false
        match (opts.desiredColorSpace) {
            case None => colorSpaceIsNone = true
            case Some(c) => colorSpaceIsNone = false
        }
        @Expect(colorSpaceIsNone, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_desiredColorSpace ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_desiredDynamicRange_0300
     * @tc.name      : TestCase_desiredDynamicRange
     * @tc.desc      : DecodingOptions.desiredDynamicRange field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_desiredDynamicRange(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_desiredDynamicRange begins.")
        let opts = DecodingOptions(desiredDynamicRange: DecodingDynamicRange.Hdr)
        @Expect(opts.desiredDynamicRange, DecodingDynamicRange.Hdr)
        Hilog.info(0, "cangjietest", "testcase TestCase_desiredDynamicRange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_positionStride_0400
     * @tc.name      : TestCase_positionStride
     * @tc.desc      : PositionArea.stride field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_positionStride(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_positionStride begins.")
        let buf = Array<UInt8>(8, repeat: 0u8)
        let area = PositionArea(buf, 0u32, 16u32, Region(Size(1i32, 2i32), 0, 0))
        @Expect(area.stride, 16u32)
        Hilog.info(0, "cangjietest", "testcase TestCase_positionStride ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_quality_0500
     * @tc.name      : TestCase_quality
     * @tc.desc      : PackingOption.quality field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_quality(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_quality begins.")
        let opts = PackingOption("image/jpeg", 88u8)
        @Expect(opts.quality, 88u8)
        Hilog.info(0, "cangjietest", "testcase TestCase_quality ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_packingDynamicRange_0600
     * @tc.name      : TestCase_packingDynamicRange
     * @tc.desc      : PackingOption.desiredDynamicRange field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_packingDynamicRange(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_packingDynamicRange begins.")
        let opts = PackingOption("image/jpeg", 50u8, desiredDynamicRange: PackingDynamicRange.Auto)
        @Expect(opts.desiredDynamicRange, PackingDynamicRange.Auto)
        Hilog.info(0, "cangjietest", "testcase TestCase_packingDynamicRange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_needsPackProperties_0700
     * @tc.name      : TestCase_needsPackProperties
     * @tc.desc      : PackingOption.needsPackProperties field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_needsPackProperties(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_needsPackProperties begins.")
        let opts = PackingOption("image/jpeg", 50u8, needsPackProperties: true)
        @Expect(opts.needsPackProperties, true)
        let opts2 = PackingOption("image/jpeg", 50u8)
        @Expect(opts2.needsPackProperties, false)
        Hilog.info(0, "cangjietest", "testcase TestCase_needsPackProperties ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageOptionFields_defaultValue_0800
     * @tc.name      : TestCase_defaultValue
     * @tc.desc      : ImagePropertyOptions.defaultValue field round-trip
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_defaultValue(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_defaultValue begins.")
        let opts = ImagePropertyOptions(index: 0u32, defaultValue: "N/A")
        @Expect(opts.defaultValue, "N/A")
        let opts2 = ImagePropertyOptions()
        @Expect(opts2.defaultValue, "")
        Hilog.info(0, "cangjietest", "testcase TestCase_defaultValue ends.")
    }
}
