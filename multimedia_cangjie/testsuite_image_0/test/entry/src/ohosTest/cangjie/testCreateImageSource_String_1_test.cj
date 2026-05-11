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
class testCreateImageSource_String_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_String_createImageSource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create an ImageSource instance, createImageSource("")
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
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect("assertion#0: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_String_createImageSource_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create an ImageSource instance, createImageSource("../test.jpg")
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
            let imageSource = createImageSource("../test.jpg")
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect("assertion#1: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImageSource_String_createImageSource_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create an ImageSource instance, createImageSource("../test.png")
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
            let imageSource = createImageSource("../test.png")
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect("assertion#2: not throw", "createImageSource fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }
}
