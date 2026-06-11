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
import ohos.resource_manager.ResourceManager
import ohos_app_cangjie_entry.Global

@Test
class testCreateImageSource_RawFileDescriptor_1 {
    /*
     * @tc.number    : testCreateImageSource_RawFileDescriptor_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Create an ImageSource instance, createImageSource("test.jpg")
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
            let resMgr = Global.getAbilityContext().resourceManager
            let fd = resMgr.getRawFd("test.jpg")
            let imageSource = createImageSource(fd)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : testCreateImageSource_RawFileDescriptor_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Create an ImageSource instance, createImageSource("test.png")
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
            let resMgr = Global.getAbilityContext().resourceManager
            let fd = resMgr.getRawFd("test.png")
            let imageSource = createImageSource(fd)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : testCreateImageSource_RawFileDescriptor_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Create an ImageSource instance, createImageSource("test.jpeg")
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
            let resMgr = Global.getAbilityContext().resourceManager
            let fd = resMgr.getRawFd("test.jpeg")
            let imageSource = createImageSource(fd)
            @Expect(true, imageSource.supportedFormats.size > 0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }
}
