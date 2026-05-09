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
class testImageSource_getImageProperty_1 {
    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.BitsPerSample"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.BitsPerSample)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#0: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Get image Property. uri: "/data/storage/el1/base/test.jpg", key: "(PropertyKey.Orientation)"
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
            let imageProperty = imageSource.getImageProperty((PropertyKey.Orientation))
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#1: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Get image Property. uri: "/data/storage/el1/base/test.bmp", key: "PropertyKey.ImageLength"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageLength)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#2: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Get image Property. uri: "/data/storage/el1/base/test.gif", key: "PropertyKey.ImageWidth"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageWidth)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#3: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Get image Property. uri: "/data/storage/el1/base/test.123", key: "PropertyKey.GpsLatitude"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLatitude)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#4: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.GpsLongitude"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLongitude)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#5: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Get image Property. uri: "", key: "(PropertyKey.GpsLatitudeRef)"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLatitudeRef)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#6: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.GpsLatitudeRef"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsLongitudeRef)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#7: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.DateTimeOriginal"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.DateTimeOriginal)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#8: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.ExposureTime"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ExposureTime)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#9: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneType"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneType)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#10: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.IsoSpeedRatings"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.IsoSpeedRatings)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#11: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.FNumber"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.FNumber)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#12: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.DateTime"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.DateTime)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#13: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.GpsTimestamp"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsDateStamp)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#14: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.GpsDateStamp"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.GpsDateStamp)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#15: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.ImageDescription"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ImageDescription)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#16: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.Make"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.Make)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#17: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.Model"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.Model)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#18: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.PhotoMode"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.PhotoMode)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#19: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SensitivityType"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SensitivityType)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#20: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.StandardOutputSensitivity"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.StandardOutputSensitivity)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#21: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.RecommendedExposureIndex"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.RecommendedExposureIndex)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#22: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.IsoSpeed"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.IsoSpeed)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#23: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.ApertureValue"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ApertureValue)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#24: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.    ExposureBiasValue |"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.ExposureBiasValue)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#25: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.MeteringMode"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.MeteringMode)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#26: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.LightSource"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.LightSource)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#27: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.Flash"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.Flash)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#28: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.FocalLength"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocalLength)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#29: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.UserComment"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.UserComment)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#30: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.PixelXDimension"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.PixelXDimension)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#31: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.PixelYDimension"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.PixelYDimension)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#32: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.WhiteBalance"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.WhiteBalance)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#33: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.FocalLengthIn35mmFilm"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocalLengthIn35mmFilm)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#34: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.CaptureMode"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.CaptureMode)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#35: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.HwMnotePhysicalAperture"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.PhysicalAperture)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#36: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.HwMnoteRollAngle"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.RollAngle)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#37: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.HwMnotePitchAngle"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.PitchAngle)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#38: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.HwMnoteSceneFoodConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneFoodConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#39: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.HwMnoteSceneStageConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneStageConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#40: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneBlueSkyConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneBlueSkyConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#41: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneGreenPlantConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneGreenPlantConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#42: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneBeachConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneBeachConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#43: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneSnowConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneSnowConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#44: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneSunsetConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneSunsetConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#45: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneFlowersConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneFlowersConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#46: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneNightConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneNightConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#47: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.SceneTextConf"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.SceneTextConf)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#48: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.FaceCount"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.FaceCount)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#49: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageProperty_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Get image Property. uri: "", key: "PropertyKey.FocusMode"
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
            let imageProperty = imageSource.getImageProperty(PropertyKey.FocusMode)
            @Assert(true, imageProperty.size > 0i64)
            @Expect("assertion#50: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }
}
