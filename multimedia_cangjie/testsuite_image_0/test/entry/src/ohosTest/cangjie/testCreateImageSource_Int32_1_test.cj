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
class testCreateImageSource_Int32_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create an ImageSource instance, createImageSource("-2147483648")
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
            let imageSource = createImageSource(-2147483648i32)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create an ImageSource instance, createImageSource("-114514")
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
            let imageSource = createImageSource(-114514i32)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create an ImageSource instance, createImageSource("-1")
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
            let imageSource = createImageSource(-1i32)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Create an ImageSource instance, createImageSource("0")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        let imageSource = createImageSource(0i32)
        @Expect(true, imageSource.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Create an ImageSource instance, createImageSource("1")
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "createImageSource fail")
        let imageSource = createImageSource(1i32)
        @Expect(true, imageSource.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Create an ImageSource instance, createImageSource("114514")
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
            let imageSource = createImageSource(114514i32)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_Int32_createImageSource_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Create an ImageSource instance, createImageSource("2147483647")
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
            let imageSource = createImageSource(2147483647i32)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }
}
