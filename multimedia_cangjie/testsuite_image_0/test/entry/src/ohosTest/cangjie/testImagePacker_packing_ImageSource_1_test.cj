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
class testImagePacker_packing_ImageSource_1 {
    /*
     * @tc.number    : Sub_Cangjie_testImagePacker_packing_ImageSource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : ImageSource compression or repacking. packing(source: ImageSource, option: PackingOption("image/jpeg", 1u8, bufferSize: 10485760u64))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let imageSource = createImageSource("../test.jpg")
            let imagePacker = createImagePacker()
            let packing = imagePacker.packToData(imageSource, PackingOption("image/jpeg", 1u8, bufferSize: 10485760u64))
            @Expect(true)
            @Expect("assertion#0: not throw", "createPixelMap fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImagePacker_packing_ImageSource_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : ImageSource compression or repacking. packing(source: ImageSource, option: PackingOption("image/png", 50u8, bufferSize: 20971520u64))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let imageSource = createImageSource("../test.png")
            let imagePacker = createImagePacker()
            let packing = imagePacker.packToData(imageSource, PackingOption("image/png", 50u8, bufferSize: 20971520u64))
            @Expect(true)
            @Expect("assertion#1: not throw", "createPixelMap fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImagePacker_packing_ImageSource_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : ImageSource compression or repacking. packing(source: ImageSource, option: PackingOption("image/jpeg", 100u8, bufferSize: 10485760u64))
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let imageSource = createImageSource("../test.jpg")
            let imagePacker = createImagePacker()
            let packing = imagePacker.packToData(imageSource, PackingOption("image/jpeg", 100u8, bufferSize: 10485760u64
            ))
            @Expect(true)
            @Expect("assertion#2: not throw", "createPixelMap fail")
        } catch (e: BusinessException) {
            @Expect(e.message, "The image source data is abnormal.")
            @Expect(e.code, 62980110i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }
}
