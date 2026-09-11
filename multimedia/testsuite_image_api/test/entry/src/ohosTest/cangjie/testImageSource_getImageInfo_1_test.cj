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
import ohos.business_exception.BusinessException

@Test
class testImageSource_getImageInfo_1 {
    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageInfo_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Get image information. uri: "", index: "0"
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
            let imageInfo = imageSource.getImageInfo(index: 0u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageInfo_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Get image information. uri: "/data/storage/el1/base/test.jpg", index: "1"
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
            let imageInfo = imageSource.getImageInfo(index: 1u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageInfo_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Get image information. uri: "/data/storage/el1/base/test.bmp", index: "0"
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
            let imageInfo = imageSource.getImageInfo(index: 0u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageInfo_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Get image information. uri: "/data/storage/el1/base/test.gif", index: "0"
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
            let imageInfo = imageSource.getImageInfo(index: 0u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageSource_getImageInfo_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Get image information. uri: "/data/storage/el1/base/test.123", index: "0"
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
            let imageInfo = imageSource.getImageInfo(index: 0u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }
}
