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
import ohos.business_exception.BusinessException

func getErrorsCameraManager(): CameraManager {
    return getCameraManager(getAbilityContext())
}

@Test
class Test_camera_errors {
    /*
     * @tc.number    : Sub_Cangjie_Camera_errors_0100
     * @tc.name      : Test_Err_Manager_CreateOutput_InvalidSurface
     * @tc.desc      : Cover CameraManager.createPreviewOutput/createVideoOutput error path
     *                 (7400201, surface unavailable) with an invalid surfaceId
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Manager_CreateOutput_InvalidSurface(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Manager_CreateOutput_InvalidSurface begins.")
        let mgr = getErrorsCameraManager()
        try {
            let preview = mgr.createPreviewOutput("invalid_surface_id_for_error")
            preview.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        try {
            let video = mgr.createVideoOutput("invalid_surface_id_for_error")
            video.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Manager_CreateOutput_InvalidSurface ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_errors_0300
     * @tc.name      : Test_Err_PhotoOutput_Rotation_NotRunning
     * @tc.desc      : Cover PhotoOutput.getPhotoRotation error path (7400201) on an output
     *                 created without a running session; state check precedes parameter check
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PhotoOutput_Rotation_NotRunning(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PhotoOutput_Rotation_NotRunning begins.")
        let mgr = getErrorsCameraManager()
        let photoOutput = mgr.createPhotoOutput()
        try {
            photoOutput.getPhotoRotation(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400201i32)
        }
        try {
            photoOutput.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "photoOutput.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PhotoOutput_Rotation_NotRunning ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_errors_0500
     * @tc.name      : Test_Err_Session_TorchMode_BeginConfig
     * @tc.desc      : Cover CameraManager.setTorchMode (7400102) and Session.beginConfig
     *                 re-entry (7400105) error paths
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Session_TorchMode_BeginConfig(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Session_TorchMode_BeginConfig begins.")
        let mgr = getErrorsCameraManager()
        try {
            mgr.setTorchMode(TorchMode.Auto)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400102i32)
        }
        let session: PhotoSession = (mgr.createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        try {
            session.beginConfig()
            session.beginConfig()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 7400105i32)
        }
        try {
            session.release()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "session.release error code", e.code.toString())
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Session_TorchMode_BeginConfig ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_errors_0600
     * @tc.name      : Test_Err_CameraInput_Open
     * @tc.desc      : Cover CameraInput.open normal path; 7400107/7400108 require camera
     *                 conflict/security-disabled states not constructible on emulator
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_CameraInput_Open(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_CameraInput_Open begins.")
        let mgr = getErrorsCameraManager()
        let cameras: Array<CameraDevice> = mgr.getSupportedCameras()
        @Expect(cameras.size > 0, true)
        let cameraInput = mgr.createCameraInput(cameras[0])
        cameraInput.open()
        cameraInput.close()
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_CameraInput_Open ends.")
    }
}
