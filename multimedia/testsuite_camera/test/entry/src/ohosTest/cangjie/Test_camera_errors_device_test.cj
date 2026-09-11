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
import ohos.multimedia.image.createImageReceiver
import ohos.multimedia.image.ImageFormat
import ohos.multimedia.image.Size as ImageSize
import ohos.business_exception.BusinessException

@Test
class Test_camera_errors_device {
    func setupRunningSession(mgr: CameraManager): (PhotoSession, CameraInput, PhotoOutput) {
        let cameras: Array<CameraDevice> = mgr.getSupportedCameras()
        @Expect(cameras.size > 0, true)
        let cap = mgr.getSupportedOutputCapability(cameras[0], SceneMode.NormalPhoto)
        let photoProfiles = cap.photoProfiles
        @Expect(photoProfiles.size > 0, true)
        let cameraInput = mgr.createCameraInput(cameras[0])
        cameraInput.open()
        let photoOutput = mgr.createPhotoOutput(profile: photoProfiles[0])
        let session: PhotoSession = (mgr.createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        session.beginConfig()
        session.addInput(cameraInput)
        session.addOutput(photoOutput)
        session.commitConfig()
        session.start()
        return (session, cameraInput, photoOutput)
    }

    func teardown(session: PhotoSession, cameraInput: CameraInput, photoOutput: PhotoOutput): Unit {
        try { session.stop() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "stop code=${e.code}") }
        try { session.release() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "srel code=${e.code}") }
        try { cameraInput.close() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "irel code=${e.code}") }
        try { photoOutput.release() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "orel code=${e.code}") }
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_errors_dev_0200
     * @tc.name      : Test_Err_Device_PreviewOutput_FrameRateConflict
     * @tc.desc      : Requires real device camera and preview stream via ImageReceiver
     *                 surface sized to the profile. Cover PreviewOutput.setFrameRate
     *                 conflict error path (7400101, real-device measured: the range
     *                 check precedes the conflict check on device)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Device_PreviewOutput_FrameRateConflict(): Unit {
        Hilog.info(0u32, "cangjietest", "", "device case Test_Err_Device_PreviewOutput_FrameRateConflict begins.")
        let mgr = getCameraManager(getAbilityContext())
        let cameras: Array<CameraDevice> = mgr.getSupportedCameras()
        @Expect(cameras.size > 0, true)
        let cap = mgr.getSupportedOutputCapability(cameras[0], SceneMode.NormalPhoto)
        let profiles = cap.previewProfiles
        @Expect(profiles.size > 0, true)
        let receiver = createImageReceiver(ImageSize(Int32(profiles[0].size.width), Int32(profiles[0].size.height)), ImageFormat.Jpeg, 8)
        let surfaceId = receiver.getReceivingSurfaceId()
        let previewOutput = mgr.createPreviewOutput(profiles[0], surfaceId)
        let cameraInput = mgr.createCameraInput(cameras[0])
        cameraInput.open()
        let session: PhotoSession = (mgr.createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        session.beginConfig()
        session.addInput(cameraInput)
        session.addOutput(previewOutput)
        session.commitConfig()
        session.start()
        try {
            previewOutput.setFrameRate(99999, 100000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400101i32)
        }
        try { session.stop() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "stop code=${e.code}") }
        try { session.release() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "srel code=${e.code}") }
        try { cameraInput.close() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "irel code=${e.code}") }
        try { previewOutput.release() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "orel code=${e.code}") }
        try { receiver.release() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "rrel code=${e.code}") }
        Hilog.info(0u32, "cangjietest", "", "device case Test_Err_Device_PreviewOutput_FrameRateConflict ends.")
    }


}
