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
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import kit.MediaLibraryKit.*
import ohos.data.data_share_predicates
import ohos.business_exception.BusinessException
import ohos.callback_invoke.Callback1Argument

class Err2ChangeCallback <: Callback1Argument<ChangeData> {
    public func invoke(err: ?BusinessException, d: ChangeData): Unit {
        Hilog.info(0, "cangjietest", "err2 change callback fired")
    }
}

class Err2DialogCallback <: Callback1Argument<Array<String>> {
    public func invoke(err: ?BusinessException, arr: Array<String>): Unit {
        Hilog.info(0, "cangjietest", "err2 dialog callback fired")
    }
}

@Test
class Test_photo_errors2 {
    /*
     * @tc.number    : Sub_Cangjie_photo_errors2_0100
     * @tc.name      : Test_Err_AssetRequests_InvalidUri
     * @tc.desc      : Cover MediaAssetChangeRequest.createImageAssetRequest/
     *                 createVideoAssetRequest with an invalid file uri, expecting 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_AssetRequests_InvalidUri(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_Err_AssetRequests_InvalidUri begins.")
        let ctx = getAbilityContext()
        try {
            MediaAssetChangeRequest.createImageAssetRequest(ctx, "file://bad_uri_image")
            Hilog.info(0, "cangjietest", "unexpected createImageAssetRequest success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        try {
            MediaAssetChangeRequest.createVideoAssetRequest(ctx, "file://bad_uri_video")
            Hilog.info(0, "cangjietest", "unexpected createVideoAssetRequest success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase Test_Err_AssetRequests_InvalidUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_errors2_0200
     * @tc.name      : Test_Err_DeleteAssets_InvalidUri
     * @tc.desc      : Cover MediaAssetChangeRequest.deleteAssets with invalid
     *                 uris, expecting 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_DeleteAssets_InvalidUri(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_Err_DeleteAssets_InvalidUri begins.")
        let ctx = getAbilityContext()
        try {
            MediaAssetChangeRequest.deleteAssets(ctx, ["file://bad_uri_del_1", "file://bad_uri_del_2"])
            Hilog.info(0, "cangjietest", "unexpected deleteAssets success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase Test_Err_DeleteAssets_InvalidUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_errors2_0300
     * @tc.name      : Test_Err_ShowAssetsCreationDialog_InvalidUri
     * @tc.desc      : Cover PhotoAccessHelper.showAssetsCreationDialog error path
     *                 (13900020, invalid parameter) with an invalid source uri.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ShowAssetsCreationDialog_InvalidUri(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_Err_ShowAssetsCreationDialog_InvalidUri begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            helper.showAssetsCreationDialog(["file://bad_uri_dialog"], [PhotoCreationConfig("jpg", PhotoType.Image, title: "err2_title", subtype: PhotoSubtype.Default)], Err2DialogCallback())
            Hilog.info(0, "cangjietest", "unexpected showAssetsCreationDialog success")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            helper.release()
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "helper release code=" + e.code.toString())
        }
        Hilog.info(0, "cangjietest", "testcase Test_Err_ShowAssetsCreationDialog_InvalidUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_errors2_0400
     * @tc.name      : Test_Err_ChangeRequests_Registration
     * @tc.desc      : Cover MediaAssetChangeRequest.createAssetRequest with explicit
     *                 named options and PhotoAccessHelper.registerChange/
     *                 unregisterChange with an explicit callback argument
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ChangeRequests_Registration(): Unit {
        Hilog.info(0, "cangjietest", "testcase Test_Err_ChangeRequests_Registration begins.")
        let ctx = getAbilityContext()
        let cb = Err2ChangeCallback()
        try {
            let mar: MediaAssetChangeRequest = MediaAssetChangeRequest.createAssetRequest(ctx, PhotoType.Image, "jpg",
                options: CreateOptions(title: "err2_title", subtype: PhotoSubtype.Default))
            let mcr: MediaChangeRequest = mar
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "createAssetRequest code=" + e.code.toString())
            @Expect(false)
        }
        let helper = getPhotoAccessHelper(ctx)
        try {
            helper.registerChange("err2_bad_uri_register", false, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "registerChange code=" + e.code.toString())
            @Expect(false)
        }
        try {
            helper.unregisterChange("err2_bad_uri_register", callback: cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "unregisterChange code=" + e.code.toString())
            @Expect(false)
        }
        try {
            helper.release()
        } catch (e: BusinessException) {
            Hilog.error(0, "cangjietest", "helper release code=" + e.code.toString())
        }
        Hilog.info(0, "cangjietest", "testcase Test_Err_ChangeRequests_Registration ends.")
    }
}
