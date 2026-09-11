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
import std.collection.forEach

@Test
class Test_photo_errors {

    @BeforeAll
    protected func beforeAll(): Unit {
        ["ohos.permission.READ_IMAGEVIDEO", "ohos.permission.WRITE_IMAGEVIDEO"] |>
            forEach {
            permissionName: String =>
            getRequiredPermissions([permissionName])
            sleepFor(5.second)
            try {
                click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
                sleepFor(5.second)
            } catch (e: Exception) {}
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0100
     * @tc.name      : Test_Err_FetchResult_UseAfterClose
     * @tc.desc      : Cover FetchResult.getCount error path (13900020) by calling getCount
     *                 on a closed PhotoAssetResult and a closed AlbumResult
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_FetchResult_UseAfterClose(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_FetchResult_UseAfterClose begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let presult = helper.getAssets(FetchOptions(["uri"], DataSharePredicates()))
        presult.close()
        try {
            presult.getCount()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        let aresult = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
        aresult.close()
        try {
            aresult.getCount()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_FetchResult_UseAfterClose ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0200
     * @tc.name      : Test_Err_AlbumResult_UseAfterClose
     * @tc.desc      : Cover AlbumResult.getFirstObject/getNextObject/getLastObject/
     *                 getObjectByPosition error path (13900020) after close
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_AlbumResult_UseAfterClose(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AlbumResult_UseAfterClose begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let ar = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
        ar.close()
        try {
            ar.getFirstObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            ar.getNextObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            ar.getLastObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            ar.getObjectByPosition(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_AlbumResult_UseAfterClose ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0300
     * @tc.name      : Test_Err_PhotoAssetResult_UseAfterClose
     * @tc.desc      : Cover PhotoAssetResult.getFirstObject/getNextObject/getLastObject/
     *                 getObjectByPosition error path (13900020) after close
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_PhotoAssetResult_UseAfterClose(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PhotoAssetResult_UseAfterClose begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let result = helper.getAssets(FetchOptions(["uri"], DataSharePredicates()))
        result.close()
        try {
            result.getFirstObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            result.getNextObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            result.getLastObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        try {
            result.getObjectByPosition(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_PhotoAssetResult_UseAfterClose ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0400
     * @tc.name      : Test_Err_Helper_UseAfterRelease
     * @tc.desc      : Cover PhotoAccessHelper.release error path (13900020) by double
     *                 release, and PhotoAccessHelper.getAlbums error path (13900020) on a
     *                 released helper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Helper_UseAfterRelease(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Helper_UseAfterRelease begins.")
        let h1 = getPhotoAccessHelper(getAbilityContext())
        h1.release()
        try {
            h1.release()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        let h2 = getPhotoAccessHelper(getAbilityContext())
        h2.release()
        try {
            h2.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_Helper_UseAfterRelease ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0500
     * @tc.name      : Test_Err_GetAssets_InvalidFetchColumn
     * @tc.desc      : Cover PhotoAccessHelper.getAssets error path (13900020) with a
     *                 non-existent fetchColumn string in FetchOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GetAssets_InvalidFetchColumn(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_GetAssets_InvalidFetchColumn begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let result = helper.getAssets(FetchOptions(["xxx_invalid_column"], DataSharePredicates()))
            result.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_GetAssets_InvalidFetchColumn ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_err_0600
     * @tc.name      : Test_Err_GetAlbums_InvalidFetchColumn
     * @tc.desc      : Cover PhotoAccessHelper.getAlbums error path (13900020) with a
     *                 non-existent fetchColumn string in FetchOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GetAlbums_InvalidFetchColumn(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_GetAlbums_InvalidFetchColumn begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let result = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum,
                options: FetchOptions(["xxx_invalid_column"], DataSharePredicates()))
            result.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_Err_GetAlbums_InvalidFetchColumn ends.")
    }

}
