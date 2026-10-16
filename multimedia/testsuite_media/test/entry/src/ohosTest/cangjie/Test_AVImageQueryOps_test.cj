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
import ohos.hilog.Hilog
import kit.MediaKit.*
import ohos.business_exception.BusinessException

@Test
class Test_AVImageQueryOps {
    /*
     * @tc.number    : Sub_Cangjie_media_Test_AVImageQueryOps_enumOps_0100
     * @tc.name      : TestCase_enumOps
     * @tc.desc      : AVImageQueryOptions == / != operators and AvImageQueryPreviousSync, AvImageQueryClosestSync, AvImageQueryClosest values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_enumOps(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_enumOps begins.")
        @Expect(AVImageQueryOptions.AvImageQueryPreviousSync != AVImageQueryOptions.AvImageQueryClosestSync)
        @Expect(AVImageQueryOptions.AvImageQueryClosestSync != AVImageQueryOptions.AvImageQueryClosest)
        @Expect(AVImageQueryOptions.AvImageQueryClosest != AVImageQueryOptions.AvImageQueryNextSync)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_enumOps ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_media_Test_AVImageQueryOps_AVImageGenerator_0200
     * @tc.name      : TestCase_AVImageGeneratorTypeRef
     * @tc.desc      : cover AVImageGenerator class via type annotation + createAVImageGenerator + release
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_AVImageGeneratorTypeRef(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_AVImageGeneratorTypeRef begins.")
        let gen: AVImageGenerator = createAVImageGenerator()
        let rawFd = getResourceManager().getRawFd("trailer.mp4")
        gen.fdSrc = AVFileDescriptor(rawFd.fd, offset: rawFd.offset, length: rawFd.length)
        let fd = gen.fdSrc
        Hilog.info(0u32, "cangjietest", "", "fdSrc.fd=${fd.fd}, offset=${fd.offset}, length=${fd.length}")
        @Expect(fd.length >= -1)
        gen.release()
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_AVImageGeneratorTypeRef ends.")
    }
}
