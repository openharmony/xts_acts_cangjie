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

import ohos.graphics.color_space_manager.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*

@Test
class Test_color_space {
    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_space_0100
    * @tc.name      : test_UNKNOWN
    * @tc.desc      : test ArkGraphics2D ColorSpace
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_UNKNOWN() {
        try {
            create(ColorSpace.Unknown)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(true)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_space_0200
    * @tc.name      : test_CUSTOM
    * @tc.desc      : test ArkGraphics2D ColorSpace
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CUSTOM() {
        try {
            create(ColorSpace.Custom)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(true)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_ArkGraphics2D_Test_color_space_0300
    * @tc.name      : test_create
    * @tc.desc      : test ArkGraphics2D create
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create() {
        try {
            @Expect(create(ColorSpace.AdobeRgb1998).getColorSpaceType().toString(), "ColorSpace.AdobeRgb1998")
            @Expect(create(ColorSpace.DciP3).getColorSpaceType().toString(), "ColorSpace.DciP3")
            @Expect(create(ColorSpace.DisplayP3).getColorSpaceType().toString(), "ColorSpace.DisplayP3")
            @Expect(create(ColorSpace.Srgb).getColorSpaceType().toString(), "ColorSpace.Srgb")
            @Expect(create(ColorSpace.Bt709).getColorSpaceType().toString(), "ColorSpace.Bt709")
            @Expect(create(ColorSpace.Bt601Ebu).getColorSpaceType().toString(), "ColorSpace.Bt601Ebu")
            @Expect(create(ColorSpace.Bt601SmpteC).getColorSpaceType().toString(), "ColorSpace.Bt601SmpteC")
            @Expect(create(ColorSpace.Bt2020Hlg).getColorSpaceType().toString(), "ColorSpace.Bt2020Hlg")
            @Expect(create(ColorSpace.Bt2020Pq).getColorSpaceType().toString(), "ColorSpace.Bt2020Pq")
            @Expect(create(ColorSpace.P3Hlg).getColorSpaceType().toString(), "ColorSpace.P3Hlg")
            @Expect(create(ColorSpace.P3Pq).getColorSpaceType().toString(), "ColorSpace.P3Pq")
            @Expect(create(ColorSpace.AdobeRgb1998Limit).getColorSpaceType().toString(), "ColorSpace.AdobeRgb1998Limit")
            @Expect(create(ColorSpace.DisplayP3Limit).getColorSpaceType().toString(), "ColorSpace.DisplayP3Limit")
            @Expect(create(ColorSpace.SrgbLimit).getColorSpaceType().toString(), "ColorSpace.SrgbLimit")
            @Expect(create(ColorSpace.Bt709Limit).getColorSpaceType().toString(), "ColorSpace.Bt709Limit")
            @Expect(create(ColorSpace.Bt601EbuLimit).getColorSpaceType().toString(), "ColorSpace.Bt601EbuLimit")
            @Expect(create(ColorSpace.Bt601SmpteCLimit).getColorSpaceType().toString(), "ColorSpace.Bt601SmpteCLimit")
            @Expect(create(ColorSpace.Bt2020HlgLimit).getColorSpaceType().toString(), "ColorSpace.Bt2020HlgLimit")
            @Expect(create(ColorSpace.Bt2020PqLimit).getColorSpaceType().toString(), "ColorSpace.Bt2020PqLimit")
            @Expect(create(ColorSpace.P3HlgLimit).getColorSpaceType().toString(), "ColorSpace.P3HlgLimit")
            @Expect(create(ColorSpace.P3PqLimit).getColorSpaceType().toString(), "ColorSpace.P3PqLimit")
            @Expect(create(ColorSpace.LinearP3).getColorSpaceType().toString(), "ColorSpace.LinearP3")
            @Expect(create(ColorSpace.LinearSrgb).getColorSpaceType().toString(), "ColorSpace.LinearSrgb")
            @Expect(create(ColorSpace.LinearBt709).getColorSpaceType().toString(), "ColorSpace.LinearSrgb")
            @Expect(create(ColorSpace.LinearBt2020).getColorSpaceType().toString(), "ColorSpace.LinearBt2020")
            @Expect(create(ColorSpace.DisplaySrgb).getColorSpaceType().toString(), "ColorSpace.Srgb")
            @Expect(create(ColorSpace.DisplayP3Srgb).getColorSpaceType().toString(), "ColorSpace.DisplayP3")
            @Expect(create(ColorSpace.DisplayP3Hlg).getColorSpaceType().toString(), "ColorSpace.P3Hlg")
            @Expect(create(ColorSpace.DisplayP3Pq).getColorSpaceType().toString(), "ColorSpace.P3Pq")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

}
