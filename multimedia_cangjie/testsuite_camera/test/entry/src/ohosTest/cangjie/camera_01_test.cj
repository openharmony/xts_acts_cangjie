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
import std.unittest.testmacro.*
import ohos.multimedia.camera.*
import kit.ImageKit.*
import std.sync.*
import std.time.*
import ohos.graphics.color_space_manager.ColorSpace
import ohos.multimedia.image.createImageReceiver
import ohos.multimedia.image.ImageFormat
import ohos.ui_test.Driver
import kit.TestKit.On
import ohos.multimedia.camera.Point as cameraPoint
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.map
import std.collection.collectArray
import std.collection.forEach
import ohos.ability_access_ctrl.Permissions
import ohos.multimedia.image.Size as imageSize
import kit.CameraKit.*
import ohos.callback_invoke.*
import ohos.business_exception.BusinessException
import ohos.device_info.*

var cameraManager: Option<CameraManager> = None

func getCameraManager(): CameraManager {
    return cameraManager.getOrThrow()
}

class FocusStateChangeCallback <: Callback1Argument<FocusState> {
    public static var invoked: Bool = false
    public func invoke(err: ?BusinessException, state: FocusState): Unit {
        invoked = true
    }
}

class ErrorCallback <: Callback1Argument<BusinessException> {
    public static var invoked: Bool = false
    public open func invoke(err: ?BusinessException, exception: BusinessException): Unit {
        invoked = true
    }
}

class SmoothZoomInfoAvailableCallback <: Callback1Argument<SmoothZoomInfo> {
    public static var invoked: Bool = false

    public func invoke(err: ?BusinessException, info: SmoothZoomInfo): Unit {
        invoked = true
    }
}

