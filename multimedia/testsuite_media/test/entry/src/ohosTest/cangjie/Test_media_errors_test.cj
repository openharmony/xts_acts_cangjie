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
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.MediaKit.*
import ohos.base.*
import ohos.business_exception.BusinessException
import ohos.hilog.Hilog
import ohos.raw_file_descriptor.RawFileDescriptor

func getErrorsRawFd(name: String): RawFileDescriptor {
    return getResourceManager().getRawFd(name)
}

func setErrorsValidSource(gen: AVImageGenerator): Unit {
    let rawFd = getErrorsRawFd("trailer.mp4")
    gen.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
}

func releaseErrorsGenerator(gen: AVImageGenerator): Unit {
    try {
        gen.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "generator.release error code", e.code.toString())
    }
}

@Test
class Test_media_errors {
    /*
     * @tc.number    : Sub_Cangjie_media_errors_0100
     * @tc.name      : Test_Err_AVImageGen_FetchFrame_NoSource
     * @tc.desc      : Cover AVImageGenerator.fetchFrameByTime error path (5400101)
     *                 by fetching a frame before any data source is set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_AVImageGen_FetchFrame_NoSource(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AVImageGen_FetchFrame_NoSource begins.")
        let gen = createAVImageGenerator()
        try {
            let pic = gen.fetchFrameByTime(0, AVImageQueryOptions.AvImageQueryNextSync,
                PixelMapParams(width: 300, height: 300))
            pic.getImageInfo()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "fetchFrame without source error code", e.code.toString())
            @Expect(e.code, 5400101i32)
        }
        releaseErrorsGenerator(gen)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AVImageGen_FetchFrame_NoSource ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_media_errors_0200
     * @tc.name      : Test_Err_AVImageGen_FetchFrame_UseAfterRelease
     * @tc.desc      : Cover AVImageGenerator.fetchFrameByTime error path (5400101)
     *                 by fetching a frame after the instance was released
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_AVImageGen_FetchFrame_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AVImageGen_FetchFrame_UseAfterRelease begins.")
        let gen = createAVImageGenerator()
        setErrorsValidSource(gen)
        gen.release()
        try {
            let pic = gen.fetchFrameByTime(0, AVImageQueryOptions.AvImageQueryNextSync,
                PixelMapParams(width: 300, height: 300))
            pic.getImageInfo()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "fetchFrame after release error code", e.code.toString())
            @Expect(e.code, 5400101i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AVImageGen_FetchFrame_UseAfterRelease ends.")
    }
}
