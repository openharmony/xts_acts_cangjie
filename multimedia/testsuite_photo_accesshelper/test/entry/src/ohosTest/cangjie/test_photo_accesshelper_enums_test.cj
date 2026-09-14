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
import ohos.base.*
import kit.MediaLibraryKit.*

@Test
class TestPhotoAccessHelperEnums {

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_albumType_0100
     * @tc.name      : testAlbumTypeEnum
     * @tc.desc      : cover AlbumType enum (User, System) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAlbumTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumTypeEnum begins.")
        let user = AlbumType.User
        let system = AlbumType.System
        @Expect(user.toString(), "AlbumType.User")
        @Expect(system.toString(), "AlbumType.System")
        @Expect(user == AlbumType.User)
        @Expect(system == AlbumType.System)
        @Expect(user != system)
        @Expect(system != user)
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_albumSubtype_0100
     * @tc.name      : testAlbumSubtypeEnum
     * @tc.desc      : cover AlbumSubtype enum (UserGeneric, Favorite, Video, Image, AnyAlbum) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAlbumSubtypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumSubtypeEnum begins.")
        let userGeneric = AlbumSubtype.UserGeneric
        let favorite = AlbumSubtype.Favorite
        let video = AlbumSubtype.Video
        let image = AlbumSubtype.Image
        let any = AlbumSubtype.AnyAlbum
        @Expect(userGeneric.toString(), "AlbumSubtype.UserGeneric")
        @Expect(favorite.toString(), "AlbumSubtype.Favorite")
        @Expect(video.toString(), "AlbumSubtype.Video")
        @Expect(image.toString(), "AlbumSubtype.Image")
        @Expect(any.toString(), "AlbumSubtype.AnyAlbum")
        @Expect(userGeneric == AlbumSubtype.UserGeneric)
        @Expect(favorite != video)
        @Expect(image != any)
        @Expect(video != image)
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumSubtypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_photoSubtype_0100
     * @tc.name      : testPhotoSubtypeEnum
     * @tc.desc      : cover PhotoSubtype enum (Default, MovingPhoto, Burst) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoSubtypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoSubtypeEnum begins.")
        let def = PhotoSubtype.Default
        let moving = PhotoSubtype.MovingPhoto
        let burst = PhotoSubtype.Burst
        @Expect(def.toString(), "PhotoSubtype.Default")
        @Expect(moving.toString(), "PhotoSubtype.MovingPhoto")
        @Expect(burst.toString(), "PhotoSubtype.Burst")
        @Expect(def == PhotoSubtype.Default)
        @Expect(moving == PhotoSubtype.MovingPhoto)
        @Expect(burst == PhotoSubtype.Burst)
        @Expect(def != moving)
        @Expect(moving != burst)
        @Expect(def != burst)
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoSubtypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_deliveryMode_0100
     * @tc.name      : testDeliveryModeEnum
     * @tc.desc      : cover DeliveryMode enum (FastMode, HighQualityMode, BalanceMode) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDeliveryModeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDeliveryModeEnum begins.")
        let fast = DeliveryMode.FastMode
        let hq = DeliveryMode.HighQualityMode
        let bal = DeliveryMode.BalanceMode
        @Expect(fast.toString(), "DeliveryMode.FastMode")
        @Expect(hq.toString(), "DeliveryMode.HighQualityMode")
        @Expect(bal.toString(), "DeliveryMode.BalanceMode")
        @Expect(fast == DeliveryMode.FastMode)
        @Expect(hq == DeliveryMode.HighQualityMode)
        @Expect(bal == DeliveryMode.BalanceMode)
        @Expect(fast != hq)
        @Expect(hq != bal)
        @Expect(fast != bal)
        Hilog.info(0u32, "cangjietest", "", "testcase testDeliveryModeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_photoViewMimeTypes_0100
     * @tc.name      : testPhotoViewMimeTypesEnum
     * @tc.desc      : cover PhotoViewMimeTypes enum (ImageType, VideoType, ImageVideoType, MovingPhotoImageType) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoViewMimeTypesEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoViewMimeTypesEnum begins.")
        let img = PhotoViewMimeTypes.ImageType
        let vid = PhotoViewMimeTypes.VideoType
        let iv = PhotoViewMimeTypes.ImageVideoType
        let mp = PhotoViewMimeTypes.MovingPhotoImageType
        @Expect(img.toString(), "PhotoViewMimeTypes.ImageType")
        @Expect(vid.toString(), "PhotoViewMimeTypes.VideoType")
        @Expect(iv.toString(), "PhotoViewMimeTypes.ImageVideoType")
        @Expect(mp.toString(), "PhotoViewMimeTypes.MovingPhotoImageType")
        @Expect(img == PhotoViewMimeTypes.ImageType)
        @Expect(vid == PhotoViewMimeTypes.VideoType)
        @Expect(iv == PhotoViewMimeTypes.ImageVideoType)
        @Expect(mp == PhotoViewMimeTypes.MovingPhotoImageType)
        @Expect(img != vid)
        @Expect(iv != mp)
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoViewMimeTypesEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_recommendationType_0100
     * @tc.name      : testRecommendationTypeEnum
     * @tc.desc      : cover RecommendationType enum values + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRecommendationTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testRecommendationTypeEnum begins.")
        let qrBar = RecommendationType.QrOrBarCode
        let qr = RecommendationType.QrCode
        let bar = RecommendationType.BarCode
        let idc = RecommendationType.IdCard
        let pp = RecommendationType.ProfilePicture
        let pass = RecommendationType.Passport
        let bank = RecommendationType.BankCard
        let dl = RecommendationType.DriverLicense
        let drl = RecommendationType.DrivingLicense
        let fsp = RecommendationType.FeaturedSinglePortrait
        @Expect(qrBar.toString(), "RecommendationType.QrOrBarCode")
        @Expect(qr.toString(), "RecommendationType.QrCode")
        @Expect(bar.toString(), "RecommendationType.BarCode")
        @Expect(idc.toString(), "RecommendationType.IdCard")
        @Expect(pp.toString(), "RecommendationType.ProfilePicture")
        @Expect(pass.toString(), "RecommendationType.Passport")
        @Expect(bank.toString(), "RecommendationType.BankCard")
        @Expect(dl.toString(), "RecommendationType.DriverLicense")
        @Expect(drl.toString(), "RecommendationType.DrivingLicense")
        @Expect(fsp.toString(), "RecommendationType.FeaturedSinglePortrait")
        @Expect(qrBar == RecommendationType.QrOrBarCode)
        @Expect(qr == RecommendationType.QrCode)
        @Expect(bar == RecommendationType.BarCode)
        @Expect(idc == RecommendationType.IdCard)
        @Expect(pp == RecommendationType.ProfilePicture)
        @Expect(pass == RecommendationType.Passport)
        @Expect(bank == RecommendationType.BankCard)
        @Expect(dl == RecommendationType.DriverLicense)
        @Expect(drl == RecommendationType.DrivingLicense)
        @Expect(fsp == RecommendationType.FeaturedSinglePortrait)
        @Expect(qr != bar)
        @Expect(pass != bank)
        Hilog.info(0u32, "cangjietest", "", "testcase testRecommendationTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_dynamicRangeType_0100
     * @tc.name      : testDynamicRangeTypeEnum
     * @tc.desc      : cover DynamicRangeType enum (Sdr, Hdr) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDynamicRangeTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDynamicRangeTypeEnum begins.")
        let sdr = DynamicRangeType.Sdr
        let hdr = DynamicRangeType.Hdr
        @Expect(sdr.toString(), "DynamicRangeType.Sdr")
        @Expect(hdr.toString(), "DynamicRangeType.Hdr")
        @Expect(sdr == DynamicRangeType.Sdr)
        @Expect(hdr == DynamicRangeType.Hdr)
        @Expect(sdr != hdr)
        Hilog.info(0u32, "cangjietest", "", "testcase testDynamicRangeTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_resourceType_0100
     * @tc.name      : testResourceTypeEnum
     * @tc.desc      : cover ResourceType enum (ImageResource, VideoResource) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testResourceTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testResourceTypeEnum begins.")
        let img = ResourceType.ImageResource
        let vid = ResourceType.VideoResource
        @Expect(img.toString(), "ResourceType.ImageResource")
        @Expect(vid.toString(), "ResourceType.VideoResource")
        @Expect(img == ResourceType.ImageResource)
        @Expect(vid == ResourceType.VideoResource)
        @Expect(img != vid)
        Hilog.info(0u32, "cangjietest", "", "testcase testResourceTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_notifyType_0100
     * @tc.name      : testNotifyTypeEnum
     * @tc.desc      : cover NotifyType enum (NotifyAdd, NotifyUpdate, NotifyRemove, NotifyAlbumAddAsset, NotifyAlbumRemoveAsset) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNotifyTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testNotifyTypeEnum begins.")
        let add = NotifyType.NotifyAdd
        let upd = NotifyType.NotifyUpdate
        let rm = NotifyType.NotifyRemove
        let aa = NotifyType.NotifyAlbumAddAsset
        let ar = NotifyType.NotifyAlbumRemoveAsset
        @Expect(add.toString(), "NotifyType.NotifyAdd")
        @Expect(upd.toString(), "NotifyType.NotifyUpdate")
        @Expect(rm.toString(), "NotifyType.NotifyRemove")
        @Expect(aa.toString(), "NotifyType.NotifyAlbumAddAsset")
        @Expect(ar.toString(), "NotifyType.NotifyAlbumRemoveAsset")
        @Expect(add == NotifyType.NotifyAdd)
        @Expect(upd == NotifyType.NotifyUpdate)
        @Expect(rm == NotifyType.NotifyRemove)
        @Expect(aa == NotifyType.NotifyAlbumAddAsset)
        @Expect(ar == NotifyType.NotifyAlbumRemoveAsset)
        @Expect(add != upd)
        @Expect(rm != aa)
        @Expect(aa != ar)
        Hilog.info(0u32, "cangjietest", "", "testcase testNotifyTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_photoType_0100
     * @tc.name      : testPhotoTypeEnum
     * @tc.desc      : cover PhotoType enum (Image, Video) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoTypeEnum begins.")
        let image = PhotoType.Image
        let video = PhotoType.Video
        @Expect(image.toString(), "PhotoType.Image")
        @Expect(video.toString(), "PhotoType.Video")
        @Expect(image == PhotoType.Image)
        @Expect(video == PhotoType.Video)
        @Expect(image != video)
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoTypeEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_photoKeys_0100
     * @tc.name      : testPhotoKeysEnum
     * @tc.desc      : cover PhotoKeys enum values + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoKeysEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoKeysEnum begins.")
        @Expect(PhotoKeys.Uri.toString(), "uri")
        @Expect(PhotoKeys.PhotoType.toString(), "media_type")
        @Expect(PhotoKeys.DisplayName.toString(), "display_name")
        @Expect(PhotoKeys.Size.toString(), "size")
        @Expect(PhotoKeys.DateAdded.toString(), "date_added")
        @Expect(PhotoKeys.DateModified.toString(), "date_modified")
        @Expect(PhotoKeys.Duration.toString(), "duration")
        @Expect(PhotoKeys.Width.toString(), "width")
        @Expect(PhotoKeys.Height.toString(), "height")
        @Expect(PhotoKeys.DateTaken.toString(), "date_taken")
        @Expect(PhotoKeys.Orientation.toString(), "orientation")
        @Expect(PhotoKeys.Favorite.toString(), "is_favorite")
        @Expect(PhotoKeys.Title.toString(), "title")
        @Expect(PhotoKeys.DateAddedMs.toString(), "date_added_ms")
        @Expect(PhotoKeys.DateModifiedMs.toString(), "date_modified_ms")
        @Expect(PhotoKeys.PhotoSubtype.toString(), "subtype")
        @Expect(PhotoKeys.DynamicRangeType.toString(), "dynamic_range_type")
        @Expect(PhotoKeys.CoverPosition.toString(), "cover_position")
        @Expect(PhotoKeys.BurstKey.toString(), "burst_key")
        @Expect(PhotoKeys.LcdSize.toString(), "lcd_size")
        @Expect(PhotoKeys.ThumbnailSize.toString(), "thumb_size")
        @Expect(PhotoKeys.Uri == PhotoKeys.Uri)
        @Expect(PhotoKeys.Uri != PhotoKeys.DisplayName)
        @Expect(PhotoKeys.Size != PhotoKeys.Title)
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoKeysEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_defaultChangeUri_0100
     * @tc.name      : testDefaultChangeUriEnum
     * @tc.desc      : cover DefaultChangeUri enum (DefaultPhotoUri, DefaultAlbumUri) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDefaultChangeUriEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDefaultChangeUriEnum begins.")
        let photo = DefaultChangeUri.DefaultPhotoUri
        let album = DefaultChangeUri.DefaultAlbumUri
        @Expect(photo.toString(), "file://media/Photo")
        @Expect(album.toString(), "file://media/PhotoAlbum")
        @Expect(photo == DefaultChangeUri.DefaultPhotoUri)
        @Expect(album == DefaultChangeUri.DefaultAlbumUri)
        @Expect(photo != album)
        Hilog.info(0u32, "cangjietest", "", "testcase testDefaultChangeUriEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_albumKeys_0100
     * @tc.name      : testAlbumKeysEnum
     * @tc.desc      : cover AlbumKeys enum (Uri, AlbumName) + toString + == / !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAlbumKeysEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumKeysEnum begins.")
        let uri = AlbumKeys.Uri
        let name = AlbumKeys.AlbumName
        @Expect(uri.toString(), "uri")
        @Expect(name.toString(), "album_name")
        @Expect(uri == AlbumKeys.Uri)
        @Expect(name == AlbumKeys.AlbumName)
        @Expect(uri != name)
        Hilog.info(0u32, "cangjietest", "", "testcase testAlbumKeysEnum ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_enums_memberType_0100
     * @tc.name      : testMemberTypeEnum
     * @tc.desc      : cover MemberType tagged enum (Int64Value, StringValue, BoolValue)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMemberTypeEnum(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testMemberTypeEnum begins.")
        let i64 = MemberType.Int64Value(0i64)
        let str = MemberType.StringValue("cangjietest")
        let bl = MemberType.BoolValue(true)
        match (i64) {
            case MemberType.Int64Value(v) => @Expect(v, 0i64)
            case _ => @Expect(false)
        }
        match (str) {
            case MemberType.StringValue(v) => @Expect(v, "cangjietest")
            case _ => @Expect(false)
        }
        match (bl) {
            case MemberType.BoolValue(v) => @Expect(v)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testMemberTypeEnum ends.")
    }
}
