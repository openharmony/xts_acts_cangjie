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
import std.unittest.*
import std.unittest.common.*
internal import ohos.resource_manager.RawFileDescriptor
import ohos.multimedia.image.*
import ohos.device_info.*
import ohos.business_exception.BusinessException

let colors: Array<UInt8> = Array<UInt8>(96, repeat: 0)
let pixelMap = createPixelMap(colors, InitializationOptions(Size(4, 6), editable: true, pixelFormat: Rgba8888))
let imageSource = createImageSource(hw)
let sourceOption = SourceOptions(0, sourcePixelFormat: Bgra8888)

@Test
class Test_image {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0300
     * @tc.name      : test_Packer_01
     * @tc.desc      : test Image test_Packer_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Packer_01(): Unit {
        let imagePacker = createImagePacker()
        let supportedFormats = imagePacker.supportedFormats
        @Expect(supportedFormats.toString().contains("image/gif"))
    
        Hilog.info(0, "cangjietest", "supportedFormats.toString: ${supportedFormats.toString()}")
        unsafe {
            let format = "image/Jpeg"
            let packingOption = PackingOption(format, 98)
            let packFormat = packingOption.format
            @Expect(packFormat.toString(), "image/Jpeg")
            let packRes = imagePacker.packToData(pixelMap, packingOption)
            @Expect(packRes.size, 759)
            let filePath = "/data/storage/el1/base/temp.txt"
            let file = FileIo.open(filePath, mode: (OpenMode.CREATE
                | OpenMode.READ_WRITE))
            imagePacker.packToFile(pixelMap, Int32(file.fd), packingOption)
            FileIo.close(file)
            FileIo.unlink(filePath)
            imagePacker.release()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0400
     * @tc.name      : test_Packer_02
     * @tc.desc      : test Image test_Packer_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Packer_02(): Unit {
        let imagePacker = createImagePacker()
        unsafe {
            let format = "image/Jpeg"
            let packingOption = PackingOption(format, 50)
            let packRes = imagePacker.packToData(imageSource, packingOption)
            @Expect(packRes.size>0)
            let filePath = "/data/storage/el1/base/temp.txt"
            let file = FileIo.open(filePath, mode: (OpenMode.CREATE
                | OpenMode.READ_WRITE))
            imagePacker.packToFile(imageSource, Int32(file.fd), packingOption)
            FileIo.close(file)
            FileIo.unlink(filePath)
            imagePacker.release()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0500
     * @tc.name      : test_ImageReceive
     * @tc.desc      : test Image test_ImageReceive
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageReceive(): Unit {
        let imageReceiver = createImageReceiver(Size(8192, 8), ImageFormat.Jpeg, 8)
        @Expect(imageReceiver.size.width, 8)
        @Expect(imageReceiver.size.height, 8192)
        @Expect(imageReceiver.format, ImageFormat.Jpeg)
        @Expect(imageReceiver.capacity, 8)
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(Int64.tryParse(id).isSome(), true)
        imageReceiver.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0600
     * @tc.name      : test_ImageReceive_exception
     * @tc.desc      : test Image test_ImageReceive_exception
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageReceive_exception(): Unit {
        try {
            let imageReceiver = createImageReceiver(Size(-1, -1), ImageFormat.Jpeg, 8)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0700
     * @tc.name      : test_PixelMap_01
     * @tc.desc      : test Image test_PixelMap_01
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
        @Expect(pixelMap.getDensity(), 0)
        @Expect(pixelMap.getBytesNumberPerRow(),24)
        @Expect(pixelMap.getPixelBytesNumber(),96)
        var buffer = Array<UInt8>(96, repeat: 0)
        pixelMap.readPixelsToBuffer(buffer)
        @Expect(buffer, colors)
        let buf1 = Array<UInt8>(8, {i => UInt8(i + 1)})
        var area = PositionArea(buf1, 0, 8, Region(Size(1, 2), 0, 0))
        pixelMap.writePixels(area)
        let expect: Array<UInt8> = [0, 0, 0, 4, 0, 0, 0, 8]
        let buf2 = Array<UInt8>(8, repeat: 0)
        area = PositionArea(buf2, 0, 8, Region(Size(1, 2), 0, 0))
        pixelMap.readPixels(area)
        @Expect(expect, buf2)
        buffer = Array<UInt8>(96, {i => UInt8(i)})
        pixelMap.writeBufferToPixels(buffer)
        pixelMap.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_0900
     * @tc.name      : test_PixelMap_02
     * @tc.desc      : test Image test_PixelMap_02
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
        @Expect(imageInfo.density, 0)
        pMap.opacity(0.5f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.scale(2.0f32, 1.0f32)
        pMap.translate(50.0f32, 10.0f32)
        pMap.rotate(90.0f32)
        pMap.flip(true, false)
        let region = Region(Size(100, 100), 0, 0)
        pMap.crop(region)
        let alphaPixelMap = pMap.createAlphaPixelMap()
        var colorSpaceManager = create(AdobeRgb1998)
        alphaPixelMap.setColorSpace(colorSpaceManager)
        let colorSpace1 = alphaPixelMap.getColorSpace()
        @Expect(colorSpace1.getColorSpaceType().toString(), "ColorSpace.AdobeRgb1998")
        colorSpaceManager = create(Srgb)
        alphaPixelMap.applyColorSpace(colorSpaceManager)
        let colorSpace2 = alphaPixelMap.getColorSpace()
        @Expect(colorSpace2.getColorSpaceType().toString(), "ColorSpace.Srgb")
        alphaPixelMap.release()
        pMap.release()
        imageSource.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1100
     * @tc.name      : test_ImageSource_03
     * @tc.desc      : test Image test_ImageSource_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_03(): Unit {
        let bufSource = createImageSource(hw, sourceOption)
        let maps = bufSource.createPixelMapList()
        @Expect(maps.size, 1)
        try {
            bufSource.getImageProperty(ImageLength, options: ImagePropertyOptions())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Image decoding exif support.")
            @Expect(e.code, 62980123i32)
        }
        try {
            bufSource.modifyImageProperty(ImageLength, "200")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"The EXIF data failed to be written to the file.")
            @Expect(e.code, 62980146i32)
        }
        try {
            bufSource.getDelayTimeList()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "${e.message}")
            @Expect(e.message, "Invalid MIME type for the image source.")
            @Expect(e.code, 62980149i32)
        }
        bufSource.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1200
     * @tc.name      : test_Exception_01
     * @tc.desc      : test Image test_Exception_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_01(): Unit {
        try {
            createImageSource("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1300
     * @tc.name      : test_Exception_02
     * @tc.desc      : test Image test_Exception_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_02(): Unit {
        try {
            createImageSource("", sourceOption)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1400
     * @tc.name      : test_Exception_03
     * @tc.desc      : test Image test_Exception_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_03(): Unit {
        try {
            createImageSource([])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1500
     * @tc.name      : test_Exception_04
     * @tc.desc      : test Image test_Exception_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_04(): Unit {
        try {
            createImageSource([], sourceOption)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid image parameter.")
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1600
     * @tc.name      : test_Exception_05
     * @tc.desc      : test Image test_Exception_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_05(): Unit {
        createImageSource(0)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1700
     * @tc.name      : test_Exception_06
     * @tc.desc      : test Image test_Exception_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Exception_06(): Unit {
        createImageSource(0, sourceOption)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1800
     * @tc.name      : test_PropertyKey
     * @tc.desc      : test Image test_PropertyKey
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
        @Expect(PropertyKey.Flash.toString(), "Flash")
        @Expect(FocalLength.toString(), "FocalLength")
        @Expect(SceneFoodConf.toString(), "HwMnoteSceneFoodConf")
        @Expect(SceneStageConf.toString(), "HwMnoteSceneStageConf")
        @Expect(SceneBlueSkyConf.toString(), "HwMnoteSceneBlueSkyConf")
        @Expect(SceneGreenPlantConf.toString(), "HwMnoteSceneGreenPlantConf")
        @Expect(SceneBeachConf.toString(), "HwMnoteSceneBeachConf")
        @Expect(SceneSnowConf.toString(), "HwMnoteSceneSnowConf")
        @Expect(SceneSunsetConf.toString(), "HwMnoteSceneSunsetConf")
        @Expect(SceneFlowersConf.toString(), "HwMnoteSceneFlowersConf")
        @Expect(SceneNightConf.toString(), "HwMnoteSceneNightConf")
        @Expect(SceneTextConf.toString(), "HwMnoteSceneTextConf")
        @Expect(FaceCount.toString(), "HwMnoteFaceCount")
        @Expect(CaptureMode.toString(), "HwMnoteCaptureMode")
        @Expect(RollAngle.toString(), "HwMnoteRollAngle")
        @Expect(PitchAngle.toString(), "HwMnotePitchAngle")
        @Expect(PhysicalAperture.toString(), "HwMnotePhysicalAperture")
        @Expect(FocusMode.toString(), "HwMnoteFocusMode")
        @Expect(UserComment.toString(), "UserComment")
        @Expect(PixelXDimension.toString(), "PixelXDimension")
        @Expect(PixelYDimension.toString(), "PixelYDimension")
        @Expect(SceneType.toString(), "SceneType")
        @Expect(WhiteBalance.toString(), "WhiteBalance")
        @Expect(FocalLengthIn35mmFilm.toString(), "FocalLengthIn35mmFilm")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_1900
     * @tc.name      : test_Enum_03
     * @tc.desc      : test Image test_Enum_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Enum_03(): Unit {
        @Expect(PixelMapFormat.Unknown.toString(), "PixelMapFormat.Unknown")
        @Expect(Rgb565.toString(), "PixelMapFormat.Rgb565")
        @Expect(Rgba8888.toString(), "PixelMapFormat.Rgba8888")
        @Expect(Bgra8888.toString(), "PixelMapFormat.Bgra8888")
        @Expect(Rgb888.toString(), "PixelMapFormat.Rgb888")
        @Expect(Alpha8.toString(), "PixelMapFormat.Alpha8")
        @Expect(RgbaF16.toString(), "PixelMapFormat.RgbaF16")
        @Expect(Nv21.toString(), "PixelMapFormat.Nv21")
        @Expect(Nv12.toString(), "PixelMapFormat.Nv12")
        @Expect(AlphaType.Unknown.toString(), "AlphaType.Unknown")
        @Expect(Opaque.toString(), "AlphaType.Opaque")
        @Expect(Premul.toString(), "AlphaType.Premul")
        @Expect(UnPremul.toString(), "AlphaType.UnPremul")
        @Expect(FitTargetSize.toString(), "ScaleMode.FitTargetSize")
        @Expect(CenterCrop.toString(), "ScaleMode.CenterCrop")
        @Expect(Ycbcr422Sp.toString(), "ImageFormat.Ycbcr422Sp")
        @Expect(ImageFormat.Jpeg.toString(), "ImageFormat.Jpeg")
        @Expect(YuvY.toString(), "ComponentType.YuvY")
        @Expect(YuvU.toString(), "ComponentType.YuvU")
        @Expect(YuvV.toString(), "ComponentType.YuvV")
        @Expect(ComponentType.Jpeg.toString(), "ComponentType.Jpeg")
        let color = Array<UInt8>(16, repeat: 0)
        let opts = InitializationOptions(Size(2i32, 2i32), editable: true, alphaType: AlphaType.UnPremul,
            pixelFormat: Rgba8888, scaleMode: ScaleMode.FitTargetSize)
        let pm = createPixelMap(color, opts)
        @Expect(pm.getImageInfo().pixelFormat, Rgba8888)
        let badOpts = InitializationOptions(Size(1i32, 1i32), editable: true, alphaType: AlphaType.Unknown,
            pixelFormat: PixelMapFormat.Unknown, scaleMode: ScaleMode.FitTargetSize)
        try {
            let _ = createPixelMap(Array<UInt8>(0, repeat: 0), badOpts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980115i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_2300
     * @tc.name      : test_PackingDynamicRange
     * @tc.desc      : test Image test_PackingDynamicRange
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_PackingDynamicRange(): Unit {
        @Expect(PackingDynamicRange.Auto.toString(), "PackingDynamicRange.Auto")
        @Expect(PackingDynamicRange.Sdr.toString(), "PackingDynamicRange.Sdr")
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_2500
     * @tc.name      : test_ImageSource_getDisposalTypeList
     * @tc.desc      : test Image test_ImageSource_getDisposalTypeList
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getDisposalTypeList(): Unit {
        try {
            let imagesource = createImageSource("/data/storage/el1/base/test1.gif")
            let arr: Array<Int32> = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
                2, 2, 2]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110)
            @Expect(e.message, "The image source data is abnormal.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_2600
     * @tc.name      : test_ImageSource_PropertyKey
     * @tc.desc      : test Image test_ImageSource_PropertyKey
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_PropertyKey(): Unit {
        try {
            let imagesource = createImageSource("/data/storage/el1/base/test1.jpg")
            let formats = imagesource.supportedFormats
            Hilog.info(0, "cangjietest", "test_ImageSource_PropertyKey:${formats}")
            imagesource.modifyImageProperty(ImageWidth, "4000")
            imagesource.modifyImageProperty(ImageLength, "3000")
            let res1 = imagesource.getImageProperty(ImageWidth)
            let res2 = imagesource.getImageProperty(ImageLength)
            @Expect(res1, "4000")
            @Expect(res2, "3000")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980110i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_2800
     * @tc.name      : test_createPixelMap
     * @tc.desc      : test Image test_createPixelMap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPixelMap(): Unit {
        let opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: Rgba8888)
        let pixelMap = createPixelMap(colors, opts)
        let info = pixelMap.getImageInfo()
        @Expect(pixelMap.isEditable, true)
        @Expect(info.pixelFormat, Rgba8888)
        @Expect(info.size.height, 4)
        @Expect(info.size.width, 6)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_2900
     * @tc.name      : test_createPremultipliedPixelMap
     * @tc.desc      : test Image test_createPremultipliedPixelMap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createPremultipliedPixelMap(): Unit {
        let color = Array<UInt8>(16, repeat: 0)
        for (i in 0..16 : 4) {
            color[i] = 255
            color[i + 1] = 255
            color[i + 2] = 122
            color[i + 3] = 122
        }
        let opts = InitializationOptions(Size(2, 2), editable: true, pixelFormat: Rgba8888, alphaType: UnPremul)
        let srcPixelmap = createPixelMap(color, opts)
        let dstPixelMap = createPixelMap(color, opts)
        @Expect(srcPixelmap.isEditable, true)
        let srcInfo = srcPixelmap.getImageInfo()
        @Expect(srcInfo.pixelFormat, Rgba8888)
        @Expect(srcInfo.size.width, 2)
        @Expect(srcInfo.size.height, 2)
        @Expect(dstPixelMap.isEditable, true)
        let dstInfo = dstPixelMap.getImageInfo()
        @Expect(dstInfo.size.width, 2)
        @Expect(dstInfo.size.height, 2)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_3000
     * @tc.name      : test_createUnPremultipliedPixelMap
     * @tc.desc      : test Image test_createUnPremultipliedPixelMap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createUnPremultipliedPixelMap(): Unit {
        let color = Array<UInt8>(16, repeat: 0)
        for (i in 0..16 : 4) {
            color[i] = 255
            color[i + 1] = 255
            color[i + 2] = 122
            color[i + 3] = 122
        }
        let opts = InitializationOptions(Size(2, 2), editable: true, pixelFormat: Rgba8888, alphaType: Premul)
        let srcPixelmap = createPixelMap(color, opts)
        @Expect(srcPixelmap.isEditable, true)
        let info = srcPixelmap.getImageInfo()
        @Expect(info.pixelFormat, Rgba8888)
        @Expect(info.size.width, 2)
        @Expect(info.size.height, 2)
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_image_3200
     * @tc.name      : test_createImageSource_rawfd
     * @tc.desc      : test Image test_createImageSource_rawfd
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createImageSource_rawfd(): Unit {
        let resMgr = getResourceManager()
        let jpg = resMgr.getRawFd("test.jpg")
        let imageSource = createImageSource(jpg.fd)
        resMgr.closeRawFd("test.jpg")
        @Expect(true)
    }
}
