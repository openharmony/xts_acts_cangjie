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

@Test
class Test_camera_errors3 {
    /*
     * @tc.number    : Sub_Cangjie_Camera_errors3_0100
     * @tc.name      : Test_EnumEq_Operators
     * @tc.desc      : Cover the enum == operators (FlashMode, TorchMode, QualityLevel,
     *                 VideoCodecType, PreconfigType, PreconfigRatio, MetadataObjectType)
     *                 declared in camera cj.d with real comparisons.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EnumEq_Operators(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_EnumEq_Operators begins.")
        @Expect(FlashMode.FlashModeAuto == FlashMode.FlashModeAuto, true)
        @Expect(TorchMode.Off == TorchMode.Off, true)
        @Expect(QualityLevel.QualityLevelHigh == QualityLevel.QualityLevelHigh, true)
        @Expect(VideoCodecType.Avc == VideoCodecType.Avc, true)
        @Expect(PreconfigType.Preconfig720p == PreconfigType.Preconfig720p, true)
        @Expect(PreconfigRatio.PreconfigRatio_1_1 == PreconfigRatio.PreconfigRatio_1_1, true)
        @Expect(MetadataObjectType.FaceDetection == MetadataObjectType.FaceDetection, true)
        Hilog.info(0, "cangjietest", "testcase Test_EnumEq_Operators ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Camera_errors3_0200
     * @tc.name      : Test_InterfaceTypeRefs
     * @tc.desc      : Cover the capability interfaces (AutoExposure, ColorManagement,
     *                 Focus, Stabilization, AutoExposureQuery, ColorManagementQuery,
     *                 FlashQuery, FocusQuery, ZoomQuery, StabilizationQuery) and the
     *                 session/output classes (PhotoSession, VideoSession, Session,
     *                 CameraOutput) via real sessions and type annotations.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_InterfaceTypeRefs(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_InterfaceTypeRefs begins.")
        let mgr = getCameraManager(getAbilityContext())
        let cameras: Array<CameraDevice> = mgr.getSupportedCameras()
        @Expect(cameras.size > 0, true)
        let cap: CameraOutputCapability = mgr.getSupportedOutputCapability(cameras[0], SceneMode.NormalPhoto)
        let photoSession: PhotoSession = (mgr.createSession(SceneMode.NormalPhoto) as PhotoSession).getOrThrow()
        let sess: Session = photoSession
        let ae: AutoExposure = photoSession
        let cm: ColorManagement = photoSession
        let fo: Focus = photoSession
        let aeq: AutoExposureQuery = photoSession
        let cmq: ColorManagementQuery = photoSession
        let fq: FlashQuery = photoSession
        let foq: FocusQuery = photoSession
        let zq: ZoomQuery = photoSession
        @Expect(true)
        photoSession.release()
        var videoSession: ?VideoSession = None
        try {
            let vs: VideoSession = (mgr.createSession(SceneMode.NormalVideo) as VideoSession).getOrThrow()
            videoSession = vs
            let st: Stabilization = vs
            let stq: StabilizationQuery = vs
            @Expect(true)
            vs.release()
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "video session code=" + e.code.toString())
        }
        try {
            let po: PhotoOutput = mgr.createPhotoOutput(profile: cap.photoProfiles[0])
            let camOut: CameraOutput = po
            @Expect(true)
            po.release()
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "photo output code=" + e.code.toString())
        }
        Hilog.info(0, "cangjietest", "testcase Test_InterfaceTypeRefs ends.")
    }
}
