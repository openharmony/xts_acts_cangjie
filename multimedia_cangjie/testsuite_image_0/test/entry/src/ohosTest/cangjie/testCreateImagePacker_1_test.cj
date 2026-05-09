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
internal import ohos.business_exception.BusinessException

@Test
class testCreateImagePacker_1 {
    /*
     * @tc.number    : Sub_Cangjie_testCreateImagePacker_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create an ImagePacker instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable imagePacker")
        let imagePacker = createImagePacker()
        @Expect(true, imagePacker.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImagePacker_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create an ImagePacker instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable imagePacker")
        let imagePacker = createImagePacker()
        @Expect(true, imagePacker.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImagePacker_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create an ImagePacker instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable imagePacker")
        let imagePacker = createImagePacker()
        @Expect(true, imagePacker.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImagePacker_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Create an ImagePacker instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable imagePacker")
        let imagePacker = createImagePacker()
        @Expect(true, imagePacker.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testCreateImagePacker_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Create an ImagePacker instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable imagePacker")
        let imagePacker = createImagePacker()
        @Expect(true, imagePacker.supportedFormats.size > 0i64)
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }
}
