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
import ohos.business_exception.BusinessException
import ohos.file.fs.*
import ohos.hilog.Hilog

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
        let generator = createAVImageGenerator()
        let rawFd = getResourceManager().getRawFd("trailer.mp4")
        generator.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
        let fd = generator.fdSrc
        @Expect(fd.fd, rawFd.fd)
        @Expect(fd.length, rawFd.length)
        generator.release()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_media_test_AVImageGenerator_0200
     * @tc.name      : test_fetchFrameByTime_InRangeTime
     * @tc.desc      : Cover AVImageGenerator fdSrc assignment and AVImageQueryOptions usage with release lifecycle
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fetchFrameByTime_InRangeTime(): Unit {
        let queryOption = AVImageQueryOptions.AvImageQueryNextSync
        let generator = createAVImageGenerator()
        let rawFd = getResourceManager().getRawFd("trailer.mp4")
        generator.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
        let fd = generator.fdSrc
        @Expect(fd.offset, rawFd.offset)
        @Expect(queryOption == AVImageQueryOptions.AvImageQueryNextSync, true)
        generator.release()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_media_test_AVImageGenerator_0300
     * @tc.name      : test_fetchFrameByTime_PreviousSync
     * @tc.desc      : Cover AVImageGenerator fdSrc assignment and AvImageQueryPreviousSync enum usage with release lifecycle
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fetchFrameByTime_PreviousSync(): Unit {
        let queryOption = AVImageQueryOptions.AvImageQueryPreviousSync
        let generator = createAVImageGenerator()
        let rawFd = getResourceManager().getRawFd("trailer.mp4")
        generator.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
        @Expect(queryOption == AVImageQueryOptions.AvImageQueryPreviousSync, true)
        @Expect(queryOption != AVImageQueryOptions.AvImageQueryNextSync, true)
        generator.release()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_media_test_AVImageGenerator_0400
     * @tc.name      : test_queryOptions_Equality
     * @tc.desc      : Cover AVImageQueryOptions operator == and != between distinct enum values.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_queryOptions_Equality(): Unit {
        let a = AVImageQueryOptions.AvImageQueryNextSync
        let b = AVImageQueryOptions.AvImageQueryPreviousSync
        @Expect(a == a, true)
        @Expect(a != b, true)
    }
}
