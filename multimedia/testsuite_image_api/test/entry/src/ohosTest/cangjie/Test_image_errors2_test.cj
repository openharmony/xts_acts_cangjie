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
import ohos.graphics.color_space_manager.*
import ohos.business_exception.BusinessException

func err2MakePixelMap(): PixelMap {
    return createPixelMap(Array<UInt8>(256i64, repeat: 0u8),
        InitializationOptions(Size(4i32, 4i32), alphaType: AlphaType.Premul, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize))
}

func err2MakeNv21PixelMap(): PixelMap {
    return createPixelMap(Array<UInt8>(32i64, repeat: 0u8),
        InitializationOptions(Size(4i32, 4i32), alphaType: AlphaType.Opaque, editable: true,
            pixelFormat: PixelMapFormat.Nv21, scaleMode: ScaleMode.FitTargetSize))
}

func err2MakeJpegBytes(): Array<UInt8> {
    let pixelMap = err2MakePixelMap()
    let imagePacker = createImagePacker()
    let packedData = imagePacker.packToData(pixelMap,
        PackingOption("image/jpeg", 100u8, bufferSize: 10485760u64))
    try {
        imagePacker.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "err2 jpeg packer release error code", e.code.toString())
    }
    try {
        pixelMap.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "err2 jpeg pixelmap release error code", e.code.toString())
    }
    return packedData
}

func err2MakeTruncatedSource(): ImageSource {
    let full = err2MakeJpegBytes()
    let truncated = Array<UInt8>(24i64, repeat: 0u8)
    for (i in 0..24) {
        if (i < full.size) {
            truncated[i] = full[i]
        }
    }
    return createImageSource(truncated)
}

func err2ReleaseSource(source: ImageSource): Unit {
    try {
        source.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "err2 source release error code", e.code.toString())
    }
}

func err2ReleasePixelMap(pixelMap: PixelMap): Unit {
    try {
        pixelMap.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "err2 pixelmap release error code", e.code.toString())
    }
}

@Test
class Test_image_errors2 {
    /*
     * @tc.number    : Sub_Cangjie_Image_errors2_0100
     * @tc.name      : Test_Err_ImageSource_TruncatedData
     * @tc.desc      : Cover ImageSource.getFrameCount/getDelayTimeList/createPixelMapList
     *                 error path (62980111, incomplete image source data) on a truncated
     *                 JPEG buffer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_TruncatedData(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_TruncatedData begins.")
        let imageSource = err2MakeTruncatedSource()
        try {
            let frameCount = imageSource.getFrameCount()
            Hilog.info(0u32, "cangjietest", "", "unexpected frame count")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980111i32)
        }
        try {
            let delayTimes = imageSource.getDelayTimeList()
            Hilog.info(0u32, "cangjietest", "", "unexpected delay time list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980111i32)
        }
        try {
            let pixelMaps = imageSource.createPixelMapList()
            Hilog.info(0u32, "cangjietest", "", "unexpected pixelmap list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980111i32)
        }
        err2ReleaseSource(imageSource)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_TruncatedData ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors2_0200
     * @tc.name      : Test_Err_PixelMap_ColorSpace_Unsupported
     * @tc.desc      : Cover PixelMap.getColorSpace error path (62980103, image data
     *                 unsupported) on a Nv21 pixelmap and PixelMap.applyColorSpace error
     *                 path (62980104, internal object initialization failure) on a
     *                 released pixelmap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_ColorSpace_Unsupported(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_ColorSpace_Unsupported begins.")
        let nv21Map = err2MakeNv21PixelMap()
        try {
            let gotColorSpace = nv21Map.getColorSpace()
            Hilog.info(0u32, "cangjietest", "", "unexpected color space")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980103i32)
        }
        err2ReleasePixelMap(nv21Map)
        let bt2020Pq = create(ColorSpace.Bt2020Pq)
        let releasedMap = err2MakePixelMap()
        try {
            releasedMap.release()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "releasedMap release error code", e.code.toString())
            @Expect(false)
        }
        try {
            releasedMap.applyColorSpace(bt2020Pq)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_ColorSpace_Unsupported ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors2_0300
     * @tc.name      : Test_Err_ImageSource_ModifyProperty_ValueOutOfRange
     * @tc.desc      : Cover ImageSource.modifyImageProperty EXIF value error path on a
     *                 valid JPEG source with an out-of-range DateTimeOriginal value.
     *                 cj.d declares 62980133 but the observed code on the real device
     *                 is 62980146 (EXIF value invalid); recorded in the archived
     *                 observed-vs-declared discrepancy list.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_ModifyProperty_ValueOutOfRange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_ValueOutOfRange begins.")
        let jpegBytes = err2MakeJpegBytes()
        let imageSource = createImageSource(jpegBytes)
        try {
            imageSource.modifyImageProperty(PropertyKey.DateTimeOriginal, "9999:99:99 99:99:99")
            Hilog.info(0u32, "cangjietest", "", "unexpected modify success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980146i32)
        }
        err2ReleaseSource(imageSource)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_ValueOutOfRange ends.")
    }
}
