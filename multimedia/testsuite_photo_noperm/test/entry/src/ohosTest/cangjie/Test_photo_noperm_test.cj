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
import ohos.data.data_share_predicates.DataSharePredicates
import ohos.business_exception.BusinessException

@Test
class Test_photo_noperm {
    /*
     * @tc.number    : Sub_Cangjie_Photo_noperm_0100
     * @tc.name      : Test_Err_NoPerm_HelperQuery
     * @tc.desc      : Cover PhotoAccessHelper.getAssets/getAlbums/getBurstAssets
     *                 permission denied path (201) without requested permissions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_NoPerm_HelperQuery(): Unit {
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_NoPerm_HelperQuery begins.")
        let helper = getPhotoAccessHelper(getAbilityContext())
        try {
            let options = FetchOptions([], DataSharePredicates())
            helper.getAssets(options)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "%{public}s", "getAssets code=${e.code.toString()}")
            @Expect(e.code, 201i32)
        }
        try {
            helper.getAlbums(AlbumType.System, AlbumSubtype.Favorite)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "%{public}s", "getAlbums code=${e.code.toString()}")
            @Expect(e.code, 201i32)
        }
        try {
            let options = FetchOptions([], DataSharePredicates())
            helper.getBurstAssets("burst_key_noperm", options)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "%{public}s", "getBurstAssets code=${e.code.toString()}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_NoPerm_HelperQuery ends.")
    }
}
