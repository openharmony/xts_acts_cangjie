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
class testPropertyKeyToString_1 {
    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : PropertyKey.BitsPerSample.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        @Expect(PropertyKey.BitsPerSample.toString(), "BitsPerSample")
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : (PropertyKey.Orientation).toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        @Expect((PropertyKey.Orientation).toString(), "Orientation")
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : PropertyKey.ImageLength.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        @Expect(PropertyKey.ImageLength.toString(), "ImageLength")
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : PropertyKey.ImageWidth.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        @Expect(PropertyKey.ImageWidth.toString(), "ImageWidth")
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : PropertyKey.GpsLatitude.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        @Expect(PropertyKey.GpsLatitude.toString(), "GPSLatitude")
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : PropertyKey.GpsLongitude.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        @Expect(PropertyKey.GpsLongitude.toString(), "GPSLongitude")
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : (PropertyKey.GpsLatitudeRef).toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        @Expect((PropertyKey.GpsLatitudeRef).toString(), "GPSLatitudeRef")
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : PropertyKey.GpsLatitudeRef.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        @Expect(PropertyKey.GpsLatitudeRef.toString(), "GPSLatitudeRef")
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : PropertyKey.DateTimeOriginal.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        @Expect(PropertyKey.DateTimeOriginal.toString(), "DateTimeOriginal")
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : PropertyKey.ExposureTime.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        @Expect(PropertyKey.ExposureTime.toString(), "ExposureTime")
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : PropertyKey.SceneType.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        @Expect(PropertyKey.SceneType.toString(), "SceneType")
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : PropertyKey.IsoSpeedRatings.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        @Expect(PropertyKey.IsoSpeedRatings.toString(), "ISOSpeedRatings")
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : PropertyKey.FNumber.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        @Expect(PropertyKey.FNumber.toString(), "FNumber")
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : PropertyKey.DateTime.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        @Expect(PropertyKey.DateTime.toString(), "DateTime")
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : PropertyKey.GpsTimestamp.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        @Expect(PropertyKey.GpsTimestamp.toString(), "GPSTimeStamp")
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : PropertyKey.GpsDateStamp.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        @Expect(PropertyKey.GpsDateStamp.toString(), "GPSDateStamp")
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : PropertyKey.ImageDescription.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        @Expect(PropertyKey.ImageDescription.toString(), "ImageDescription")
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : PropertyKey.Make.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        @Expect(PropertyKey.Make.toString(), "Make")
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : PropertyKey.Model.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        @Expect(PropertyKey.Model.toString(), "Model")
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : PropertyKey.PhotoMode.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        @Expect(PropertyKey.PhotoMode.toString(), "PhotoMode")
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : PropertyKey.SensitivityType.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        @Expect(PropertyKey.SensitivityType.toString(), "SensitivityType")
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : PropertyKey.StandardOutputSensitivity.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        @Expect(PropertyKey.StandardOutputSensitivity.toString(), "StandardOutputSensitivity")
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : PropertyKey.RecommendedExposureIndex.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        @Expect(PropertyKey.RecommendedExposureIndex.toString(), "RecommendedExposureIndex")
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : PropertyKey.IsoSpeed.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        @Expect(PropertyKey.IsoSpeed.toString(), "ISOSpeedRatings")
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : PropertyKey.ApertureValue.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        @Expect(PropertyKey.ApertureValue.toString(), "ApertureValue")
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : PropertyKey.    ExposureBiasValue |.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        @Expect(PropertyKey.ExposureBiasValue.toString(), "ExposureBiasValue")
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : PropertyKey.MeteringMode.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        @Expect(PropertyKey.MeteringMode.toString(), "MeteringMode")
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : PropertyKey.LightSource.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        @Expect(PropertyKey.LightSource.toString(), "LightSource")
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : PropertyKey.Flash.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        @Expect(PropertyKey.Flash.toString(), "Flash")
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : PropertyKey.FocalLength.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        @Expect(PropertyKey.FocalLength.toString(), "FocalLength")
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : PropertyKey.UserComment.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_31 begins.")
        @Expect(PropertyKey.UserComment.toString(), "UserComment")
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : PropertyKey.PixelXDimension.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_32 begins.")
        @Expect(PropertyKey.PixelXDimension.toString(), "PixelXDimension")
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : PropertyKey.PixelYDimension.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_33 begins.")
        @Expect(PropertyKey.PixelYDimension.toString(), "PixelYDimension")
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : PropertyKey.WhiteBalance.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        @Expect(PropertyKey.WhiteBalance.toString(), "WhiteBalance")
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : PropertyKey.FocalLengthIn35mmFilm.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        @Expect(PropertyKey.FocalLengthIn35mmFilm.toString(), "FocalLengthIn35mmFilm")
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : PropertyKey.HwMnoteCaptureMode.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        @Expect(PropertyKey.CaptureMode.toString(), "HwMnoteCaptureMode")
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : PropertyKey.HwMnotePhysicalAperture.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_37 begins.")
        @Expect(PropertyKey.PhysicalAperture.toString(), "HwMnotePhysicalAperture")
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : PropertyKey.HwMnoteRollAngle.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_38 begins.")
        @Expect(PropertyKey.RollAngle.toString(), "HwMnoteRollAngle")
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : PropertyKey.HwMnotePitchAngle.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_39 begins.")
        @Expect(PropertyKey.PitchAngle.toString(), "HwMnotePitchAngle")
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : PropertyKey.HwMnoteSceneFoodConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        @Expect(PropertyKey.SceneFoodConf.toString(), "HwMnoteSceneFoodConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : PropertyKey.HwMnoteSceneStageConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        @Expect(PropertyKey.SceneStageConf.toString(), "HwMnoteSceneStageConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : PropertyKey.SceneBlueSkyConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        @Expect(PropertyKey.SceneBlueSkyConf.toString(), "HwMnoteSceneBlueSkyConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : PropertyKey.SceneGreenPlantConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_43 begins.")
        @Expect(PropertyKey.SceneGreenPlantConf.toString(), "HwMnoteSceneGreenPlantConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : PropertyKey.SceneBeachConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_44 begins.")
        @Expect(PropertyKey.SceneBeachConf.toString(), "HwMnoteSceneBeachConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : PropertyKey.SceneSnowConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_45 begins.")
        @Expect(PropertyKey.SceneSnowConf.toString(), "HwMnoteSceneSnowConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : PropertyKey.SceneSunsetConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        @Expect(PropertyKey.SceneSunsetConf.toString(), "HwMnoteSceneSunsetConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : PropertyKey.SceneFlowersConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        @Expect(PropertyKey.SceneFlowersConf.toString(), "HwMnoteSceneFlowersConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : PropertyKey.SceneNightConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        @Expect(PropertyKey.SceneNightConf.toString(), "HwMnoteSceneNightConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : PropertyKey.SceneTextConf.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_49 begins.")
        @Expect(PropertyKey.SceneTextConf.toString(), "HwMnoteSceneTextConf")
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : PropertyKey.FaceCount.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        @Expect(PropertyKey.FaceCount.toString(), "HwMnoteFaceCount")
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPropertyKeyToString_toString_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : PropertyKey.FocusMode.toString()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        @Expect(PropertyKey.FocusMode.toString(), "HwMnoteFocusMode")
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }
}
