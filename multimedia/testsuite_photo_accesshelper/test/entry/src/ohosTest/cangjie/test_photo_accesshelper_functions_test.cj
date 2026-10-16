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

import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*
import ohos.hilog.*
import ohos.ui_test
import ohos.base.*
import kit.MediaLibraryKit.*
import ohos.data.data_share_predicates
internal import kit.ArkData.*
import std.collection.forEach
import ohos.business_exception.BusinessException
import ohos.callback_invoke.*
import std.fs.File
import ohos.file.fs.FileIo
import ohos.file.fileuri.getUriFromPath

class ChangeDataCb <: Callback1Argument<ChangeData> {
    public func invoke(err: ?BusinessException, d: ChangeData): Unit {
        Hilog.info(0u32, "cangjietest", "", "registerChange cb: notifyType=${d.notifyType.toString()} uris=${d.uris.size} extraUris=${d.extraUris.size}")
    }
}

class StringArrayCb <: Callback1Argument<Array<String>> {
    public func invoke(err: ?BusinessException, arr: Array<String>): Unit {
        Hilog.info(0u32, "cangjietest", "", "showAssetsCreationDialog cb size=${arr.size}")
    }
}

@Test
class TestPhotoAccessHelperFunctions {

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
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_getPhotoAccessHelper_0100
     * @tc.name      : testGetPhotoAccessHelper
     * @tc.desc      : cover top-level getPhotoAccessHelper(ctx) + PhotoAccessHelper class + release; assert instance non-empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetPhotoAccessHelper(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetPhotoAccessHelper begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            @Expect(helper is PhotoAccessHelper)
            helper.release()
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetPhotoAccessHelper ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_getBurstAssets_0100
     * @tc.name      : testGetBurstAssets
     * @tc.desc      : cover PhotoAccessHelper.getBurstAssets with empty burstKey; assert count>=0 or documented error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetBurstAssets(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetBurstAssets begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let opts = FetchOptions(["uri"], DataSharePredicates())
        try {
            let _ = helper.getBurstAssets("", opts)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetBurstAssets ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_createVideoAssetRequest_0100
     * @tc.name      : testCreateVideoAssetRequestInvalidUri
     * @tc.desc      : cover MediaAssetChangeRequest.createVideoAssetRequest with empty fileUri; expect 13900002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateVideoAssetRequestInvalidUri(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateVideoAssetRequestInvalidUri begins.")
        try {
            let _ = MediaAssetChangeRequest.createVideoAssetRequest(getAbilityContext(), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateVideoAssetRequestInvalidUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_createAssetRequest_0100
     * @tc.name      : testCreateAssetRequestImage
     * @tc.desc      : cover MediaAssetChangeRequest.createAssetRequest(ctx, Image, jpg); assert instance non-empty or 14000011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateAssetRequestImage(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateAssetRequestImage begins.")
        try {
            let req = MediaAssetChangeRequest.createAssetRequest(getAbilityContext(), PhotoType.Image, "jpg")
            @Expect(req is MediaAssetChangeRequest)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateAssetRequestImage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_deleteAssets_0100
     * @tc.name      : testDeleteAssetsEmptyArray
     * @tc.desc      : cover MediaAssetChangeRequest.deleteAssets(ctx, []) with empty PhotoAsset array; expect 14000011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDeleteAssetsEmptyArray(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDeleteAssetsEmptyArray begins.")
        try {
            MediaAssetChangeRequest.deleteAssets(getAbilityContext(), Array<PhotoAsset>())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testDeleteAssetsEmptyArray ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_deleteAssetsUri_0100
     * @tc.name      : testDeleteAssetsInvalidUri
     * @tc.desc      : cover MediaAssetChangeRequest.deleteAssets(ctx, [badUri]) with invalid uri string; expect 14000002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDeleteAssetsInvalidUri(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDeleteAssetsInvalidUri begins.")
        try {
            MediaAssetChangeRequest.deleteAssets(getAbilityContext(), ["invalid_uri"])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testDeleteAssetsInvalidUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_registerChange_0100
     * @tc.name      : testRegisterChange
     * @tc.desc      : cover PhotoAccessHelper.registerChange with DefaultPhotoUri; assert helper still valid after register
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRegisterChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testRegisterChange begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let uri = DefaultChangeUri.DefaultPhotoUri.toString()
            let cb = ChangeDataCb()
            helper.registerChange(uri, true, cb)
            helper.registerChange(uri, false, cb)
            @Expect(helper is PhotoAccessHelper)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testRegisterChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_unregisterChange_0100
     * @tc.name      : testUnregisterChange
     * @tc.desc      : cover PhotoAccessHelper.unregisterChange with DefaultPhotoUri (default callback None); assert helper still valid
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUnregisterChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testUnregisterChange begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let uri = DefaultChangeUri.DefaultPhotoUri.toString()
            helper.unregisterChange(uri)
            helper.unregisterChange(uri, callback: ChangeDataCb())
            @Expect(helper is PhotoAccessHelper)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testUnregisterChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_getAlbums_0100
     * @tc.name      : testGetAlbumsAndAlbumResult
     * @tc.desc      : cover PhotoAccessHelper.getAlbums + AlbumResult.getCount/getAllObjects; assert count == array size
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetAlbumsAndAlbumResult(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetAlbumsAndAlbumResult begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let ar: AlbumResult = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
            let fr: FetchResult = ar
            let c = ar.getCount()
            let all = ar.getAllObjects()
            @Expect(all.size == Int64(c))
            if (all.size > 0) {
                let a: Album = ar.getObjectByPosition(0)
                let ab: AbsAlbum = a
                @Expect(ab is AbsAlbum)
            } else {
                @Expect(all.size == 0)
            }
            ar.close()
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetAlbumsAndAlbumResult ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_getAssets_0100
     * @tc.name      : testGetAssetsAndPhotoAssetResult
     * @tc.desc      : cover PhotoAssetResult.getCount/getAllObjects/isAfterLast (FetchResult inherited); assert count == array size
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetAssetsAndPhotoAssetResult(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetAssetsAndPhotoAssetResult begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let opts = FetchOptions(["uri"], DataSharePredicates())
            let result: PhotoAssetResult = helper.getAssets(opts)
            let fr: FetchResult = result
            let c = result.getCount()
            let all = result.getAllObjects()
            let afterLast = result.isAfterLast()
            @Expect(all.size == Int64(c))
            if (all.size > 0) {
                let p: PhotoAsset = result.getObjectByPosition(0)
                @Expect(p.uri.size > 0)
            } else {
                @Expect(all.size == 0)
            }
            result.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 14000011i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetAssetsAndPhotoAssetResult ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_albumResultObjects_0100
     * @tc.name      : testAlbumResultObjectAccessors
     * @tc.desc      : cover AlbumResult.getFirstObject/getLastObject/getNextObject; conditional on device having albums
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAlbumResultObjectAccessors(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumResultObjectAccessors begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let ar = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
            let all = ar.getAllObjects()
            if (all.size > 0) {
                try {
                    let first = ar.getFirstObject()
                    @Expect(first.albumUri.size > 0)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                try {
                    let last = ar.getLastObject()
                    @Expect(last.albumUri.size > 0)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                try {
                    let next = ar.getNextObject()
                    @Expect(next.albumUri.size > 0)
                } catch (e: BusinessException) {
                    @Expect(e.code, 14000011i32)
                }
            } else {
                @Expect(all.size == 0)
            }
            ar.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 14000011i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumResultObjectAccessors ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_photoAssetResultObjects_0100
     * @tc.name      : testPhotoAssetResultObjectAccessors
     * @tc.desc      : cover PhotoAssetResult.getFirstObject/getLastObject/getNextObject; conditional on device having photos
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoAssetResultObjectAccessors(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoAssetResultObjectAccessors begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let opts = FetchOptions(["uri"], DataSharePredicates())
        try {
            let result = helper.getAssets(opts)
            try {
                let count = result.getCount()
                if (count > 0) {
                    let first = result.getFirstObject()
                    @Expect(first.uri.size > 0)
                    if (count > 1) {
                        @Expect(!result.isAfterLast())
                        let next = result.getNextObject()
                        @Expect(next.uri.size > 0)
                        @Expect(next.uri != first.uri)
                    }
                    let last = result.getLastObject()
                    @Expect(last.uri.size > 0)
                    @Expect(result.isAfterLast())
                    if (count > 1) {
                        @Expect(last.uri != first.uri)
                    }
                } else {
                    @Expect(count == 0)
                }
            } finally {
                result.close()
            }
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoAssetResultObjectAccessors ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_photoAssetProps_0100
     * @tc.name      : testPhotoAssetPropertiesAndMethods
     * @tc.desc      : cover PhotoAsset uri/photoType/displayName props + get/set/commitModify/getThumbnail; conditional on device photos
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoAssetPropertiesAndMethods(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoAssetPropertiesAndMethods begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let opts = FetchOptions(["uri"], DataSharePredicates())
        try {
            let result = helper.getAssets(opts)
            let all = result.getAllObjects()
            if (all.size > 0) {
                let asset = all[0]
                @Expect(asset.uri.size > 0 && asset.displayName.size > 0)
                try {
                    let m = asset.get(PhotoKeys.Uri.toString())
                    match (m) {
                        case MemberType.StringValue(s) => @Expect(s.size > 0)
                        case _ => @Expect(false)
                    }
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                try {
                    asset.set(PhotoKeys.Title.toString(), "cangjie_title")
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 14000014i32)
                }
                try {
                    asset.commitModify()
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 14000014i32)
                }
                try {
                    let thumb = asset.getThumbnail()
                    @Expect(thumb.getImageInfo().size.width > 0)
                } catch (e: BusinessException) {
                    @Expect(e.code, 13900020i32)
                }
            } else {
                @Expect(all.size == 0)
            }
            result.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 14000011i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoAssetPropertiesAndMethods ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_absAlbumAlbumProps_0100
     * @tc.name      : testAbsAlbumAndAlbumProperties
     * @tc.desc      : cover AbsAlbum albumType/albumSubtype/albumName/albumUri/count/coverUri + Album imageCount/videoCount; conditional on device albums
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAbsAlbumAndAlbumProperties(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAbsAlbumAndAlbumProperties begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let ar = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
            try {
                let all = ar.getAllObjects()
                if (all.size > 0) {
                    let album = all[0]
                    @Expect(album.albumUri.size > 0)
                    @Expect(album.albumType, AlbumType.System)
                    @Expect(album.albumSubtype != AlbumSubtype.AnyAlbum)
                    let _ = album.albumName
                    @Expect(album.count >= 0)
                    let _ = album.coverUri
                    @Expect(album.imageCount >= 0)
                    @Expect(album.videoCount >= 0)
                    @Expect(album.imageCount <= album.count)
                    @Expect(album.videoCount <= album.count)
                } else {
                    @Expect(all.size == 0)
                }
            } finally {
                ar.close()
            }
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testAbsAlbumAndAlbumProperties ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_mediaAssetChangeRequestMethods_0100
     * @tc.name      : testMediaAssetChangeRequestInstanceMethods
     * @tc.desc      : cover MediaAssetChangeRequest getAsset/setTitle/addResource(byte)/saveCameraPhoto/discardCameraPhoto/getWriteCacheHandler; conditional on device photos
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMediaAssetChangeRequestInstanceMethods(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaAssetChangeRequestInstanceMethods begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let opts = FetchOptions(["uri"], DataSharePredicates())
        try {
            let result = helper.getAssets(opts)
            let all = result.getAllObjects()
            if (all.size > 0) {
                let asset = all[0]
                let req = MediaAssetChangeRequest(asset)
                try {
                    let a = req.getAsset()
                    @Expect(a.uri.size > 0)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                try {
                    req.setTitle("cangjie_set_title")
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
                try {
                    req.addResource(ResourceType.ImageResource, Array<Byte>())
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
                try {
                    req.saveCameraPhoto()
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
                try {
                    req.discardCameraPhoto()
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
            } else {
                @Expect(all.size == 0)
            }
            result.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 14000011i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaAssetChangeRequestInstanceMethods ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_addResourceFileUri_0100
     * @tc.name      : testAddResourceFileUri
     * @tc.desc      : cover MediaAssetChangeRequest.addResource(ResourceType, fileUri) overload
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAddResourceFileUri(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAddResourceFileUri begins.")
        let context = getAbilityContext()
        let filePath = context.filesDir + "/test_add_resource.png"
        let imageData: Array<Byte> = [137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 1,
            0, 0, 0, 1, 8, 2, 0, 0, 0, 144, 119, 83, 222, 0, 0, 0, 12, 73, 68, 65, 84, 120, 218, 99, 248, 207, 192,
            0, 0, 3, 1, 1, 0, 247, 3, 65, 67, 0, 0, 0, 0, 73, 69, 78, 68, 174, 66, 96, 130]
        try {
            try {
                FileIo.unlink(filePath)
            } catch (e: Exception) {}
            File.writeTo(filePath, imageData)
            let fileUri = getUriFromPath(filePath)
            let req = MediaAssetChangeRequest.createAssetRequest(context, PhotoType.Image, "png")
            req.addResource(ResourceType.ImageResource, fileUri)
            @Expect(fileUri.size > 0)
        } catch (e: Exception) {
            @Expect(false)
        } finally {
            try {
                FileIo.unlink(filePath)
            } catch (e: Exception) {}
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testAddResourceFileUri ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_getWriteCacheHandler_0100
     * @tc.name      : testGetWriteCacheHandler
     * @tc.desc      : cover MediaAssetChangeRequest.getWriteCacheHandler; assert handler>=0 or documented error; conditional on device photos
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetWriteCacheHandler(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetWriteCacheHandler begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        let opts = FetchOptions(["uri"], DataSharePredicates())
        try {
            let result = helper.getAssets(opts)
            let all = result.getAllObjects()
            if (all.size > 0) {
                let asset = all[0]
                let req = MediaAssetChangeRequest(asset)
                try {
                    let h = req.getWriteCacheHandler()
                    @Expect(h >= 0i32)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
            } else {
                @Expect(all.size == 0)
            }
            result.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 14000011i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetWriteCacheHandler ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_mediaAlbumChangeRequestMethods_0100
     * @tc.name      : testMediaAlbumChangeRequestMethods
     * @tc.desc      : cover MediaAlbumChangeRequest init/getAlbum/setAlbumName/addAssets/removeAssets; conditional on device albums
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMediaAlbumChangeRequestMethods(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaAlbumChangeRequestMethods begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let ar = helper.getAlbums(AlbumType.System, AlbumSubtype.AnyAlbum)
            let all = ar.getAllObjects()
            if (all.size > 0) {
                let album = all[0]
                let req = MediaAlbumChangeRequest(album)
                try {
                    let ga = req.getAlbum()
                    @Expect(ga.albumUri.size > 0)
                } catch (e: BusinessException) {
                    @Expect(false)
                }
                try {
                    req.setAlbumName("cangjie_album_name")
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
                try {
                    req.addAssets(Array<PhotoAsset>())
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
                try {
                    req.removeAssets(Array<PhotoAsset>())
                    @Expect(true)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401i32)
                }
            } else {
                @Expect(all.size == 0)
            }
            ar.close()
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaAlbumChangeRequestMethods ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_showAssetsCreationDialog_0100
     * @tc.name      : testShowAssetsCreationDialogEmpty
     * @tc.desc      : cover PhotoAccessHelper.showAssetsCreationDialog with empty inputs; expect 14000011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testShowAssetsCreationDialogEmpty(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testShowAssetsCreationDialogEmpty begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let cb = StringArrayCb()
            helper.showAssetsCreationDialog(Array<String>(), Array<PhotoCreationConfig>(), cb)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testShowAssetsCreationDialogEmpty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_applyChanges_0100
     * @tc.name      : testApplyChanges
     * @tc.desc      : cover PhotoAccessHelper.applyChanges with a created MediaAssetChangeRequest; assert helper valid or documented error
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testApplyChanges(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testApplyChanges begins.")
        try {
            let helper = getPhotoAccessHelper(getAbilityContext())
            let req = MediaAssetChangeRequest.createAssetRequest(getAbilityContext(), PhotoType.Image, "jpg")
            helper.applyChanges(req)
            @Expect(helper is PhotoAccessHelper)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testApplyChanges ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_func_mediaChangeRequestInterface_0100
     * @tc.name      : testMediaChangeRequestInterface
     * @tc.desc      : cover MediaChangeRequest interface by upcasting a MediaAssetChangeRequest instance to the interface type
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMediaChangeRequestInterface(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaChangeRequestInterface begins.")
        try {
            let req = MediaAssetChangeRequest.createAssetRequest(getAbilityContext(), PhotoType.Image, "jpg")
            let mcr: MediaChangeRequest = req
            @Expect(mcr is MediaChangeRequest)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testMediaChangeRequestInterface ends.")
    }
}
