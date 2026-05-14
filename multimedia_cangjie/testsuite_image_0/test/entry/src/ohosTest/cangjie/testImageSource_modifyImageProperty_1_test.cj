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
class testImageSource_modifyImageProperty_1 {
    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Modify image Property. key: "PropertyKey.BitsPerSample", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.BitsPerSample, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.BitsPerSample)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Modify image Property. key: "(PropertyKey.Orientation)", value: "200)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.jpg")
            imageSource.modifyImageProperty((PropertyKey.Orientation), "200")
            let imageProperty = imageSource.getImageProperty(PropertyKey.Orientation)
            @Expect("200", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Modify image Property. key: "PropertyKey.ImageLength", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.bmp")
            imageSource.modifyImageProperty(PropertyKey.ImageLength, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageLength)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Modify image Property. key: "PropertyKey.ImageWidth", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.gif")
            imageSource.modifyImageProperty(PropertyKey.ImageWidth, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageWidth)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Modify image Property. key: "PropertyKey.GpsLatitude", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("/data/storage/el1/base/test.123")
            imageSource.modifyImageProperty(PropertyKey.GpsLatitude, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLatitude)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Modify image Property. key: "PropertyKey.GpsLongitude", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.GpsLongitude, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLongitude)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Modify image Property. key: "(PropertyKey.GpsLatitudeRef)", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty((PropertyKey.GpsLatitudeRef), "100")
            let imageProperty = imageSource.getImageProperty((PropertyKey.GpsLatitudeRef))
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Modify image Property. key: "PropertyKey.GpsLatitudeRef", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.GpsLongitudeRef, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLongitudeRef)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Modify image Property. key: "PropertyKey.DateTimeOriginal", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.DateTimeOriginal, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.DateTimeOriginal)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Modify image Property. key: "PropertyKey.ExposureTime", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.ExposureTime, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ExposureTime)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneType", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneType, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneType)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Modify image Property. key: "PropertyKey.IsoSpeedRatings", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.IsoSpeedRatings, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.IsoSpeedRatings)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Modify image Property. key: "PropertyKey.FNumber", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.FNumber, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.FNumber)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Modify image Property. key: "PropertyKey.DateTime", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.DateTime, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.DateTime)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Modify image Property. key: "PropertyKey.GpsTimestamp", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.GpsDateStamp, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsDateStamp)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Modify image Property. key: "PropertyKey.GpsDateStamp", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.GpsDateStamp, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsDateStamp)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Modify image Property. key: "PropertyKey.ImageDescription", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.ImageDescription, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageDescription)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Modify image Property. key: "PropertyKey.Make", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.Make, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.Make)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Modify image Property. key: "PropertyKey.Model", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.Model, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.Model)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Modify image Property. key: "PropertyKey.PhotoMode", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.PhotoMode, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.PhotoMode)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Modify image Property. key: "PropertyKey.SensitivityType", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SensitivityType, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SensitivityType)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Modify image Property. key: "PropertyKey.StandardOutputSensitivity", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.StandardOutputSensitivity, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.StandardOutputSensitivity)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Modify image Property. key: "PropertyKey.RecommendedExposureIndex", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.RecommendedExposureIndex, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.RecommendedExposureIndex)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Modify image Property. key: "PropertyKey.IsoSpeed", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.IsoSpeed, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.IsoSpeed)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Modify image Property. key: "PropertyKey.ApertureValue", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.ApertureValue, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ApertureValue)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Modify image Property. key: "PropertyKey.    ExposureBiasValue |", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.ExposureBiasValue, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.ExposureBiasValue)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Modify image Property. key: "PropertyKey.MeteringMode", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.MeteringMode, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.MeteringMode)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Modify image Property. key: "PropertyKey.LightSource", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.LightSource, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.LightSource)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Modify image Property. key: "PropertyKey.Flash", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.Flash, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.Flash)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Modify image Property. key: "PropertyKey.FocalLength", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.FocalLength, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocalLength)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : Modify image Property. key: "PropertyKey.UserComment", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.UserComment, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.UserComment)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : Modify image Property. key: "PropertyKey.PixelXDimension", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.PixelXDimension, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.PixelXDimension)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : Modify image Property. key: "PropertyKey.PixelYDimension", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.PixelYDimension, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.PixelYDimension)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Modify image Property. key: "PropertyKey.WhiteBalance", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.WhiteBalance, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.WhiteBalance)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Modify image Property. key: "PropertyKey.FocalLengthIn35mmFilm", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.FocalLengthIn35mmFilm, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocalLengthIn35mmFilm)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnoteCaptureMode", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.CaptureMode, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.CaptureMode)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnotePhysicalAperture", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.PhysicalAperture, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.PhysicalAperture)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnoteRollAngle", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.RollAngle, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.RollAngle)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnotePitchAngle", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.PitchAngle, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.PitchAngle)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnoteSceneFoodConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneFoodConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneFoodConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Modify image Property. key: "PropertyKey.HwMnoteSceneStageConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneStageConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneStageConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneBlueSkyConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneBlueSkyConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneBlueSkyConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneGreenPlantConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneGreenPlantConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneGreenPlantConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneBeachConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneBeachConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneBeachConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneSnowConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneSnowConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneSnowConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneSunsetConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneSunsetConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneSunsetConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneFlowersConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneFlowersConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneFlowersConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneNightConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneNightConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneNightConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Modify image Property. key: "PropertyKey.SceneTextConf", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.SceneTextConf, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneTextConf)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Modify image Property. key: "PropertyKey.FaceCount", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.FaceCount, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.FaceCount)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_modifyImageProperty_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Modify image Property. key: "PropertyKey.FocusMode", value: "100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        try {
            let imageSource = createImageSource("")
            imageSource.modifyImageProperty(PropertyKey.FocusMode, "100")
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocusMode)
            @Expect("100", imageProperty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }
}
