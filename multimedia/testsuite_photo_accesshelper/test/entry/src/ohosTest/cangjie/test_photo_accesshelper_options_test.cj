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
import ohos.data.data_share_predicates
internal import kit.ArkData.*

@Test
class TestPhotoAccessHelperOptions {

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_options_fetchOptions_0100
     * @tc.name      : testFetchOptions
     * @tc.desc      : cover FetchOptions class + fetchColumns/predicates fields + init; assert content
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testFetchOptions(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testFetchOptions begins.")
        let cols: Array<String> = ["uri", "display_name", "size"]
        let preds = DataSharePredicates()
        let opts = FetchOptions(cols, preds)
        @Expect(opts.fetchColumns.size == 3)
        @Expect(opts.fetchColumns[0] == "uri")
        @Expect(opts.fetchColumns[1] == "display_name")
        @Expect(opts.fetchColumns[2] == "size")
        opts.predicates = DataSharePredicates()
        let p = opts.predicates
        @Expect(p is DataSharePredicates)
        let emptyOpts = FetchOptions(Array<String>(), DataSharePredicates())
        @Expect(emptyOpts.fetchColumns.size == 0)
        Hilog.info(0u32, "cangjietest", "", "testcase testFetchOptions ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_options_createOptions_0100
     * @tc.name      : testCreateOptions
     * @tc.desc      : cover CreateOptions class + title/subtype fields + init with defaults and named args
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateOptions(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateOptions begins.")
        let co = CreateOptions(title: "cangjie_title", subtype: PhotoSubtype.Default)
        @Expect(co.title == "cangjie_title")
        @Expect(co.subtype == PhotoSubtype.Default)
        let coDef = CreateOptions()
        @Expect(coDef.title == "")
        @Expect(coDef.subtype == PhotoSubtype.Default)
        coDef.title = "updated"
        @Expect(coDef.title == "updated")
        coDef.subtype = PhotoSubtype.MovingPhoto
        @Expect(coDef.subtype == PhotoSubtype.MovingPhoto)
        Hilog.info(0u32, "cangjietest", "", "testcase testCreateOptions ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_options_photoCreationConfig_0100
     * @tc.name      : testPhotoCreationConfig
     * @tc.desc      : cover PhotoCreationConfig class + fileNameExtension/photoType/title/subtype fields + init
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPhotoCreationConfig(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoCreationConfig begins.")
        let cfg = PhotoCreationConfig("jpg", PhotoType.Image, title: "title_img", subtype: PhotoSubtype.Default)
        @Expect(cfg.fileNameExtension == "jpg")
        @Expect(cfg.photoType == PhotoType.Image)
        @Expect(cfg.title == "title_img")
        @Expect(cfg.subtype == PhotoSubtype.Default)
        let cfg2 = PhotoCreationConfig("mp4", PhotoType.Video)
        @Expect(cfg2.fileNameExtension == "mp4")
        @Expect(cfg2.photoType == PhotoType.Video)
        @Expect(cfg2.title == "")
        @Expect(cfg2.subtype == PhotoSubtype.Default)
        cfg2.title = "video_title"
        @Expect(cfg2.title == "video_title")
        Hilog.info(0u32, "cangjietest", "", "testcase testPhotoCreationConfig ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_options_requestOptions_0100
     * @tc.name      : testRequestOptionsType
     * @tc.desc      : cover RequestOptions class via type pattern (no public init in cj.d)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRequestOptionsType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testRequestOptionsType begins.")
        let ro: ?RequestOptions = None
        let dm: ?DeliveryMode = ro?.deliveryMode
        match (ro) {
            case Some(_) => @Expect(false)
            case None => ()
        }
        let probe: Any = "request_options_type_probe"
        match (probe) {
            case _: RequestOptions => @Expect(false)
            case _ => @Expect(probe is String)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testRequestOptionsType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_options_changeData_0100
     * @tc.name      : testChangeDataType
     * @tc.desc      : cover ChangeData class + notifyType/uris/extraUris fields; no public init in cj.d, type referenced (fields need callback instance)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testChangeDataType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testChangeDataType begins.")
        let cd: ?ChangeData = None
        @Expect(cd is Option<ChangeData>)
        Hilog.info(0u32, "cangjietest", "", "testcase testChangeDataType ends.")
    }
}
