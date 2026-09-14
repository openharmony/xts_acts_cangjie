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

func errTestMakePixelMap(): PixelMap {
    return createPixelMap(Array<UInt8>(16i64, repeat: 0u8),
        InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Premul, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize))
}

func errTestMakeBufferSource(): ImageSource {
    return createImageSource(Array<UInt8>(64i64, repeat: 0u8))
}

func errTestMakeJpegSource(): ImageSource {
    let pixelMap = createPixelMap(Array<UInt8>(256i64, repeat: 0u8),
        InitializationOptions(Size(4i32, 4i32), alphaType: AlphaType.Premul, editable: true,
            pixelFormat: PixelMapFormat.Rgba8888, scaleMode: ScaleMode.FitTargetSize))
    let imagePacker = createImagePacker()
    let packedData = imagePacker.packToData(pixelMap,
        PackingOption("image/jpeg", 100u8, bufferSize: 10485760u64))
    try {
        imagePacker.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "jpeg source packer release error code", e.code.toString())
    }
    try {
        pixelMap.release()
    } catch (e: BusinessException) {
        Hilog.error(0u32, "cangjietest", "jpeg source pixelmap release error code", e.code.toString())
    }
    return createImageSource(packedData)
}

@Test
class Test_image_errors {
    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0100
     * @tc.name      : Test_Err_PixelMap_Props_AfterRelease
     * @tc.desc      : Cover PixelMap.isEditable/isStrideAlignment error path (62980104)
     *                 by accessing the props after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_Props_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Props_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            let editable = pixelMap.isEditable
            Hilog.info(0u32, "cangjietest", "", "unexpected editable value")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let strideAligned = pixelMap.isStrideAlignment
            Hilog.info(0u32, "cangjietest", "", "unexpected strideAlignment value")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Props_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0200
     * @tc.name      : Test_Err_PixelMap_Info_AfterRelease
     * @tc.desc      : Cover PixelMap.getImageInfo/getBytesNumberPerRow/getPixelBytesNumber/
     *                 getDensity error path (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_Info_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Info_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            let info = pixelMap.getImageInfo()
            Hilog.info(0u32, "cangjietest", "", "unexpected image info size")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let rowBytes = pixelMap.getBytesNumberPerRow()
            Hilog.info(0u32, "cangjietest", "", "unexpected row bytes")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let totalBytes = pixelMap.getPixelBytesNumber()
            Hilog.info(0u32, "cangjietest", "", "unexpected total bytes")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let density = pixelMap.getDensity()
            Hilog.info(0u32, "cangjietest", "", "unexpected density")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Info_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0300
     * @tc.name      : Test_Err_PixelMap_BufferOps_AfterRelease
     * @tc.desc      : Cover PixelMap.readPixelsToBuffer/readPixels/writePixels/
     *                 writeBufferToPixels error path (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_BufferOps_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_BufferOps_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            pixelMap.readPixelsToBuffer(Array<UInt8>(8i64, repeat: 0u8))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.readPixels(PositionArea(Array<UInt8>(8i64, repeat: 0u8), 0u32, 4u32,
                Region(Size(1i32, 1i32), 0, 0)))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.writePixels(PositionArea(Array<UInt8>(8i64, repeat: 0u8), 0u32, 4u32,
                Region(Size(1i32, 1i32), 0, 0)))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.writeBufferToPixels(Array<UInt8>(8i64, repeat: 0u8))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_BufferOps_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0400
     * @tc.name      : Test_Err_PixelMap_Transforms_AfterRelease
     * @tc.desc      : Cover PixelMap.opacity/translate/rotate/flip/crop error path
     *                 (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_Transforms_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Transforms_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            pixelMap.opacity(0.5f32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.translate(1.0f32, 1.0f32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.rotate(90.0f32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.flip(true, true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.crop(Region(Size(1i32, 1i32), 0, 0))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Transforms_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0500
     * @tc.name      : Test_Err_PixelMap_Alpha_AfterRelease
     * @tc.desc      : Cover PixelMap.createAlphaPixelMap error path (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_Alpha_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Alpha_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            let alphaMap = pixelMap.createAlphaPixelMap()
            Hilog.info(0u32, "cangjietest", "", "unexpected alpha pixelmap")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_Alpha_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0600
     * @tc.name      : Test_Err_PixelMap_GetColorSpace_AfterRelease
     * @tc.desc      : Cover PixelMap.getColorSpace error path (62980101, image data
     *                 abnormal) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_GetColorSpace_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_GetColorSpace_AfterRelease begins.")
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            let gotColorSpace = pixelMap.getColorSpace()
            Hilog.info(0u32, "cangjietest", "", "unexpected color space")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980101i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_GetColorSpace_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0650
     * @tc.name      : Test_Err_PixelMap_SetColorSpace_AfterRelease
     * @tc.desc      : Cover PixelMap.setColorSpace error path (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PixelMap_SetColorSpace_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_SetColorSpace_AfterRelease begins.")
        let colorSpace = create(ColorSpace.Srgb)
        let pixelMap = errTestMakePixelMap()
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            pixelMap.setColorSpace(colorSpace)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PixelMap_SetColorSpace_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0700
     * @tc.name      : Test_Err_ImageSource_AfterRelease
     * @tc.desc      : Cover ImageSource.supportedFormats/getImageInfo/createPixelMapList/
     *                 getDelayTimeList/getFrameCount/updateData/modifyImageProperty error
     *                 path (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_AfterRelease begins.")
        let imageSource = errTestMakeBufferSource()
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        try {
            let formats = imageSource.supportedFormats
            Hilog.info(0u32, "cangjietest", "", "unexpected supported formats")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let info = imageSource.getImageInfo()
            Hilog.info(0u32, "cangjietest", "", "unexpected image info")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let pixelMaps = imageSource.createPixelMapList()
            Hilog.info(0u32, "cangjietest", "", "unexpected pixelmap list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let delayTimes = imageSource.getDelayTimeList()
            Hilog.info(0u32, "cangjietest", "", "unexpected delay time list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let frameCount = imageSource.getFrameCount()
            Hilog.info(0u32, "cangjietest", "", "unexpected frame count")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            imageSource.updateData(Array<UInt8>(8i64, repeat: 0u8), false, 0u32, 8u32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            imageSource.modifyImageProperty(PropertyKey.Orientation, "1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0800
     * @tc.name      : Test_Err_ImageSource_GarbageDecode
     * @tc.desc      : Cover ImageSource decoding error paths on corrupted source data:
     *                 getFrameCount/getDelayTimeList/createPixelMapList plugin-create
     *                 failure (62980118), getImageProperty incorrect data (62980110)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_GarbageDecode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_GarbageDecode begins.")
        let imageSource = errTestMakeBufferSource()
        try {
            let frameCount = imageSource.getFrameCount()
            Hilog.info(0u32, "cangjietest", "", "unexpected frame count")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980118i32)
        }
        try {
            let delayTimes = imageSource.getDelayTimeList()
            Hilog.info(0u32, "cangjietest", "", "unexpected delay time list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980118i32)
        }
        try {
            let pixelMaps = imageSource.createPixelMapList()
            Hilog.info(0u32, "cangjietest", "", "unexpected pixelmap list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980118i32)
        }
        try {
            let orientation = imageSource.getImageProperty(PropertyKey.Orientation)
            Hilog.info(0u32, "cangjietest", "", "unexpected orientation")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_GarbageDecode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_0900
     * @tc.name      : Test_Err_ImageSource_ModifyProperty_InvalidExif
     * @tc.desc      : Cover ImageSource.modifyImageProperty invalid EXIF value error path
     *                 (62980135) with an out-of-domain Orientation value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_ModifyProperty_InvalidExif(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_InvalidExif begins.")
        let imageSource = errTestMakeBufferSource()
        try {
            imageSource.modifyImageProperty(PropertyKey.Orientation, "invalid_orientation")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980135i32)
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_InvalidExif ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1000
     * @tc.name      : Test_Err_ImagePacker_AfterRelease
     * @tc.desc      : Cover ImagePacker.supportedFormats and packToFile error path
     *                 (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImagePacker_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImagePacker_AfterRelease begins.")
        let imagePacker = createImagePacker()
        let pixelMap = errTestMakePixelMap()
        try {
            imagePacker.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imagePacker.release error code", e.code.toString())
        }
        try {
            let formats = imagePacker.supportedFormats
            Hilog.info(0u32, "cangjietest", "", "unexpected supported formats")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980098i32)
        }
        try {
            imagePacker.packToFile(pixelMap, -1i32, PackingOption("image/jpeg", 100u8))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImagePacker_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1100
     * @tc.name      : Test_Err_ImagePacker_PackErrors
     * @tc.desc      : Cover ImagePacker.packToFile invalid fd (62980115), packToData
     *                 encode failure with too-small buffer (62980119) and corrupted-source
     *                 plugin-create failure (62980118) error paths
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImagePacker_PackErrors(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImagePacker_PackErrors begins.")
        let imagePacker = createImagePacker()
        let pixelMap = errTestMakePixelMap()
        let imageSource = errTestMakeBufferSource()
        try {
            imagePacker.packToFile(pixelMap, -1i32, PackingOption("image/jpeg", 100u8))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980115i32)
        }
        try {
            let packedData = imagePacker.packToData(pixelMap, PackingOption("image/jpeg", 100u8, bufferSize: 1u64))
            Hilog.info(0u32, "cangjietest", "", "unexpected packed data size")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980119i32)
        }
        try {
            let packedData = imagePacker.packToData(imageSource, PackingOption("image/jpeg", 100u8))
            Hilog.info(0u32, "cangjietest", "", "unexpected packed data size")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980118i32)
        }
        try {
            imagePacker.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imagePacker.release error code", e.code.toString())
        }
        try {
            pixelMap.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "pixelMap.release error code", e.code.toString())
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImagePacker_PackErrors ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1200
     * @tc.name      : Test_Err_ImageReceiver_AfterRelease
     * @tc.desc      : Cover ImageReceiver.capacity/format/getReceivingSurfaceId error path
     *                 (62980104) after release()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageReceiver_AfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageReceiver_AfterRelease begins.")
        let receiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 1i32)
        try {
            receiver.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "receiver.release error code", e.code.toString())
        }
        try {
            let cap = receiver.capacity
            Hilog.info(0u32, "cangjietest", "", "unexpected capacity")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let fmt = receiver.format
            Hilog.info(0u32, "cangjietest", "", "unexpected format")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        try {
            let surfaceId = receiver.getReceivingSurfaceId()
            Hilog.info(0u32, "cangjietest", "", "unexpected surface id")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageReceiver_AfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1300
     * @tc.name      : Test_Err_ImageSource_DelayTimeList_NonGif
     * @tc.desc      : Cover ImageSource.getDelayTimeList error path (62980149, invalid
     *                 MIME type for the image source) on a valid non-GIF JPEG source
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_DelayTimeList_NonGif(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_DelayTimeList_NonGif begins.")
        let imageSource = errTestMakeJpegSource()
        try {
            let delayTimes = imageSource.getDelayTimeList()
            Hilog.info(0u32, "cangjietest", "", "unexpected delay time list")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980149i32)
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_DelayTimeList_NonGif ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1400
     * @tc.name      : Test_Err_ImageSource_GetProperty_NoExif
     * @tc.desc      : Cover ImageSource.getImageProperty error path (62980123, the image
     *                 does not support EXIF decoding) on a packed JPEG without EXIF data
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_GetProperty_NoExif(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_GetProperty_NoExif begins.")
        let imageSource = errTestMakeJpegSource()
        try {
            let value = imageSource.getImageProperty(PropertyKey.DateTimeOriginal)
            Hilog.info(0u32, "cangjietest", "", "unexpected property value")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980123i32)
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_GetProperty_NoExif ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_errors_1500
     * @tc.name      : Test_Err_ImageSource_ModifyProperty_JpegInvalidExif
     * @tc.desc      : Cover ImageSource.modifyImageProperty error path (62980135, the
     *                 EXIF value is invalid) on a valid JPEG with an out-of-domain
     *                 Orientation value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ImageSource_ModifyProperty_JpegInvalidExif(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_JpegInvalidExif begins.")
        let imageSource = errTestMakeJpegSource()
        try {
            imageSource.modifyImageProperty(PropertyKey.Orientation, "invalid_orientation")
            Hilog.info(0u32, "cangjietest", "", "unexpected modify success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980135i32)
        }
        try {
            imageSource.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "imageSource.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_ImageSource_ModifyProperty_JpegInvalidExif ends.")
    }
}
