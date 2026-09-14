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
class Test_ImageEnumOps {
    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_PixelMapFormat_0100
     * @tc.name      : TestCase_PixelMapFormat
     * @tc.desc      : PixelMapFormat == / != operators and Rgba1010102, YcbcrP010, YcrcbP010 values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_PixelMapFormat(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_PixelMapFormat begins.")
        @Expect(PixelMapFormat.Rgba1010102 != PixelMapFormat.YcbcrP010)
        @Expect(PixelMapFormat.YcbcrP010 != PixelMapFormat.YcrcbP010)
        @Expect(PixelMapFormat.YcrcbP010 != PixelMapFormat.Rgba1010102)
        Hilog.info(0, "cangjietest", "testcase TestCase_PixelMapFormat ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_AlphaType_0200
     * @tc.name      : TestCase_AlphaType
     * @tc.desc      : AlphaType == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_AlphaType(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_AlphaType begins.")
        @Expect(AlphaType.Unknown != AlphaType.Opaque)
        @Expect(AlphaType.Premul != AlphaType.UnPremul)
        Hilog.info(0, "cangjietest", "testcase TestCase_AlphaType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_ScaleMode_0300
     * @tc.name      : TestCase_ScaleMode
     * @tc.desc      : ScaleMode == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ScaleMode(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_ScaleMode begins.")
        @Expect(ScaleMode.FitTargetSize != ScaleMode.CenterCrop)
        Hilog.info(0, "cangjietest", "testcase TestCase_ScaleMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_ImageFormat_0400
     * @tc.name      : TestCase_ImageFormat
     * @tc.desc      : ImageFormat == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ImageFormat(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_ImageFormat begins.")
        @Expect(ImageFormat.Jpeg != ImageFormat.Ycbcr422Sp)
        Hilog.info(0, "cangjietest", "testcase TestCase_ImageFormat ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_ComponentType_0500
     * @tc.name      : TestCase_ComponentType
     * @tc.desc      : ComponentType == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ComponentType(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_ComponentType begins.")
        @Expect(ComponentType.Jpeg != ComponentType.YuvY)
        @Expect(ComponentType.YuvY != ComponentType.YuvU)
        Hilog.info(0, "cangjietest", "testcase TestCase_ComponentType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_PropertyKey_0600
     * @tc.name      : TestCase_PropertyKey
     * @tc.desc      : PropertyKey == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_PropertyKey(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_PropertyKey begins.")
        @Expect(PropertyKey.BitsPerSample != PropertyKey.Orientation)
        @Expect(PropertyKey.Make != PropertyKey.Model)
        Hilog.info(0, "cangjietest", "testcase TestCase_PropertyKey ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_DecodingDynamicRange_0700
     * @tc.name      : TestCase_DecodingDynamicRange
     * @tc.desc      : DecodingDynamicRange == / != operators and Hdr value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_DecodingDynamicRange(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_DecodingDynamicRange begins.")
        @Expect(DecodingDynamicRange.Hdr != DecodingDynamicRange.Sdr)
        @Expect(DecodingDynamicRange.Auto != DecodingDynamicRange.Hdr)
        Hilog.info(0, "cangjietest", "testcase TestCase_DecodingDynamicRange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageEnumOps_PackingDynamicRange_0800
     * @tc.name      : TestCase_PackingDynamicRange
     * @tc.desc      : PackingDynamicRange == / != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_PackingDynamicRange(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_PackingDynamicRange begins.")
        @Expect(PackingDynamicRange.Auto != PackingDynamicRange.Sdr)
        Hilog.info(0, "cangjietest", "testcase TestCase_PackingDynamicRange ends.")
    }
}
