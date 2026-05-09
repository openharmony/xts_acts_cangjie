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

import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.MediaKit.*
import std.collection.HashMap
import ohos.base.*
import ohos.file.fs.*
import ohos.hilog.Hilog
import ohos.business_exception.BusinessException

@Test
class test_AVImageGenerator {
    /*
     * @tc.number    : Sub_Cangjie_media_test_AVImageGenerator_0100
     * @tc.name      : testCase00
     * @tc.desc      : test media testCase00  pass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCase00(): Unit {
        try {
            let timeUs = 0
            let queryOption = AVImageQueryOptions.AvImageQueryNextSync
            let param = PixelMapParams(width: 300, height: 300)
            let generator = createAVImageGenerator()
            let rawFd = getResourceManager().getRawFd("trailer.mp4")
            generator.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
            let pic = generator.fetchFrameByTime(timeUs, queryOption, param)
            generator.release()
            let imageInfo = pic.getImageInfo()
            @Expect(imageInfo.size.height, 300)
            @Expect(imageInfo.size.width, 300)
        } catch (e: BusinessException) {
            @Expect(e.code, 5400101)
        }
    }
}
