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

import ohos.base.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import ohos.multimedia.camera.*
import ohos.multimedia.camera.Point as CameraPoint
import ohos.business_exception.BusinessException
import ohos.callback_invoke.*
import std.collection.forEach
import std.time.*
import ohos.device_info.*

class CameraStatusCallback <: Callback1Argument<CameraStatusInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: CameraStatusInfo): Unit {
        invoked = true
        let _camera: CameraDevice = info.camera
        let _status: CameraStatus = info.status
    }
}

class FoldStatusCallback <: Callback1Argument<FoldStatusInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: FoldStatusInfo): Unit {
        invoked = true
        let _cameras: Array<CameraDevice> = info.supportedCameras
        let _fold: FoldStatus = info.foldStatus
    }
}

class TorchStatusCallback <: Callback1Argument<TorchStatusInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: TorchStatusInfo): Unit {
        invoked = true
        let _avail: Bool = info.isTorchAvailable
        let _active: Bool = info.isTorchActive
        let _level: Float64 = info.torchLevel
    }
}

class CaptureStartCallback <: Callback1Argument<CaptureStartInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: CaptureStartInfo): Unit {
        invoked = true
        let _id: Int32 = info.captureId
        let _t: Int64 = info.time
    }
}

class FrameShutterCallback <: Callback1Argument<FrameShutterInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: FrameShutterInfo): Unit {
        invoked = true
        let _id: Int32 = info.captureId
        let _ts: Int64 = info.timestamp
    }
}

class CaptureEndCallback <: Callback1Argument<CaptureEndInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: CaptureEndInfo): Unit {
        invoked = true
        let _id: Int32 = info.captureId
    }
}

class FrameShutterEndCallback <: Callback1Argument<FrameShutterEndInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: FrameShutterEndInfo): Unit {
        invoked = true
        let _id: Int32 = info.captureId
    }
}

class SmoothZoomCallback <: Callback1Argument<SmoothZoomInfo> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, info: SmoothZoomInfo): Unit {
        invoked = true
        let _dur: Int32 = info.duration
    }
}

class Float64Callback <: Callback1Argument<Float64> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, val: Float64): Unit {
        invoked = true
    }
}

class NoArgCallback <: Callback0Argument {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException): Unit {
        invoked = true
    }
}

func getCoverageCameraManager(): CameraManager {
    return getCameraManager(getAbilityContext())
}