@Test
class Test_camera {
    override func beforeAll(): Unit {
        ["ohos.permission.CAMERA", "ohos.permission.MICROPHONE", "ohos.permission.WRITE_MEDIA",
            "ohos.permission.READ_MEDIA", "ohos.permission.MEDIA_LOCATION"] |>
            forEach<Permissions> {
            permissionName: Permissions =>
            sleepFor(3.second)
            getRequiredPermissions([permissionName])
            try {
                sleepFor(3.second)
                click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            } catch (e: Exception) {}
        }
        cameraManager = getCameraManager(getAbilityContext())
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0100
     * @tc.name      : Test_CameraManager_GetSupportedCameras
     * @tc.desc      : test Camera Test_CameraManager_GetSupportedCameras
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_GetSupportedCameras() {
        let devices = getCameraManager().getSupportedCameras()
        if (DeviceInfo.deviceType == "phone") {
            @Expect(devices.size, 2)
            @Expect(devices[0].cameraId, "device/0")
            @Expect(devices[0].cameraPosition.toString(), "CameraPosition.CameraPositionBack")
            @Expect(devices[0].cameraType.toString(), "CameraType.CameraTypeDefault")
            @Expect(devices[0].connectionType.toString(), "ConnectionType.CameraConnectionBuiltIn")
            @Expect(devices[0].cameraOrientation, 90)
            @Expect(devices[1].cameraId, "device/1")
            @Expect(devices[1].cameraPosition.toString(), "CameraPosition.CameraPositionFront")
            @Expect(devices[1].cameraType.toString(), "CameraType.CameraTypeDefault")
            @Expect(devices[1].connectionType.toString(), "ConnectionType.CameraConnectionBuiltIn")
            @Expect(devices[1].cameraOrientation, 270)
        } else {
            @Expect(devices.size, 1)
            @Expect(devices[0].cameraId, "lcam001")
            @Expect(devices[0].cameraPosition.toString(), "CameraPosition.CameraPositionFront")
            @Expect(devices[0].cameraType.toString(), "CameraType.CameraTypeWideAngle")
            @Expect(devices[0].connectionType.toString(), "ConnectionType.CameraConnectionBuiltIn")
            @Expect(devices[0].cameraOrientation, 270)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0200
     * @tc.name      : Test_CameraManager_GetSupportedSceneModes
     * @tc.desc      : test Camera Test_CameraManager_GetSupportedSceneModes
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_GetSupportedSceneModes() {
        let device = getCameraManager().getSupportedCameras()[0]
        let modes = getCameraManager().getSupportedSceneModes(device)
        if (DeviceInfo.deviceType == "phone") {
            @Expect(modes.size, 3)
            @Expect(modes[0].toString(), "SceneMode.NormalPhoto")
            @Expect(modes[1].toString(), "SceneMode.NormalVideo")
            @Expect(modes[2].toString(), "SceneMode.SecurePhoto")
        } else {
            @Expect(modes.size, 2)
            @Expect(modes[0].toString(), "SceneMode.NormalPhoto")
            @Expect(modes[1].toString(), "SceneMode.NormalVideo")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0300
     * @tc.name      : Test_CameraManager_GetSupportedOutputCapability
     * @tc.desc      : test Camera Test_CameraManager_GetSupportedOutputCapability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_GetSupportedOutputCapability() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        if (DeviceInfo.deviceType == "phone") {
            @Expect(ability.previewProfiles.size>0)
            @Expect(ability.previewProfiles[0].format.toString(), "CameraFormat.CameraFormatYuv420Sp")
            @Expect(ability.previewProfiles[0].size.height, 480)
            @Expect(ability.previewProfiles[0].size.width, 480)
            @Expect(ability.photoProfiles.size>0)
            @Expect(ability.photoProfiles[0].format.toString(), "CameraFormat.CameraFormatJpeg")
            @Expect(ability.photoProfiles[0].size.height, 480)
            @Expect(ability.photoProfiles[0].size.width>0)
            @Expect(ability.videoProfiles.size, 0)
            @Expect(ability.supportedMetadataObjectTypes.size, 1)
        } else {
            @Expect(ability.previewProfiles.size>0)
            @Expect(ability.previewProfiles[0].format.toString(), "CameraFormat.CameraFormatRgba8888")
            @Expect(ability.previewProfiles[0].size.height, 480)
            @Expect(ability.previewProfiles[0].size.width, 640)
            @Expect(ability.photoProfiles.size>0)
            @Expect(ability.photoProfiles[0].format.toString(), "CameraFormat.CameraFormatJpeg")
            @Expect(ability.photoProfiles[0].size.height, 960)
            @Expect(ability.photoProfiles[0].size.width>0)
            @Expect(ability.videoProfiles.size, 0)
            @Expect(ability.supportedMetadataObjectTypes.size, 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0400
     * @tc.name      : Test_CameraManager_IsCameraMuted
     * @tc.desc      : test Camera Test_CameraManager_IsCameraMuted
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_IsCameraMuted() {
        @Expect(getCameraManager().isCameraMuted(), false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0500
     * @tc.name      : Test_CameraManager_IsTorchSupported
     * @tc.desc      : test Camera Test_CameraManager_IsTorchSupported
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_IsTorchSupported() {
        if (DeviceInfo.deviceType == "phone") {
            @Expect(getCameraManager().isTorchSupported(), true)
        } else {
            @Expect(getCameraManager().isTorchSupported(), false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0600
     * @tc.name      : Test_CameraManager_IsTorchModeSupported
     * @tc.desc      : test Camera Test_CameraManager_IsTorchModeSupported
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_IsTorchModeSupported() {
        @Expect(getCameraManager().isTorchModeSupported(TorchMode.Off), true)
        @Expect(getCameraManager().isTorchModeSupported(TorchMode.On), true)
        @Expect(getCameraManager().isTorchModeSupported(TorchMode.Auto), false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_0700
     * @tc.name      : Test_CameraManager_SetTorchMode
     * @tc.desc      : test Camera Test_CameraManager_SetTorchMode
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_SetTorchMode() {
        try {
            @Expect(getCameraManager().getTorchMode(), TorchMode.Off)
            getCameraManager().setTorchMode(TorchMode.On)
            @Expect(getCameraManager().getTorchMode(), TorchMode.On)
            getCameraManager().setTorchMode(TorchMode.Off)
            @Expect(getCameraManager().getTorchMode(), TorchMode.Off)
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1100
     * @tc.name      : Test_CameraManager_CreateCameraInput_Error
     * @tc.desc      : test Camera Test_CameraManager_CreateCameraInput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_CreateCameraInput_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        try {
            getCameraManager().createCameraInput(CameraPosition.CameraPositionUnspecified,
                CameraType.CameraTypeTrueDepth)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1200
     * @tc.name      : Test_CameraManager_CreatePreviewOutput_Error
     * @tc.desc      : test Camera Test_CameraManager_CreatePreviewOutput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_CreatePreviewOutput_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        try {
            getCameraManager().createPreviewOutput(ability.photoProfiles[0], "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            try {
                getCameraManager().createPreviewOutput("123")
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                return
            }
        }
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1300
     * @tc.name      : Test_CameraManager_CreateVideoOutput_Error
     * @tc.desc      : test Camera Test_CameraManager_CreateVideoOutput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraManager_CreateVideoOutput_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[1]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        try {
            getCameraManager().createVideoOutput(ability.videoProfiles[0], "")
            @Expect(false)
        } catch (e: BusinessException) {
            try {
                getCameraManager().createVideoOutput("123")
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                return
            }
            @Expect(e.code, 7400201)
        }
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1500
     * @tc.name      : Test_CameraInput_Open
     * @tc.desc      : test Camera Test_CameraInput_Open
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraInput_Open() {
        let device = getCameraManager().getSupportedCameras()[0]
        let input = getCameraManager().createCameraInput(device)
        input.open()
        input.close()
        try {
            input.open()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            try {
                input.open(true)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                try {
                    input.open(false)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 7400201)
                    return
                }
            }
        }
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1600
     * @tc.name      : Test_CameraInput_Close
     * @tc.desc      : test Camera Test_CameraInput_Close
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CameraInput_Close() {
        let device = getCameraManager().getSupportedCameras()[0]
        let input = getCameraManager().createCameraInput(device)
        input.open()
        input.close()
        try {
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            return
        }
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1700
     * @tc.name      : Test_PreviewOutput
     * @tc.desc      : test Camera Test_PreviewOutput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        @Expect(photoSession.canAddInput(input), true)
        photoSession.addInput(input)
        photoSession.removeInput(input)
        photoSession.addInput(input)
        @Expect(photoSession.canAddOutput(previewOutput), true)
        photoSession.addOutput(previewOutput)
        photoSession.removeOutput(previewOutput)
        photoSession.addOutput(previewOutput)
        photoSession.commitConfig()
        photoSession.start()
        sleep(Duration.second * 2)
        photoSession.stop()
        photoSession.release()
        previewOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1800
     * @tc.name      : Test_PreviewOutput_SetFrameRate_Error
     * @tc.desc      : test Camera Test_PreviewOutput_SetFrameRate_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_SetFrameRate_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        try {
            previewOutput.setFrameRate(15, 20)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400103)
            previewOutput.release()
            return
        }
        previewOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_1900
     * @tc.name      : Test_PreviewOutput_GetPreviewRotation_Error
     * @tc.desc      : test Camera Test_PreviewOutput_GetPreviewRotation_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_GetPreviewRotation_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        try {
            previewOutput.getPreviewRotation(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            previewOutput.release()
            return
        }
        previewOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2000
     * @tc.name      : Test_PreviewOutput_SetPreviewRotation_Error
     * @tc.desc      : test Camera Test_PreviewOutput_SetPreviewRotation_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_SetPreviewRotation_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        try {
            previewOutput.setPreviewRotation(ImageRotation.Rotation0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            previewOutput.release()
            return
        }
        previewOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2400
     * @tc.name      : Test_PreviewOutput_GetSupportedFrameRates
     * @tc.desc      : test Camera Test_PreviewOutput_GetSupportedFrameRates
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_GetSupportedFrameRates() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(previewOutput)
        let supportedFrameRates = previewOutput.getSupportedFrameRates()
        @Expect(supportedFrameRates.size, 1)
        if (DeviceInfo.deviceType == "phone") {
            @Expect(supportedFrameRates[0].min, 12)
            @Expect(supportedFrameRates[0].max, 30)
        } else {
            @Expect(supportedFrameRates[0].min, 0)
            @Expect(supportedFrameRates[0].max, 0)
        }
        previewOutput.release()
        photoSession.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2500
     * @tc.name      : Test_PreviewOutput_SetFrameRate
     * @tc.desc      : test Camera Test_PreviewOutput_SetFrameRate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PreviewOutput_SetFrameRate() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            photoSession.beginConfig()
            photoSession.addInput(input)
            photoSession.addOutput(previewOutput)
            photoSession.commitConfig()
            previewOutput.setFrameRate(15, 20)
            let activeFrameRate = previewOutput.getActiveFrameRate()
            @Expect(activeFrameRate.min, 15)
            @Expect(activeFrameRate.max, 20)
            previewOutput.release()
            photoSession.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message.contains("Parameter missing"))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2600
     * @tc.name      : Test_PreviewOutput_GetPreviewRotation
     * @tc.desc      : test Camera Test_PreviewOutput_GetPreviewRotation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase // setPreviewRotation设置不生效（与ArkTs一致）
    func Test_PreviewOutput_GetPreviewRotation() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(previewOutput)
        photoSession.commitConfig()
        photoSession.start()
        if (DeviceInfo.deviceType == "phone") {
            @Expect(previewOutput.getPreviewRotation(0), ImageRotation.Rotation90)
        } else {
            @Expect(previewOutput.getPreviewRotation(0), ImageRotation.Rotation270)
        }
        previewOutput.setPreviewRotation(ImageRotation.Rotation0, isDisplayLocked: true)
        previewOutput.release()
        photoSession.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2700
     * @tc.name      : Test_PhotoOutput
     * @tc.desc      : test Camera Test_PhotoOutput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoOutput.capture()
        photoSession.start()
        sleep(Duration.second * 2)
        photoSession.stop()
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2800
     * @tc.name      : Test_PhotoOutput_Capture
     * @tc.desc      : test Camera Test_PhotoOutput_Capture
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_Capture() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoOutput.capture(PhotoCaptureSetting())
        photoSession.start()
        sleep(Duration.second * 2)
        photoSession.stop()
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_2900
     * @tc.name      : Test_PhotoOutput_Capture_Error
     * @tc.desc      : test Camera Test_PhotoOutput_Capture_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_Capture_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        try {
            photoOutput.capture()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400104)
            try {
                photoOutput.capture(PhotoCaptureSetting())
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400104)
                photoOutput.release()
                return
            }
        }
        photoOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_3000
     * @tc.name      : Test_PhotoOutput_EnableMirror_Error
     * @tc.desc      : test Camera Test_PhotoOutput_EnableMirror_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_EnableMirror_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        try {
            photoOutput.enableMirror(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            photoOutput.release()
            return
        }
        @Expect(false)
        photoOutput.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_3100
     * @tc.name      : Test_PhotoOutput_GetPhotoRotation_Error
     * @tc.desc      : test Camera Test_PhotoOutput_GetPhotoRotation_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_GetPhotoRotation_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        try {
            photoOutput.getPhotoRotation(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            photoOutput.release()
            return
        }
        @Expect(false)
        photoOutput.release()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_3900
     * @tc.name      : Test_PhotoOutput_EnableMovingPhoto
     * @tc.desc      : test Camera Test_PhotoOutput_EnableMovingPhoto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase // enableMovingPhoto修改无效
    func Test_PhotoOutput_EnableMovingPhoto() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoSession.start()
        if (DeviceInfo.deviceType == "phone") {
            @Expect(photoOutput.isMovingPhotoSupported(), true)
        } else {
            @Expect(photoOutput.isMovingPhotoSupported(), false)
        }
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4000
     * @tc.name      : Test_PhotoOutput_IsMovingPhotoSupported_Error
     * @tc.desc      : test Camera Test_PhotoOutput_IsMovingPhotoSupported_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_IsMovingPhotoSupported_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        try {
            photoOutput.isMovingPhotoSupported()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            photoOutput.release()
            return
        }
        photoOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4100
     * @tc.name      : Test_PhotoOutput_EnableMovingPhoto_Error
     * @tc.desc      : test Camera Test_PhotoOutput_EnableMovingPhoto_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_EnableMovingPhoto_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        try {
            photoOutput.enableMovingPhoto(false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201)
            photoOutput.release()
            return
        }
        photoOutput.release()
        @Expect(false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4200
     * @tc.name      : Test_PhotoOutput_EnableMirror
     * @tc.desc      : test Camera Test_PhotoOutput_EnableMirror
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase // enableMirror修改无效
    func Test_PhotoOutput_EnableMirror() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            photoSession.beginConfig()
            photoSession.addInput(input)
            photoSession.addOutput(photoOutput)
            photoSession.commitConfig()
            photoSession.start()
            @Expect(photoOutput.isMirrorSupported(), false)
            photoOutput.enableMirror(true)
            photoSession.release()
            photoOutput.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4300
     * @tc.name      : Test_PhotoOutput_SetMovingPhotoVideoCodecType
     * @tc.desc      : test Camera Test_PhotoOutput_SetMovingPhotoVideoCodecType
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_SetMovingPhotoVideoCodecType() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoSession.start()
        let arr = photoOutput.getSupportedMovingPhotoVideoCodecTypes()
        @Expect(arr.size, 2)
        photoOutput.setMovingPhotoVideoCodecType(VideoCodecType.Avc)
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4400
     * @tc.name      : Test_PhotoOutput_GetActiveProfile
     * @tc.desc      : test Camera Test_PhotoOutput_GetActiveProfile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_GetActiveProfile() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoSession.start()
        let profile = photoOutput.getActiveProfile()
        @Expect(profile.format, CameraFormat.CameraFormatJpeg)
        if (DeviceInfo.deviceType == "phone") {
            @Expect(profile.size.height>0)
            @Expect(profile.size.width>0)
        } else {
            @Expect(profile.size.height, 960)
            @Expect(profile.size.width, 1280)
        }
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4500
     * @tc.name      : Test_PhotoOutput_GetPhotoRotation
     * @tc.desc      : test Camera Test_PhotoOutput_GetPhotoRotation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoOutput_GetPhotoRotation() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        let photoOutput = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])
        let input = getCameraManager().createCameraInput(device)
        input.open()
        let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        photoSession.beginConfig()
        photoSession.addInput(input)
        photoSession.addOutput(photoOutput)
        photoSession.commitConfig()
        photoSession.start()
        let rotation = photoOutput.getPhotoRotation(0)
        if (DeviceInfo.deviceType == "phone") {
            @Expect(rotation, ImageRotation.Rotation90)
        } else {
            @Expect(rotation, ImageRotation.Rotation270)
        }
        photoSession.release()
        photoOutput.release()
        input.close()
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4600
     * @tc.name      : Test_VideoOutput
     * @tc.desc      : test Camera Test_VideoOutput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let videoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession.beginConfig()
            videoSession.addInput(input)
            videoSession.addOutput(videoOutput)
            videoSession.commitConfig()
            videoOutput.start()
            sleep(Duration.second * 2)
            videoOutput.stop()
            videoSession.release()
            videoOutput.release()
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4700
     * @tc.name      : Test_VideoOutput_Start_Error
     * @tc.desc      : test Camera Test_VideoOutput_Start_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_Start_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            try {
                videoOutput.start()
            } catch (e: BusinessException) {
                @Expect(e.code, 7400103)
                videoOutput.release()
                return
            }
            @Expect(false)
            videoOutput.release()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4800
     * @tc.name      : Test_VideoOutput_Stop_Error
     * @tc.desc      : test Camera Test_VideoOutput_Stop_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_Stop_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            try {
                videoOutput.stop()
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                videoOutput.release()
                return
            }
            @Expect(false)
            videoOutput.release()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_4900
     * @tc.name      : Test_VideoOutput_GetVideoRotation_Error
     * @tc.desc      : test Camera Test_VideoOutput_GetVideoRotation_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_GetVideoRotation_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            try {
                videoOutput.getVideoRotation(0)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                videoOutput.release()
                return
            }
            @Expect(false)
            videoOutput.release()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5300
     * @tc.name      : Test_VideoOutput_GetSupportedFrameRates
     * @tc.desc      : test Camera Test_VideoOutput_GetSupportedFrameRates
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_GetSupportedFrameRates() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let videoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession.beginConfig()
            videoSession.addInput(input)
            videoSession.addOutput(videoOutput)
            videoSession.commitConfig()
            let supportedFrameRates = videoOutput.getSupportedFrameRates()
            @Expect(supportedFrameRates.size, 2)
            @Expect(supportedFrameRates[0].min, 1)
            @Expect(supportedFrameRates[0].max, 30)
            videoSession.release()
            videoOutput.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5400
     * @tc.name      : Test_VideoOutput_SetFrameRate
     * @tc.desc      : test Camera Test_VideoOutput_SetFrameRate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_SetFrameRate() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let videoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession.beginConfig()
            videoSession.addInput(input)
            videoSession.addOutput(videoOutput)
            videoSession.commitConfig()
            videoOutput.setFrameRate(10, 20)
            let activeFrameRate = videoOutput.getActiveFrameRate()
            @Expect(activeFrameRate.min, 10)
            @Expect(activeFrameRate.max, 20)
            videoSession.release()
            videoOutput.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5500
     * @tc.name      : Test_VideoOutput_SetFrameRate_Error
     * @tc.desc      : test Camera Test_VideoOutput_SetFrameRate_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_SetFrameRate_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            try {
                videoOutput.setFrameRate(15, 20)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400103)
                videoOutput.release()
                return
            }
            videoOutput.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5600
     * @tc.name      : Test_VideoOutput_GetActiveProfile
     * @tc.desc      : test Camera Test_VideoOutput_GetActiveProfile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_GetActiveProfile() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let videoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession.beginConfig()
            videoSession.addInput(input)
            videoSession.addOutput(videoOutput)
            videoSession.commitConfig()
            let profile = videoOutput.getActiveProfile()
            @Expect(profile.format, CameraFormat.CameraFormatYuv420Sp)
            @Expect(profile.size.width>0)
            @Expect(profile.size.height>0)
            @Expect(profile.frameRateRange.min, 1)
            @Expect(profile.frameRateRange.max, 30)
            videoSession.release()
            videoOutput.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5700
     * @tc.name      : Test_VideoOutput_GetVideoRotation
     * @tc.desc      : test Camera Test_VideoOutput_GetVideoRotation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoOutput_GetVideoRotation() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[1]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let videoOutput = getCameraManager().createVideoOutput(ability.videoProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let videoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession.beginConfig()
            videoSession.addInput(input)
            videoSession.addOutput(videoOutput)
            videoSession.commitConfig()
            @Expect(videoOutput.getVideoRotation(0), ImageRotation.Rotation90)
            videoSession.release()
            videoOutput.release()
            input.close()
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5800
     * @tc.name      : Test_MetaDataOutput
     * @tc.desc      : test Camera Test_MetaDataOutput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MetaDataOutput() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            photoSession.beginConfig()
            photoSession.addInput(input)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_5900
     * @tc.name      : Test_MetaDataOutput_Start_Error
     * @tc.desc      : test Camera Test_MetaDataOutput_Start_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MetaDataOutput_Start_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
        try {
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            return
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6000
     * @tc.name      : Test_MetaDataOutput_Stop_Error
     * @tc.desc      : test Camera Test_MetaDataOutput_Stop_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MetaDataOutput_Stop_Error() {
        let device = getCameraManager().getSupportedCameras()[0]
        let mode = getCameraManager().getSupportedSceneModes(device)[0]
        let ability = getCameraManager().getSupportedOutputCapability(device, mode)
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6100
     * @tc.name      : Test_Session_CommitConfig_Error
     * @tc.desc      : test Camera Test_Session_CommitConfig_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_CommitConfig_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.commitConfig()
            } catch (e: BusinessException) {
                @Expect(e.code, 7400102)
                photoSession.release()
                return
            }
            photoSession.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6200
     * @tc.name      : Test_Session_AddInput_Error
     * @tc.desc      : test Camera Test_Session_AddInput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_AddInput_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.addInput(input)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400102)
                photoSession.release()
                input.close()
                return
            }
            photoSession.release()
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6300
     * @tc.name      : Test_Session_RemoveInput_Error
     * @tc.desc      : test Camera Test_Session_RemoveInput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_RemoveInput_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.removeInput(input)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400102)
                photoSession.release()
                input.close()
                return
            }
            photoSession.release()
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6400
     * @tc.name      : Test_Session_AddOutput_Error
     * @tc.desc      : test Camera Test_Session_AddOutput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_AddOutput_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.addOutput(previewOutput)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400102)
                photoSession.release()
                input.close()
                return
            }
            photoSession.release()
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6500
     * @tc.name      : Test_Session_RemoveOutput_Error
     * @tc.desc      : test Camera Test_Session_RemoveOutput_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_RemoveOutput_Error() {
        try {
            let device = getCameraManager().getSupportedCameras()[0]
            let mode = getCameraManager().getSupportedSceneModes(device)[0]
            let ability = getCameraManager().getSupportedOutputCapability(device, mode)
            let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 8)
            let surfaceId: String = receiver.getReceivingSurfaceId()
            let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)
            let input = getCameraManager().createCameraInput(device)
            input.open()
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.removeOutput(previewOutput)
            } catch (e: BusinessException) {
                @Expect(e.code, 7400102)
                photoSession.release()
                input.close()
                return
            }
            photoSession.release()
            input.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6600
     * @tc.name      : Test_Session_Start_Error
     * @tc.desc      : test Camera Test_Session_Start_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_Start_Error() {
        try {
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.start()
            } catch (e: BusinessException) {
                @Expect(e.code, 7400103)
                photoSession.release()
                return
            }
            photoSession.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6700
     * @tc.name      : Test_Session_Stop_Error
     * @tc.desc      : test Camera Test_Session_Stop_Error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Session_Stop_Error() {
        try {
            let photoSession = (getCameraManager().createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
            try {
                photoSession.stop()
            } catch (e: BusinessException) {
                @Expect(e.code, 7400201)
                photoSession.release()
                return
            }
            photoSession.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message,"Camera service fatal error.")
        }
    }

    func getPhotoSession(index: Int64): PhotoSession {
        let session: PhotoSession = (getCameraManager()
            .createSession(SceneMode.NormalPhoto) as PhotoSession)
            .getOrThrow()

        // input
        let device = getCameraManager().getSupportedCameras()[index]
        let input = getCameraManager().createCameraInput(device)

        let ability = getCameraManager().getSupportedOutputCapability(device, SceneMode.NormalPhoto)

        // preview output
        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 64)
        let receiverId = receiver.getReceivingSurfaceId()
        let previewOutput = getCameraManager().createPreviewOutput(ability.previewProfiles[0], receiverId)

        // output
        let output = getCameraManager().createPhotoOutput(profile: ability.photoProfiles[0])

        input.open()
        session.beginConfig()
        session.addInput(input)
        session.addOutput(previewOutput)
        session.addOutput(output)
        session.commitConfig()

        return session
    }

    func getVideoSession(): VideoSession {
        let session: VideoSession = (getCameraManager()
            .createSession(SceneMode.NormalVideo) as VideoSession)
            .getOrThrow();

        let device = getCameraManager().getSupportedCameras()[0]
        let input = getCameraManager().createCameraInput(device)

        let ability = getCameraManager().getSupportedOutputCapability(device, SceneMode.NormalVideo)

        let receiver = createImageReceiver(imageSize(8192, 8), ImageFormat.Jpeg, 64)
        let surfaceId: String = receiver.getReceivingSurfaceId()
        let output = getCameraManager().createPreviewOutput(ability.previewProfiles[0], surfaceId)

        input.open()
        session.beginConfig()
        session.addInput(input)
        session.addOutput(output)
        session.commitConfig()

        return session
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6800
     * @tc.name      : Test_Flash
     * @tc.desc      : test Camera Test_Flash
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Flash(): Unit {
        try {
            let session: PhotoSession = getPhotoSession(0)
            let res = session.hasFlash()
            if (!res) {
                @Expect(false)
            }
            let modes = [FlashModeClose, FlashModeOpen, FlashModeAuto, FlashModeAlwaysOpen]
            for (mode in modes) {
                if (session.isFlashModeSupported(mode)) {
                    session.setFlashMode(mode)
                    let curMode = session.getFlashMode()
                    @Expect(curMode, mode)
                } else {
                    @Expect(false)
                }
            }
            session.release()
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_6900
     * @tc.name      : Test_AutoExposure
     * @tc.desc      : test Camera Test_AutoExposure
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AutoExposure() {
        try {
            let session: PhotoSession = getPhotoSession(0)
            let biasRangeArray = session.getExposureBiasRange()
            if (biasRangeArray.size <= 0) {
                @Expect(true)
            }
            for (bias in biasRangeArray) {
                session.setExposureBias(bias)
                let curBias = session.getExposureValue()
                @Expect(bias, curBias)
            }
            let exposureModes = [ExposureMode.ExposureModeLocked, ExposureModeAuto, ExposureModeContinuousAuto]
            for (mode in exposureModes) {
                if (session.isExposureModeSupported(mode)) {
                    session.setExposureMode(mode)
                    let curMode = session.getExposureMode()
                    @Expect(mode, curMode)
                }
            }
            session.setMeteringPoint(cameraPoint(0.123, 0.456))
            let curPoint = session.getMeteringPoint()
            @Expect(curPoint.x>0.0)
            @Expect(curPoint.y>0.0)
            session.release()
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7000
     * @tc.name      : Test_Focus
     * @tc.desc      : test Camera Test_Focus
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus() {
        try {
            let session: PhotoSession = getPhotoSession(0)
            let focusModes = [FocusMode.FocusModeManual, FocusMode.FocusModeContinuousAuto, FocusMode.FocusModeAuto,
                FocusMode.FocusModeLocked]
            for (mode in focusModes) {
                if (session.isFocusModeSupported(mode)) {
                    session.setFocusMode(mode)
                    let curMode = session.getFocusMode()
                    @Expect(mode, curMode)
                }
            }
            session.setFocusPoint(cameraPoint(0.123, 0.456))
            let curPoint = session.getFocusPoint()
            @Expect(curPoint.x>0.0)
            @Expect(curPoint.y>0.0)
            let curLength = session.getFocalLength()
            session.release()
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7100
     * @tc.name      : Test_Zoom
     * @tc.desc      : test Camera Test_Zoom
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Zoom() {
        try {
            let session: PhotoSession = getPhotoSession(0)
            session.start()
            let zoomRatioArray = session.getZoomRatioRange()
            if (zoomRatioArray.size <= 0) {
                @Expect(true)
            }
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7200
     * @tc.name      : Test_ColorManagement
     * @tc.desc      : test Camera Test_ColorManagement
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ColorManagement() {
        try {
            let session: PhotoSession = getPhotoSession(0)
            let spaces = session.getSupportedColorSpaces()
            if (spaces.size <= 0) {
                @Expect(true)
            }
            for (s in spaces) {
                session.setColorSpace(s)
                let cur = session.getActiveColorSpace()
                @Expect(s.toString(), cur.toString())
            }
            session.release()
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7300
     * @tc.name      : Test_Stabilization
     * @tc.desc      : test Camera Test_Stabilization
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Stabilization() {
        try {
            let session: VideoSession = getVideoSession()
            let modes = [VideoStabilizationMode.Off, VideoStabilizationMode.Low, VideoStabilizationMode.Middle,
                VideoStabilizationMode.Auto]
            for (mode in modes) {
                if (session.isVideoStabilizationModeSupported(mode)) {
                    session.setVideoStabilizationMode(mode)
                    let cur = session.getActiveVideoStabilizationMode()
                    @Expect(mode, cur)
                } else {
                }
            }
            session.release()
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7400
     * @tc.name      : Test_PhotoSession
     * @tc.desc      : test Camera Test_PhotoSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSession() {
        try {
            let TAG = "TEST_PhotoSession"
            let session: PhotoSession = getPhotoSession(0)
            try {
                let preconfigTypes = [Preconfig720p, Preconfig1080p, Preconfig4k, PreconfigHighQuality]
                let preconfigRatios = [PreconfigRatio_1_1, PreconfigRatio_4_3, PreconfigRatio_16_9]
                for (preconfigType in preconfigTypes) {
                    for (ratio in preconfigRatios) {
                        if (session.canPreconfig(preconfigType, preconfigRatio: ratio)) {
                            session.preconfig(preconfigType, preconfigRatio: ratio)
                        } else {
                            @Expect(false)
                        }
                    }
                }
            } catch (e: Exception) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7500
     * @tc.name      : Test_PhotoSessionFocusCallback
     * @tc.desc      : test Camera Test_PhotoSessionFocusCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSessionFocusCallback() {
        try {
            let TAG = "Test_PhotoSessionFocusCallback"
            let session = getPhotoSession(0)
            try {
                session.setFocusMode(FocusMode.FocusModeAuto)
                let focusCallback = FocusStateChangeCallback()
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                sleep(Duration.second * 3)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7600
     * @tc.name      : Test_PhotoSessionFocusCallback1
     * @tc.desc      : test Camera Test_PhotoSessionFocusCallback1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSessionFocusCallback1() {
        try {
            let TAG = "Test_PhotoSessionFocusCallback1"
            let session = getPhotoSession(0)
            try {
                session.setFocusMode(FocusMode.FocusModeAuto)
                let focusCallback = FocusStateChangeCallback()
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                sleep(Duration.second * 3)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7700
     * @tc.name      : Test_PhotoSessionSmoothCallback
     * @tc.desc      : test Camera Test_PhotoSessionSmoothCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSessionSmoothCallback() {
        try {
            let TAG = "Test_PhotoSessionSmoothCallback"
            let session = getPhotoSession(0)
            try {
                let callback = SmoothZoomInfoAvailableCallback()
                SmoothZoomInfoAvailableCallback.invoked = false
                session.setSmoothZoom(0.3, SmoothZoomMode.Normal)
                sleep(Duration.second * 1)
                @Expect(SmoothZoomInfoAvailableCallback.invoked, false)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7800
     * @tc.name      : Test_PhotoSessionSmoothCallback1
     * @tc.desc      : test Camera Test_PhotoSessionSmoothCallback1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSessionSmoothCallback1() {
        try {
            let TAG = "Test_PhotoSessionSmoothCallback1"
            let session = getPhotoSession(0)
            try {
                let callback = SmoothZoomInfoAvailableCallback()
                SmoothZoomInfoAvailableCallback.invoked = false
                session.setSmoothZoom(0.3, SmoothZoomMode.Normal)
                sleep(Duration.second * 1)
                @Expect(SmoothZoomInfoAvailableCallback.invoked, false)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_7900
     * @tc.name      : Test_PhotoSessionErrorCallback
     * @tc.desc      : test Camera Test_PhotoSessionErrorCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_PhotoSessionErrorCallback() {
        try {
            let TAG = "Test_PhotoSessionErrorCallback"
            let session = getPhotoSession(0)
            try {
                let callback = ErrorCallback()
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8000
     * @tc.name      : Test_VideoSession
     * @tc.desc      : test Camera Test_VideoSession
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSession() {
        try {
            let TAG = "TEST_VideoSession"
            let session: VideoSession = getVideoSession()
            try {
                let preconfigTypes = [Preconfig720p, Preconfig1080p, Preconfig4k, PreconfigHighQuality]
                let preconfigRatios = [PreconfigRatio_1_1, PreconfigRatio_4_3, PreconfigRatio_16_9]
                for (preconfigType in preconfigTypes) {
                    for (ratio in preconfigRatios) {
                        if (session.canPreconfig(preconfigType, preconfigRatio: ratio)) {
                            session.preconfig(preconfigType, preconfigRatio: ratio)
                        }
                    }
                }
            } catch (e: Exception) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8100
     * @tc.name      : Test_VideoSessionFocusCallback
     * @tc.desc      : test Camera Test_VideoSessionFocusCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSessionFocusCallback() {
        try {
            let TAG = "Test_VideoSessionFocusCallback"
            let session = getVideoSession()
            try {
                session.setFocusMode(FocusMode.FocusModeAuto)
                let focusCallback = FocusStateChangeCallback()
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                sleep(Duration.second * 3)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8200
     * @tc.name      : Test_VideoSessionFocusCallback1
     * @tc.desc      : test Camera Test_VideoSessionFocusCallback1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSessionFocusCallback1() {
        try {
            let TAG = "Test_VideoSessionFocusCallback1"
            let session = getVideoSession()
            try {
                session.setFocusMode(FocusMode.FocusModeAuto)
                let focusCallback = FocusStateChangeCallback()
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                FocusStateChangeCallback.invoked = false
                session.setFocusPoint(cameraPoint(0.123, 0.456))
                sleep(Duration.second * 3)
            } catch (e: BusinessException) {
                @Expect(false)
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8300
     * @tc.name      : Test_VideoSessionSmoothCallback
     * @tc.desc      : test Camera Test_VideoSessionSmoothCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSessionSmoothCallback() {
        try {
            let TAG = "Test_VideoSessionSmoothCallback"
            let session = getVideoSession()
            try {
                let callback = SmoothZoomInfoAvailableCallback()
                SmoothZoomInfoAvailableCallback.invoked = false
                session.setSmoothZoom(0.3, SmoothZoomMode.Normal)
                sleep(Duration.second * 1)
                @Expect(SmoothZoomInfoAvailableCallback.invoked, false)
            } catch (e: BusinessException) {
                @Expect(e.toString(),"")
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8400
     * @tc.name      : Test_VideoSessionSmoothCallback1
     * @tc.desc      : test Camera Test_VideoSessionSmoothCallback1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSessionSmoothCallback1() {
        try {
            let TAG = "Test_VideoSessionSmoothCallback1"
            let session = getVideoSession()
            try {
                let callback = SmoothZoomInfoAvailableCallback()
                SmoothZoomInfoAvailableCallback.invoked = false
                session.setSmoothZoom(0.3, SmoothZoomMode.Normal)
                sleep(Duration.second * 1)
                @Expect(SmoothZoomInfoAvailableCallback.invoked, false)
            } catch (e: BusinessException) {
                @Expect(e.toString(),"")
            } finally {
                session.release()
            }
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_8500
     * @tc.name      : Test_VideoSessionErrorCallback
     * @tc.desc      : test Camera Test_VideoSessionErrorCallback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_VideoSessionErrorCallback() {
        let TAG = "Test_VideoSessionErrorCallback"
        try {
            let session = getVideoSession()
            session.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_Test_camera_9000
     * @tc.name      : Test_ErrorCase
     * @tc.desc      : test Camera Test_ErrorCase
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ErrorCase() {
        try {
            let session: PhotoSession = (getCameraManager().createSession(NormalPhoto) as PhotoSession).getOrThrow()
            Test_ErrorCaseFlash(session)
            Test_ErrorCaseAutoExposure(session)
            Test_ErrorCaseFocus(session)
            Test_ErrorCaseZoom(session)
            Test_ErrorCaseColor(session)
            let vsession: VideoSession = (getCameraManager().createSession(NormalVideo) as VideoSession).getOrThrow()
            Test_ErrorCaseFlash(vsession)
            Test_ErrorCaseAutoExposure(vsession)
            Test_ErrorCaseFocus(vsession)
            Test_ErrorCaseZoom(vsession)
            Test_ErrorCaseColor(vsession)
            Test_ErrorCaseStabilization(vsession)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Camera service fatal error.")
        }
    }

    func Test_ErrorCaseFlash(session: Flash) {
        // Hilog.info(0, "cangjietest", // "[multimedia_camera]: ErrorCaseFlash")

        try {
            session.hasFlash();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.isFlashModeSupported(FlashModeAlwaysOpen);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getFlashMode();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setFlashMode(FlashModeAlwaysOpen);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    func Test_ErrorCaseAutoExposure(session: AutoExposure) {
        // Hilog.info(0, "cangjietest", // "[multimedia_camera]: ErrorCaseAutoExposure")

        try {
            session.isExposureModeSupported(ExposureModeContinuousAuto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getExposureBiasRange();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getExposureMode();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setExposureMode(ExposureMode.ExposureModeContinuousAuto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getMeteringPoint();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setMeteringPoint(cameraPoint(0.5, 0.5));
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setExposureBias(0.5);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getExposureValue();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    func Test_ErrorCaseFocus(session: Focus) {
        // Hilog.info(0, "cangjietest", // "[multimedia_camera]: ErrorCaseFocus")

        try {
            session.isFocusModeSupported(FocusMode.FocusModeAuto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setFocusMode(FocusMode.FocusModeAuto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getFocusMode();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setFocusPoint(cameraPoint(0.5, 0.5));
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getFocusPoint();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getFocalLength();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    func Test_ErrorCaseZoom(session: Zoom) {
        try {
            session.getZoomRatioRange();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setZoomRatio(0.5);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getZoomRatio();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setSmoothZoom(0.5, SmoothZoomMode.Normal);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    func Test_ErrorCaseStabilization(session: Stabilization) {
        // Hilog.info(0, "cangjietest", // "[multimedia_camera]: ErrorCaseStabilization")

        try {
            session.isVideoStabilizationModeSupported(VideoStabilizationMode.Auto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getActiveVideoStabilizationMode();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setVideoStabilizationMode(VideoStabilizationMode.Auto);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }

    func Test_ErrorCaseColor(session: ColorManagement) {
        // Hilog.info(0, "cangjietest", // "[multimedia_camera]: ErrorCaseColor")

        // both ArkTS and C++ implementations don't return error code,
        // cj does the same thing
        try {
            session.getSupportedColorSpaces()
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.setColorSpace(ColorSpace.DisplayP3);
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }

        try {
            session.getActiveColorSpace();
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
    }
}
