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
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.ImageKit.*

@Test
class Test_createImageReceCreator_06 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageReceCreator_06_0700
     * @tc.name      : test_createImageReceiver_07
     * @tc.desc      : test Image test_createImageReceiver_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_createImageReceiver_07(): Unit {
        var globalImageReceiver: ImageReceiver
        var Width: Int32 = 8192
        var Height: Int32 = 8
        var Format = ImageFormat.Jpeg
        var Capacity: Int32 = 8

        try {
            globalImageReceiver = createImageReceiver(Size(Width, Height), ImageFormat.Jpeg, Capacity)
            @Expect(globalImageReceiver.size.height.toString(), "8192")
            @Expect(globalImageReceiver.size.width.toString(), "8")
            @Expect(globalImageReceiver.capacity.toString(), "8")
            @Expect(globalImageReceiver.format.toString().toString(), "ImageFormat.Jpeg")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_createImageReceCreator_06_0800
     * @tc.name      : test_getReceivingSurfaceId_08
     * @tc.desc      : test Image test_getReceivingSurfaceId_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getReceivingSurfaceId_08(): Unit {
        var globalImageReceiver: ImageReceiver
        var Width: Int32 = 8192
        var Height: Int32 = 8
        var Format = ImageFormat.Jpeg
        var Capacity: Int32 = 8

        try {
            globalImageReceiver = createImageReceiver(Size(Width, Height), ImageFormat.Jpeg, Capacity)
            var id: String = globalImageReceiver.getReceivingSurfaceId()
            @Expect(id != "")
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