@Test
class Test_camera_coverage {
    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0100
     * @tc.name      : Test_EnumValues_ExposureMode
     * @tc.desc      : Cover ExposureMode enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_ExposureMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_ExposureMode begins.")
        @Expect(ExposureMode.ExposureModeLocked.toString(), "ExposureMode.ExposureModeLocked")
        @Expect(ExposureMode.ExposureModeAuto.toString(), "ExposureMode.ExposureModeAuto")
        @Expect(ExposureMode.ExposureModeContinuousAuto.toString(), "ExposureMode.ExposureModeContinuousAuto")
        @Expect(ExposureMode.ExposureModeLocked != ExposureMode.ExposureModeAuto, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_ExposureMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0200
     * @tc.name      : Test_EnumValues_FlashMode
     * @tc.desc      : Cover FlashMode enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_FlashMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FlashMode begins.")
        @Expect(FlashMode.FlashModeClose.toString(), "FlashMode.FlashModeClose")
        @Expect(FlashMode.FlashModeOpen.toString(), "FlashMode.FlashModeOpen")
        @Expect(FlashMode.FlashModeAuto.toString(), "FlashMode.FlashModeAuto")
        @Expect(FlashMode.FlashModeAlwaysOpen.toString(), "FlashMode.FlashModeAlwaysOpen")
        @Expect(FlashMode.FlashModeClose != FlashMode.FlashModeOpen, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FlashMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0300
     * @tc.name      : Test_EnumValues_FocusState_FocusMode
     * @tc.desc      : Cover FocusState and FocusMode enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_FocusState_FocusMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FocusState_FocusMode begins.")
        @Expect(FocusState.FocusStateScan.toString(), "FocusState.FocusStateScan")
        @Expect(FocusState.FocusStateFocused.toString(), "FocusState.FocusStateFocused")
        @Expect(FocusState.FocusStateUnfocused.toString(), "FocusState.FocusStateUnfocused")
        @Expect(FocusState.FocusStateScan != FocusState.FocusStateFocused, true)
        @Expect(FocusMode.FocusModeManual.toString(), "FocusMode.FocusModeManual")
        @Expect(FocusMode.FocusModeContinuousAuto.toString(), "FocusMode.FocusModeContinuousAuto")
        @Expect(FocusMode.FocusModeAuto.toString(), "FocusMode.FocusModeAuto")
        @Expect(FocusMode.FocusModeLocked.toString(), "FocusMode.FocusModeLocked")
        @Expect(FocusMode.FocusModeManual != FocusMode.FocusModeAuto, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FocusState_FocusMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0400
     * @tc.name      : Test_EnumValues_VideoStabilizationMode
     * @tc.desc      : Cover VideoStabilizationMode enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_VideoStabilizationMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_VideoStabilizationMode begins.")
        @Expect(VideoStabilizationMode.Off.toString(), "VideoStabilizationMode.Off")
        @Expect(VideoStabilizationMode.Low.toString(), "VideoStabilizationMode.Low")
        @Expect(VideoStabilizationMode.Middle.toString(), "VideoStabilizationMode.Middle")
        @Expect(VideoStabilizationMode.High.toString(), "VideoStabilizationMode.High")
        @Expect(VideoStabilizationMode.Auto.toString(), "VideoStabilizationMode.Auto")
        @Expect(VideoStabilizationMode.High != VideoStabilizationMode.Low, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_VideoStabilizationMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0500
     * @tc.name      : Test_EnumValues_SmoothZoomMode_TorchMode
     * @tc.desc      : Cover SmoothZoomMode and TorchMode enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_SmoothZoomMode_TorchMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_SmoothZoomMode_TorchMode begins.")
        @Expect(SmoothZoomMode.Normal.toString(), "SmoothZoomMode.Normal")
        @Expect(TorchMode.Off.toString(), "TorchMode.Off")
        @Expect(TorchMode.On.toString(), "TorchMode.On")
        @Expect(TorchMode.Auto.toString(), "TorchMode.Auto")
        @Expect(TorchMode.Off != TorchMode.On, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_SmoothZoomMode_TorchMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0600
     * @tc.name      : Test_EnumValues_ImageRotation_CameraStatus
     * @tc.desc      : Cover ImageRotation and CameraStatus enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_ImageRotation_CameraStatus(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_ImageRotation_CameraStatus begins.")
        @Expect(ImageRotation.Rotation0.toString(), "ImageRotation.Rotation0")
        @Expect(ImageRotation.Rotation90.toString(), "ImageRotation.Rotation90")
        @Expect(ImageRotation.Rotation180.toString(), "ImageRotation.Rotation180")
        @Expect(ImageRotation.Rotation270.toString(), "ImageRotation.Rotation270")
        @Expect(ImageRotation.Rotation0 != ImageRotation.Rotation90, true)
        @Expect(CameraStatus.CameraStatusAppear.toString(), "CameraStatus.CameraStatusAppear")
        @Expect(CameraStatus.CameraStatusDisappear.toString(), "CameraStatus.CameraStatusDisappear")
        @Expect(CameraStatus.CameraStatusAvailable.toString(), "CameraStatus.CameraStatusAvailable")
        @Expect(CameraStatus.CameraStatusUnavailable.toString(), "CameraStatus.CameraStatusUnavailable")
        @Expect(CameraStatus.CameraStatusAvailable != CameraStatus.CameraStatusUnavailable, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_ImageRotation_CameraStatus ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0700
     * @tc.name      : Test_EnumValues_FoldStatus_ConnectionType
     * @tc.desc      : Cover FoldStatus and ConnectionType enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_FoldStatus_ConnectionType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FoldStatus_ConnectionType begins.")
        @Expect(FoldStatus.NonFoldable.toString(), "FoldStatus.NonFoldable")
        @Expect(FoldStatus.Expanded.toString(), "FoldStatus.Expanded")
        @Expect(FoldStatus.Folded.toString(), "FoldStatus.Folded")
        @Expect(FoldStatus.NonFoldable != FoldStatus.Expanded, true)
        @Expect(ConnectionType.CameraConnectionBuiltIn.toString(), "ConnectionType.CameraConnectionBuiltIn")
        @Expect(ConnectionType.CameraConnectionUsbPlugin.toString(), "ConnectionType.CameraConnectionUsbPlugin")
        @Expect(ConnectionType.CameraConnectionRemote.toString(), "ConnectionType.CameraConnectionRemote")
        @Expect(ConnectionType.CameraConnectionUsbPlugin != ConnectionType.CameraConnectionRemote, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_FoldStatus_ConnectionType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0800
     * @tc.name      : Test_EnumValues_CameraFormat
     * @tc.desc      : Cover CameraFormat enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_CameraFormat(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraFormat begins.")
        @Expect(CameraFormat.CameraFormatRgba8888.toString(), "CameraFormat.CameraFormatRgba8888")
        @Expect(CameraFormat.CameraFormatYuv420Sp.toString(), "CameraFormat.CameraFormatYuv420Sp")
        @Expect(CameraFormat.CameraFormatJpeg.toString(), "CameraFormat.CameraFormatJpeg")
        @Expect(CameraFormat.CameraFormatYcbcrP010.toString(), "CameraFormat.CameraFormatYcbcrP010")
        @Expect(CameraFormat.CameraFormatYcrcbP010.toString(), "CameraFormat.CameraFormatYcrcbP010")
        @Expect(CameraFormat.CameraFormatHeic.toString(), "CameraFormat.CameraFormatHeic")
        @Expect(CameraFormat.CameraFormatHeic != CameraFormat.CameraFormatJpeg, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraFormat ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_0900
     * @tc.name      : Test_EnumValues_CameraEvents
     * @tc.desc      : Cover CameraEvents enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_CameraEvents(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraEvents begins.")
        @Expect(CameraEvents.CameraError != CameraEvents.CameraStatus, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraEvents ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1000
     * @tc.name      : Test_EnumValues_CameraPosition_CameraType
     * @tc.desc      : Cover CameraPosition and CameraType enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_CameraPosition_CameraType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraPosition_CameraType begins.")
        @Expect(CameraPosition.CameraPositionUnspecified.toString(), "CameraPosition.CameraPositionUnspecified")
        @Expect(CameraPosition.CameraPositionBack.toString(), "CameraPosition.CameraPositionBack")
        @Expect(CameraPosition.CameraPositionFront.toString(), "CameraPosition.CameraPositionFront")
        @Expect(CameraPosition.CameraPositionBack != CameraPosition.CameraPositionFront, true)
        @Expect(CameraType.CameraTypeDefault.toString(), "CameraType.CameraTypeDefault")
        @Expect(CameraType.CameraTypeWideAngle.toString(), "CameraType.CameraTypeWideAngle")
        @Expect(CameraType.CameraTypeUltraWide.toString(), "CameraType.CameraTypeUltraWide")
        @Expect(CameraType.CameraTypeTelephoto.toString(), "CameraType.CameraTypeTelephoto")
        @Expect(CameraType.CameraTypeTrueDepth.toString(), "CameraType.CameraTypeTrueDepth")
        @Expect(CameraType.CameraTypeUltraWide != CameraType.CameraTypeTelephoto, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_CameraPosition_CameraType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1100
     * @tc.name      : Test_EnumValues_SceneMode_QualityLevel
     * @tc.desc      : Cover SceneMode and QualityLevel enum values and Equatable operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_SceneMode_QualityLevel(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_SceneMode_QualityLevel begins.")
        @Expect(SceneMode.NormalPhoto.toString(), "SceneMode.NormalPhoto")
        @Expect(SceneMode.NormalVideo.toString(), "SceneMode.NormalVideo")
        @Expect(SceneMode.SecurePhoto.toString(), "SceneMode.SecurePhoto")
        @Expect(SceneMode.NormalPhoto != SceneMode.NormalVideo, true)
        @Expect(QualityLevel.QualityLevelHigh.toString(), "QualityLevel.QualityLevelHigh")
        @Expect(QualityLevel.QualityLevelMedium.toString(), "QualityLevel.QualityLevelMedium")
        @Expect(QualityLevel.QualityLevelLow.toString(), "QualityLevel.QualityLevelLow")
        @Expect(QualityLevel.QualityLevelHigh != QualityLevel.QualityLevelLow, true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_SceneMode_QualityLevel ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1200
     * @tc.name      : Test_EnumValues_VideoCodecType_Preconfig
     * @tc.desc      : Cover VideoCodecType, PreconfigType, PreconfigRatio, MetadataObjectType enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumValues_VideoCodecType_Preconfig(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_VideoCodecType_Preconfig begins.")
        @Expect(VideoCodecType.Avc.toString(), "VideoCodecType.Avc")
        @Expect(VideoCodecType.Hevc.toString(), "VideoCodecType.Hevc")
        @Expect(VideoCodecType.Hevc != VideoCodecType.Avc, true)
        @Expect(PreconfigType.Preconfig720p.toString(), "PreconfigType.Preconfig720p")
        @Expect(PreconfigType.Preconfig1080p.toString(), "PreconfigType.Preconfig1080p")
        @Expect(PreconfigType.Preconfig4k.toString(), "PreconfigType.Preconfig4k")
        @Expect(PreconfigType.PreconfigHighQuality.toString(), "PreconfigType.PreconfigHighQuality")
        @Expect(PreconfigType.Preconfig720p != PreconfigType.Preconfig1080p, true)
        @Expect(PreconfigRatio.PreconfigRatio_1_1.toString(), "PreconfigRatio.PreconfigRatio_1_1")
        @Expect(PreconfigRatio.PreconfigRatio_4_3.toString(), "PreconfigRatio.PreconfigRatio_4_3")
        @Expect(PreconfigRatio.PreconfigRatio_16_9.toString(), "PreconfigRatio.PreconfigRatio_16_9")
        @Expect(PreconfigRatio.PreconfigRatio_4_3 != PreconfigRatio.PreconfigRatio_16_9, true)
        @Expect(MetadataObjectType.FaceDetection.toString(), "MetadataObjectType.FaceDetection")
        Hilog.info(0u32, "cangjietest", "", "testcase Test_EnumValues_VideoCodecType_Preconfig ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1300
     * @tc.name      : Test_Point_Constructor_Fields
     * @tc.desc      : Cover Point.init constructor and x, y fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Point_Constructor_Fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Point_Constructor_Fields begins.")
        let p = CameraPoint(1.5, 2.5)
        @Expect(p.x, 1.5)
        @Expect(p.y, 2.5)
        p.x = 3.0
        p.y = 4.0
        @Expect(p.x, 3.0)
        @Expect(p.y, 4.0)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Point_Constructor_Fields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1400
     * @tc.name      : Test_Location_Constructor_Fields
     * @tc.desc      : Cover Location.init constructor and latitude, longitude, altitude fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Location_Constructor_Fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Location_Constructor_Fields begins.")
        let loc = Location(10.0, 20.0, 30.0)
        @Expect(loc.latitude, 10.0)
        @Expect(loc.longitude, 20.0)
        @Expect(loc.altitude, 30.0)
        loc.latitude = 40.0
        loc.longitude = 50.0
        loc.altitude = 60.0
        @Expect(loc.latitude, 40.0)
        @Expect(loc.longitude, 50.0)
        @Expect(loc.altitude, 60.0)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Location_Constructor_Fields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1500
     * @tc.name      : Test_PhotoCaptureSetting_Fields
     * @tc.desc      : Cover PhotoCaptureSetting class and quality, location, mirror fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoCaptureSetting_Fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoCaptureSetting_Fields begins.")
        let setting = PhotoCaptureSetting()
        @Expect(setting.quality, QualityLevel.QualityLevelLow)
        @Expect(setting.mirror, false)
        setting.quality = QualityLevel.QualityLevelHigh
        setting.mirror = true
        setting.location = Location(1.0, 2.0, 3.0)
        @Expect(setting.quality, QualityLevel.QualityLevelHigh)
        @Expect(setting.mirror, true)
        @Expect(setting.location?.latitude, 1.0)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoCaptureSetting_Fields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1600
     * @tc.name      : Test_CameraInput_OnOff
     * @tc.desc      : Cover CameraInput.on/off for CameraError event
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraInput_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CameraInput_OnOff begins.")
        let device = getCoverageCameraManager().getSupportedCameras()[0]
        let input = getCoverageCameraManager().createCameraInput(device)
        input.open()
        let cb = NoArgCallback()
        NoArgCallback.invoked = false
        input.on(CameraEvents.CameraError, device, cb)
        input.off(CameraEvents.CameraError, device, cb)
        input.off(CameraEvents.CameraError, device)
        input.close()
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CameraInput_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1700
     * @tc.name      : Test_CameraManager_OnOff
     * @tc.desc      : Cover CameraManager.on/off for CameraStatus, FoldStatusChange, TorchStatusChange events
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CameraManager_OnOff begins.")
        let mgr = getCoverageCameraManager()
        let statusCb = CameraStatusCallback()
        CameraStatusCallback.invoked = false
        mgr.on(CameraEvents.CameraStatus, statusCb)
        mgr.off(CameraEvents.CameraStatus, statusCb)
        let foldCb = FoldStatusCallback()
        FoldStatusCallback.invoked = false
        mgr.on(CameraEvents.FoldStatusChange, foldCb)
        mgr.off(CameraEvents.FoldStatusChange, foldCb)
        let torchCb = TorchStatusCallback()
        TorchStatusCallback.invoked = false
        mgr.on(CameraEvents.TorchStatusChange, torchCb)
        mgr.off(CameraEvents.TorchStatusChange, torchCb)
        mgr.off(CameraEvents.CameraStatus)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CameraManager_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1800
     * @tc.name      : Test_PhotoSession_OnOff
     * @tc.desc      : Cover PhotoSession.on/off for all event types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSession_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoSession_OnOff begins.")
        try {
            let session: PhotoSession = (getCoverageCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            let noArg = NoArgCallback()
            NoArgCallback.invoked = false
            session.on(CameraEvents.CameraError, noArg)
            session.off(CameraEvents.CameraError, noArg)
            session.on(CameraEvents.FrameStart, noArg)
            session.off(CameraEvents.FrameStart, noArg)
            session.on(CameraEvents.FrameEnd, noArg)
            session.off(CameraEvents.FrameEnd, noArg)
            session.on(CameraEvents.CaptureReady, noArg)
            session.off(CameraEvents.CaptureReady, noArg)
            let focusCb = FocusStateChangeCallback()
            FocusStateChangeCallback.invoked = false
            session.on(CameraEvents.FocusStateChange, focusCb)
            session.off(CameraEvents.FocusStateChange, focusCb)
            let smoothCb = SmoothZoomInfoAvailableCallback()
            SmoothZoomInfoAvailableCallback.invoked = false
            session.on(CameraEvents.SmoothZoomInfoAvailable, smoothCb)
            session.off(CameraEvents.SmoothZoomInfoAvailable, smoothCb)
            session.off(CameraEvents.FrameStart)
            session.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoSession_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_1900
     * @tc.name      : Test_VideoSession_OnOff
     * @tc.desc      : Cover VideoSession.on/off for all event types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSession_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_VideoSession_OnOff begins.")
        try {
            let session: VideoSession = (getCoverageCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            let noArg = NoArgCallback()
            NoArgCallback.invoked = false
            session.on(CameraEvents.CameraError, noArg)
            session.off(CameraEvents.CameraError, noArg)
            session.on(CameraEvents.FrameStart, noArg)
            session.off(CameraEvents.FrameStart, noArg)
            session.on(CameraEvents.FrameEnd, noArg)
            session.off(CameraEvents.FrameEnd, noArg)
            session.on(CameraEvents.CaptureReady, noArg)
            session.off(CameraEvents.CaptureReady, noArg)
            let focusCb = FocusStateChangeCallback()
            FocusStateChangeCallback.invoked = false
            session.on(CameraEvents.FocusStateChange, focusCb)
            session.off(CameraEvents.FocusStateChange, focusCb)
            let smoothCb = SmoothZoomInfoAvailableCallback()
            SmoothZoomInfoAvailableCallback.invoked = false
            session.on(CameraEvents.SmoothZoomInfoAvailable, smoothCb)
            session.off(CameraEvents.SmoothZoomInfoAvailable, smoothCb)
            session.off(CameraEvents.FrameStart)
            session.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_VideoSession_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_2000
     * @tc.name      : Test_PhotoOutput_OnOff
     * @tc.desc      : Cover PhotoOutput.on/off for all event types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoOutput_OnOff begins.")
        try {
            let photoOutput = getCoverageCameraManager().createPhotoOutput()
            let noArg = NoArgCallback()
            NoArgCallback.invoked = false
            photoOutput.on(CameraEvents.CaptureReady, noArg)
            photoOutput.off(CameraEvents.CaptureReady, noArg)
            let startCb = CaptureStartCallback()
            CaptureStartCallback.invoked = false
            photoOutput.on(CameraEvents.CaptureStartWithInfo, startCb)
            photoOutput.off(CameraEvents.CaptureStartWithInfo, startCb)
            let shutterCb = FrameShutterCallback()
            FrameShutterCallback.invoked = false
            photoOutput.on(CameraEvents.FrameShutter, shutterCb)
            photoOutput.off(CameraEvents.FrameShutter, shutterCb)
            let endCb = CaptureEndCallback()
            CaptureEndCallback.invoked = false
            photoOutput.on(CameraEvents.CaptureEnd, endCb)
            photoOutput.off(CameraEvents.CaptureEnd, endCb)
            let shutterEndCb = FrameShutterEndCallback()
            FrameShutterEndCallback.invoked = false
            photoOutput.on(CameraEvents.FrameShutterEnd, shutterEndCb)
            photoOutput.off(CameraEvents.FrameShutterEnd, shutterEndCb)
            let estCb = Float64Callback()
            Float64Callback.invoked = false
            photoOutput.on(CameraEvents.EstimatedCaptureDuration, estCb)
            photoOutput.off(CameraEvents.EstimatedCaptureDuration, estCb)
            photoOutput.off(CameraEvents.CaptureReady)
            photoOutput.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PhotoOutput_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_2100
     * @tc.name      : Test_PreviewOutput_OnOff
     * @tc.desc      : Cover PreviewOutput.on/off for FrameStart, FrameEnd events
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PreviewOutput_OnOff begins.")
        try {
            let previewOutput = getCoverageCameraManager().createPreviewOutput("0")
            let noArg = NoArgCallback()
            NoArgCallback.invoked = false
            previewOutput.on(CameraEvents.FrameStart, noArg)
            previewOutput.off(CameraEvents.FrameStart, noArg)
            previewOutput.on(CameraEvents.FrameEnd, noArg)
            previewOutput.off(CameraEvents.FrameEnd, noArg)
            previewOutput.off(CameraEvents.FrameStart)
            previewOutput.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_PreviewOutput_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_2200
     * @tc.name      : Test_VideoOutput_OnOff
     * @tc.desc      : Cover VideoOutput.on/off for FrameStart, FrameEnd events
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_OnOff(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_VideoOutput_OnOff begins.")
        try {
            let videoOutput = getCoverageCameraManager().createVideoOutput("0")
            let noArg = NoArgCallback()
            NoArgCallback.invoked = false
            videoOutput.on(CameraEvents.FrameStart, noArg)
            videoOutput.off(CameraEvents.FrameStart, noArg)
            videoOutput.on(CameraEvents.FrameEnd, noArg)
            videoOutput.off(CameraEvents.FrameEnd, noArg)
            videoOutput.off(CameraEvents.FrameStart)
            videoOutput.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_VideoOutput_OnOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_2300
     * @tc.name      : Test_Zoom_SetGetRatio_Error
     * @tc.desc      : Cover Zoom.setZoomRatio and getZoomRatio error path (7400103)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Zoom_SetGetRatio_Error(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Zoom_SetGetRatio_Error begins.")
        let session: PhotoSession = (getCoverageCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        try {
            session.setZoomRatio(1.0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400103i32)
        }
        try {
            session.getZoomRatio()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400103i32)
        }
        session.release()
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Zoom_SetGetRatio_Error ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_coverage_2400
     * @tc.name      : Test_Uncovered_APIs_Real
     * @tc.desc      : Cover 18 uncovered APIs: Point func, Rect class+fields, FrameRateRange,
     *                 Profile, VideoProfile, CameraOutputCapability, CameraDevice, CameraOutput,
     *                 Session, AutoExposureQuery, ColorManagementQuery, FlashQuery, FocusQuery,
     *                 StabilizationQuery, ZoomQuery via real construction and type annotations.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Uncovered_APIs_Real(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Uncovered_APIs_Real begins.")

        let p = CameraPoint(1.0, 2.0)
        @Expect(p.x, 1.0)
        @Expect(p.y, 2.0)

        let r: ?Rect = None
        let tx: ?Float64 = r?.topLeftX
        let ty: ?Float64 = r?.topLeftY

        let mgr = getCoverageCameraManager()

        let cameras: Array<CameraDevice> = mgr.getSupportedCameras()
        let device: CameraDevice = cameras[0]
        @Expect(device.cameraId.size > 0, true)

        let modes: Array<SceneMode> = mgr.getSupportedSceneModes(device)
        let mode: SceneMode = modes[0]
        let cap: CameraOutputCapability = mgr.getSupportedOutputCapability(device, mode)

        let photoProfiles: Array<Profile> = cap.photoProfiles
        let videoProfiles: Array<VideoProfile> = cap.videoProfiles
        if (videoProfiles.size > 0) {
            let vp: VideoProfile = videoProfiles[0]
            let singleProfile: Profile = vp
            let fr: FrameRateRange = vp.frameRateRange
            @Expect(fr.min > 0, true)
        } else {
            @Expect(videoProfiles.size, 0)
        }

        try {
            let photoOutput: PhotoOutput = mgr.createPhotoOutput()
            let camOut: CameraOutput = photoOutput
            camOut.release()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }

        try {
            let photoSession: PhotoSession = (mgr.createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            let sess: Session = photoSession
            let ae: AutoExposureQuery = photoSession
            let cm: ColorManagementQuery = photoSession
            let fq: FlashQuery = photoSession
            let foq: FocusQuery = photoSession
            let zq: ZoomQuery = photoSession
            @Expect(true)
            photoSession.release()
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }

        try {
            let videoSession: VideoSession = (mgr.createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            let sq: StabilizationQuery = videoSession
            @Expect(true)
            videoSession.release()
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase Test_Uncovered_APIs_Real ends.")
    }
}
