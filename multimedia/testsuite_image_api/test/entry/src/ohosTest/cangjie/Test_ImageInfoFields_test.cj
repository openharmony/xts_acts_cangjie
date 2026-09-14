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
class Test_ImageInfoFields {
    /*
     * @tc.number    : Sub_Cangjie_Test_ImageInfoFields_stride_0100
     * @tc.name      : TestCase_stride
     * @tc.desc      : ImageInfo.stride field (bytes per row, width 6 * Rgba8888 4 bytes = 24)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_stride(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_stride begins.")
        let colors = Array<UInt8>(96, repeat: 0u8)
        let opts = InitializationOptions(Size(4i32, 6i32), alphaType: AlphaType.Unknown, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize)
        let pixelMap = createPixelMap(colors, opts)
        let imageInfo = pixelMap.getImageInfo()
        @Expect(imageInfo.stride, 24i32)
        pixelMap.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_stride ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageInfoFields_mimeType_0200
     * @tc.name      : TestCase_mimeType
     * @tc.desc      : ImageInfo.mimeType field access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_mimeType(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_mimeType begins.")
        let colors = Array<UInt8>(96, repeat: 0u8)
        let opts = InitializationOptions(Size(4i32, 6i32), alphaType: AlphaType.Unknown, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize)
        let pixelMap = createPixelMap(colors, opts)
        let imageInfo = pixelMap.getImageInfo()
        let mt = imageInfo.mimeType
        Hilog.info(0, "cangjietest", "", "ImageInfo.mimeType = ${mt}")
        @Expect(mt, "")
        pixelMap.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_mimeType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageInfoFields_isHdr_0300
     * @tc.name      : TestCase_isHdr
     * @tc.desc      : ImageInfo.isHdr field (created SDR PixelMap -> false)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_isHdr(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_isHdr begins.")
        let colors = Array<UInt8>(96, repeat: 0u8)
        let opts = InitializationOptions(Size(4i32, 6i32), alphaType: AlphaType.Unknown, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize)
        let pixelMap = createPixelMap(colors, opts)
        let imageInfo = pixelMap.getImageInfo()
        @Expect(imageInfo.isHdr, false)
        pixelMap.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_isHdr ends.")
    }
}
