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

import kit.ImageKit.Component as ImageComponent
import kit.ImageKit.Image as ImageImage
import kit.ImageKit.*
import std.convert.*
import std.io.*
import kit.CoreFileKit.*
import kit.ArkGraphics2D.*
import std.process.*
import std.math.*
import std.unittest.testmacro.*
import ohos.base.*
import std.runtime.*
import std.sync.*
import std.time.*
internal import ohos.resource_manager.RawFileDescriptor
internal import ohos.resource_manager.ResourceManager
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.arkui.state_macro_manage.rawfile
import kit.PerformanceAnalysisKit.Hilog
import ohos.device_info.*
import ohos.business_exception.BusinessException

let colors: Array<UInt8> = Array<UInt8>(96, repeat: 0)
let pixelMap = createPixelMap(colors,
    InitializationOptions(Size(4, 6), editable: true, alphaType: AlphaType.Unknown, pixelFormat: Rgba8888,
        scaleMode: ScaleMode.FitTargetSize))
let imageSource = createImageSource(hw)
let sourceOption = SourceOptions(0, sourcePixelFormat: Bgra8888, sourceSize: Size(0, 0))

@Test
class Test_image {
    override func afterAll(): Unit {
        gc()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0300
     * @tc.name      : test_Packer_01
     * @tc.desc      : test ImageKit createImagePacker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Packer_01(): Unit {
        let imagePacker = createImagePacker()
        let supportedFormats = imagePacker.supportedFormats
        if (DeviceInfo.deviceType == "phone") {
            @Expect(supportedFormats.toString(), "[image/gif, image/heic, image/jpeg, image/png, image/webp]")
        } else {
            @Expect(supportedFormats.toString(), "[image/gif, image/jpeg, image/png, image/webp]")
        }

        unsafe {
            let format = "image/jpeg"
            let packingOption = PackingOption(format, 98)
            let packFormat = packingOption.format
            @Expect(packFormat.toString(), "image/jpeg")
            let packRes = imagePacker.packToData(pixelMap, packingOption)
            @Expect(packRes.size, 759)
            let filePath = "data/storage/el1/base/temp.txt"
            let file = FileIo.open(
                filePath,
                mode: (OpenMode.CREATE | OpenMode.READ_WRITE)
            )
            imagePacker.packToFile(pixelMap, Int32(file.fd), packingOption)
            FileIo.close(file)
            FileIo.unlink(filePath)
            imagePacker.release()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0400
     * @tc.name      : test_Packer_02
     * @tc.desc      : test ImageKit createImagePacker
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Packer_02(): Unit {
        let imagePacker = createImagePacker()
        unsafe {
            let format = "image/jpeg"
            let packingOption = PackingOption(format, 50)
            let packRes = imagePacker.packToData(imageSource, packingOption)
            @Expect(packRes.size>0)
            let filePath = "data/storage/el1/base/temp.txt"
            let file = FileIo.open(
                filePath,
                mode: (OpenMode.CREATE | OpenMode.READ_WRITE)
            )
            imagePacker.packToFile(imageSource, Int32(file.fd), packingOption)
            FileIo.close(file)
            FileIo.unlink(filePath)
            imagePacker.release()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0500
     * @tc.name      : test_ImageReceive
     * @tc.desc      : test ImageKit createImageReceiver
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageReceive(): Unit {
        var imageReceiver = createImageReceiver(Size(8192, 8), ImageFormat.Jpeg, 8)
        @Expect(imageReceiver.size.width, 8)
        @Expect(imageReceiver.size.height, 8192)
        @Expect(imageReceiver.format, ImageFormat.Jpeg)
        @Expect(imageReceiver.capacity, 8)
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(Int64.tryParse(id).isSome(), true)
        imageReceiver.release()

        try {
            imageReceiver = createImageReceiver(Size(8192, 8), ImageFormat.Ycbcr422Sp, 8)
            @Expect(imageReceiver.format, ImageFormat.Ycbcr422Sp)
            imageReceiver.release()
        } catch (e: Exception) {
            Hilog.info(0, "cangjietest", "imagetest", "createImageReceiver ImageFormat.Ycbcr422Sp: ${e}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0700
     * @tc.name      : test_PixelMap_01
     * @tc.desc      : test ImageKit writeBufferToPixels
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_01(): Unit {
        @Expect(pixelMap.isEditable, true)
        @Expect(pixelMap.isStrideAlignment, false)
        let imageInfo = pixelMap.getImageInfo()
        @Expect(imageInfo.size.width, 6)
        @Expect(imageInfo.size.height, 4)
        //        @Expect(imageInfo.density, 0)
        @Expect(pixelMap.getDensity(), 0)
        @Expect(pixelMap.getBytesNumberPerRow(),24)
        @Expect(pixelMap.getPixelBytesNumber(),96)
        var buffer = Array<UInt8>(96, repeat: 0)
        pixelMap.readPixelsToBuffer(buffer)
        @Expect(buffer, colors)

        //from artks
        let buf1 = Array<UInt8>(8, {i => UInt8(i + 1)})
        var area = PositionArea(buf1, 0, 8, Region(Size(1, 2), 0, 0))
        pixelMap.writePixels(area)
        let buf2 = Array<UInt8>(8, repeat: 0)
        area = PositionArea(buf2, 0, 8, Region(Size(1, 2), 0, 0))
        pixelMap.readPixels(area)

        buffer = Array<UInt8>(96, {i => UInt8(i)})
        pixelMap.writeBufferToPixels(buffer)
        pixelMap.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0800
     * @tc.name      : test_ImageSource_01
     * @tc.desc      : test ImageKit imageSource
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_01(): Unit {
        Hilog.info(0, "cangjietest", "imagetest", "test_ImageSource_01: ${imageSource.supportedFormats.toString()}")
        let formats = imageSource.supportedFormats.toString()
        let formatsSupported = ["image/bmp", "image/gif", "image/heic", "image/jpeg", "image/svg+xml", "image/webp"]
        if (DeviceInfo.deviceType == "phone") {
            let phoneFormatsContains = {
                =>
                for (fmt in formatsSupported) {
                    if (!formats.contains(fmt)) {
                        return false
                    }
                }
                true
            }()
            @Expect(phoneFormatsContains,true)
        } else {
            let notPhoneFormatsContains = {
                =>
                for (fmt in formatsSupported) {
                    if (!formats.contains(fmt)) {
                        return false
                    }
                }
                true
            }()
            @Expect(notPhoneFormatsContains,true)
        }
        @Expect(imageSource.getFrameCount(), 1)
        let imageInfo = imageSource.getImageInfo()
        @Expect(imageInfo.size.width, 200)
        @Expect(imageInfo.size.height, 200)
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_0900
     * @tc.name      : test_PixelMap_02
     * @tc.desc      : test ImageKit createAlphaPixelMap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PixelMap_02(): Unit {
        let pMap = imageSource.createPixelMap()
        let imageInfo = pMap.getImageInfo()
        Hilog.error(0, "cangjietest", "ohos density is ${imageInfo.density}")
        @Expect(imageInfo.size.width, 200)
        @Expect(imageInfo.size.height, 200)
        //        @Expect(imageInfo.density, 0)

        pMap.opacity(0.5f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.translate(50.0f32, 10.0f32)
        pMap.rotate(90.0f32)
        pMap.flip(true, false)
        let region = Region(Size(100, 100), 0, 0)
        pMap.crop(region)
        let alphaPixelMap = pMap.createAlphaPixelMap()
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_1300
     * @tc.name      : test_ImageSource_04
     * @tc.desc      : test ImageKit createImageSource
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_04(): Unit {
        try {
            let imgSource = createImageSource("data/storage/el1/base/EXIF.jpg", sourceOption)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "imagetest", "${e}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_1700
     * @tc.name      : test_Exception_04
     * @tc.desc      : test ImageKit createImageSource
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_04(): Unit {
        try {
            createImageSource("", sourceOption)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_2000
     * @tc.name      : test_PropertyKey
     * @tc.desc      : test ImageKit toString
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PropertyKey(): Unit {
        @Expect(ImageWidth.toString(), "ImageWidth")
        @Expect(ImageLength.toString(), "ImageLength")
        @Expect(BitsPerSample.toString(), "BitsPerSample")
        @Expect(ImageDescription.toString(), "ImageDescription")
        @Expect(Make.toString(), "Make")
        @Expect(Model.toString(), "Model")
        @Expect(Orientation.toString(), "Orientation")
        @Expect(PropertyKey.DateTime.toString(), "DateTime")
        @Expect(PhotoMode.toString(), "PhotoMode")
        @Expect(ExposureTime.toString(), "ExposureTime")
        @Expect(FNumber.toString(), "FNumber")
        @Expect(GpsLatitudeRef.toString(), "GPSLatitudeRef")
        @Expect(GpsLatitude.toString(), "GPSLatitude")
        @Expect(GpsLongitudeRef.toString(), "GPSLongitudeRef")
        @Expect(GpsLongitude.toString(), "GPSLongitude")

        @Expect(GpsTimestamp.toString(), "GPSTimeStamp")
        @Expect(GpsDateStamp.toString(), "GPSDateStamp")
        @Expect(IsoSpeedRatings.toString(), "ISOSpeedRatings")
        @Expect(SensitivityType.toString(), "SensitivityType")
        @Expect(StandardOutputSensitivity.toString(), "StandardOutputSensitivity")
        @Expect(RecommendedExposureIndex.toString(), "RecommendedExposureIndex")
        @Expect(IsoSpeedRatings.toString(), "ISOSpeedRatings")
        @Expect(DateTimeOriginal.toString(), "DateTimeOriginal")
        @Expect(ApertureValue.toString(), "ApertureValue")
        @Expect(ExposureBiasValue.toString(), "ExposureBiasValue")
        @Expect(MeteringMode.toString(), "MeteringMode")
        @Expect(LightSource.toString(), "LightSource")
        @Expect(Flash.toString(), "Flash")
        @Expect(FocalLength.toString(), "FocalLength")
        @Expect(UserComment.toString(), "UserComment")
        @Expect(PixelXDimension.toString(), "PixelXDimension")
        @Expect(PixelYDimension.toString(), "PixelYDimension")
        @Expect(WhiteBalance.toString(), "WhiteBalance")
        @Expect(FocalLengthIn35mmFilm.toString(), "FocalLengthIn35mmFilm")
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_2100
     * @tc.name      : test_Enum_03
     * @tc.desc      : test ImageKit Enum
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Enum_03(): Unit {
        @Expect(PixelMapFormat.Unknown, PixelMapFormat.Unknown)
        @Expect(Rgb565, Rgb565)
        @Expect(Rgba8888, Rgba8888)
        @Expect(Bgra8888, Bgra8888)
        @Expect(Rgb888, Rgb888)
        @Expect(Alpha8, Alpha8)
        @Expect(RgbaF16, RgbaF16)
        @Expect(Nv21, Nv21)
        @Expect(Nv12, Nv12)
        @Expect(AlphaType.Unknown, AlphaType.Unknown)
        @Expect(Premul, Premul)
        @Expect(UnPremul, UnPremul)
        @Expect(FitTargetSize, FitTargetSize)
        @Expect(CenterCrop, CenterCrop)
        @Expect(Ycbcr422Sp, Ycbcr422Sp)
        @Expect(ImageFormat.Jpeg, ImageFormat.Jpeg)
        @Expect(YuvY, YuvY)
        @Expect(YuvU, YuvU)
        @Expect(YuvV, YuvV)
        @Expect(ComponentType.Jpeg, ComponentType.Jpeg)
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_2500
     * @tc.name      : test_PackingDynamicRange
     * @tc.desc      : test ImageKit PackingDynamicRange
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PackingDynamicRange(): Unit {
        @Expect(PackingDynamicRange.Auto, PackingDynamicRange.Auto)
        @Expect(PackingDynamicRange.Sdr, PackingDynamicRange.Sdr)
    }

    /*
     * @tc.number    : Sub_Cangjie_ImageKit_Test_image_3500
     * @tc.name      : test_createPremultipliedPixelMap_error
     * @tc.desc      : test ImageKit createPixelMap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPremultipliedPixelMap_error(): Unit {
        let color = Array<UInt8>(0, repeat: 0)
        let opts = InitializationOptions(Size(1i32, 1i32), alphaType: AlphaType.Unknown, editable: true,
            pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize)
        try {
            let srcPixelmap = createPixelMap(color, opts)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "imagetest", "test_createPremultipliedPixelMap_error is ${e}")
        }
    }
}
