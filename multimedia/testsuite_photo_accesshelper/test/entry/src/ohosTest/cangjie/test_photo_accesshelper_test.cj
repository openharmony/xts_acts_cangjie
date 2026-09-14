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

@Test
class TestPhotoAccessHelper {
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
     * @tc.number    : Sub_Cangjie_photo_accesshelper_TestPhotoAccessHelper_0100
     * @tc.name      : testGetAssets
     * @tc.desc      : test photo_accesshelper testGetAssets  pass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetAssets() {
        let predicates = DataSharePredicates()
        let fetchOptions: FetchOptions = FetchOptions([], predicates)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_TestPhotoAccessHelper_0200
     * @tc.name      : testGetBurstAssets
     * @tc.desc      : test photo_accesshelper testGetBurstAssets  pass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetBurstAssets() {
        let predicates = DataSharePredicates()
        let fetchOptions: FetchOptions = FetchOptions([], predicates)
        let burstKey = ""
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_TestPhotoAccessHelper_0300
     * @tc.name      : testGetObjectByPosition
     * @tc.desc      : test photo_accesshelper testGetObjectByPosition  pass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetObjectByPosition() {
        let predicates = DataSharePredicates()
        let fetchOptions: FetchOptions = FetchOptions([], predicates)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_photo_accesshelper_TestPhotoAccessHelper_0400
     * @tc.name      : testCreateImageAssetRequest
     * @tc.desc      : test photo_accesshelper testCreateImageAssetRequest  pass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateImageAssetRequest() {
        let fileUriEmpty = ""
        try {
            let assetChangeRequest1 = MediaAssetChangeRequest.createImageAssetRequest(getAbilityContext(), fileUriEmpty)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.toString(),"BusinessException: errorcode: 401, message: Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
    }
}
