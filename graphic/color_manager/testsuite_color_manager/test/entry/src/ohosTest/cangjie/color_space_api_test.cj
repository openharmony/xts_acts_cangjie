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
import ohos.business_exception.*

@Test
class TestColorSpaceApi {
    /*
     * @tc.number    : Sub_Cangjie_ArkGraphics2D_TestColorSpaceApi_0400
     * @tc.name      : test_color_space_equal_operator
     * @tc.desc      : test ColorSpace enum equality and inequality operators for all values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_color_space_equal_operator(): Unit {
        let colorSpaces = [ColorSpace.Unknown, ColorSpace.AdobeRgb1998, ColorSpace.DciP3,
            ColorSpace.DisplayP3, ColorSpace.Srgb, ColorSpace.Bt709, ColorSpace.Bt601Ebu,
            ColorSpace.Bt601SmpteC, ColorSpace.Bt2020Hlg, ColorSpace.Bt2020Pq, ColorSpace.P3Hlg,
            ColorSpace.P3Pq, ColorSpace.AdobeRgb1998Limit, ColorSpace.DisplayP3Limit,
            ColorSpace.SrgbLimit, ColorSpace.Bt709Limit, ColorSpace.Bt601EbuLimit,
            ColorSpace.Bt601SmpteCLimit, ColorSpace.Bt2020HlgLimit, ColorSpace.Bt2020PqLimit,
            ColorSpace.P3HlgLimit, ColorSpace.P3PqLimit, ColorSpace.LinearP3,
            ColorSpace.LinearSrgb, ColorSpace.LinearBt709, ColorSpace.LinearBt2020,
            ColorSpace.DisplaySrgb, ColorSpace.DisplayP3Srgb, ColorSpace.DisplayP3Hlg,
            ColorSpace.DisplayP3Pq, ColorSpace.Custom]
        for (left in colorSpaces) {
            @Expect((left == left) && !(left != left))
            for (right in colorSpaces) {
                if (left == right) {
                    @Expect(!(left != right))
                } else {
                    @Expect((left != right) && !(left == right))
                }
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ArkGraphics2D_TestColorSpaceApi_0100
     * @tc.name      : test_unknown
     * @tc.desc      : test ArkGraphics2D ColorSpace
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_unknown(): Unit {
        try {
            create(ColorSpace.Unknown)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 18600001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ArkGraphics2D_TestColorSpaceApi_0200
     * @tc.name      : test_custom
     * @tc.desc      : test ArkGraphics2D ColorSpace
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_custom(): Unit {
        try {
            create(ColorSpace.Custom)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 18600001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ArkGraphics2D_TestColorSpaceApi_0300
     * @tc.name      : test_create
     * @tc.desc      : test ArkGraphics2D create
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create(): Unit {
        try {
            @Expect(((create(ColorSpace.AdobeRgb1998).getColorSpaceType().toString()) == ("ColorSpace.AdobeRgb1998")) &&
                ((create(ColorSpace.DciP3).getColorSpaceType().toString()) == ("ColorSpace.DciP3")) &&
                ((create(ColorSpace.DisplayP3).getColorSpaceType().toString()) == ("ColorSpace.DisplayP3")) &&
                ((create(ColorSpace.Srgb).getColorSpaceType().toString()) == ("ColorSpace.Srgb")) &&
                ((create(ColorSpace.Bt709).getColorSpaceType().toString()) == ("ColorSpace.Bt709")) &&
                ((create(ColorSpace.Bt601Ebu).getColorSpaceType().toString()) == ("ColorSpace.Bt601Ebu")) &&
                ((create(ColorSpace.Bt601SmpteC).getColorSpaceType().toString()) == ("ColorSpace.Bt601SmpteC")) &&
                ((create(ColorSpace.Bt2020Hlg).getColorSpaceType().toString()) == ("ColorSpace.Bt2020Hlg")) &&
                ((create(ColorSpace.Bt2020Pq).getColorSpaceType().toString()) == ("ColorSpace.Bt2020Pq")) &&
                ((create(ColorSpace.P3Hlg).getColorSpaceType().toString()) == ("ColorSpace.P3Hlg")) &&
                ((create(ColorSpace.P3Pq).getColorSpaceType().toString()) == ("ColorSpace.P3Pq")) &&
                ((create(ColorSpace.AdobeRgb1998Limit).getColorSpaceType().toString()) == ("ColorSpace.AdobeRgb1998Limit")) &&
                ((create(ColorSpace.DisplayP3Limit).getColorSpaceType().toString()) == ("ColorSpace.DisplayP3Limit")) &&
                ((create(ColorSpace.SrgbLimit).getColorSpaceType().toString()) == ("ColorSpace.SrgbLimit")) &&
                ((create(ColorSpace.Bt709Limit).getColorSpaceType().toString()) == ("ColorSpace.Bt709Limit")) &&
                ((create(ColorSpace.Bt601EbuLimit).getColorSpaceType().toString()) == ("ColorSpace.Bt601EbuLimit")) &&
                ((create(ColorSpace.Bt601SmpteCLimit).getColorSpaceType().toString()) == ("ColorSpace.Bt601SmpteCLimit")) &&
                ((create(ColorSpace.Bt2020HlgLimit).getColorSpaceType().toString()) == ("ColorSpace.Bt2020HlgLimit")) &&
                ((create(ColorSpace.Bt2020PqLimit).getColorSpaceType().toString()) == ("ColorSpace.Bt2020PqLimit")) &&
                ((create(ColorSpace.P3HlgLimit).getColorSpaceType().toString()) == ("ColorSpace.P3HlgLimit")) &&
                ((create(ColorSpace.P3PqLimit).getColorSpaceType().toString()) == ("ColorSpace.P3PqLimit")) &&
                ((create(ColorSpace.LinearP3).getColorSpaceType().toString()) == ("ColorSpace.LinearP3")) &&
                ((create(ColorSpace.LinearSrgb).getColorSpaceType().toString()) == ("ColorSpace.LinearSrgb")) &&
                ((create(ColorSpace.LinearBt709).getColorSpaceType().toString()) == ("ColorSpace.LinearSrgb")) &&
                ((create(ColorSpace.LinearBt2020).getColorSpaceType().toString()) == ("ColorSpace.LinearBt2020")) &&
                ((create(ColorSpace.DisplaySrgb).getColorSpaceType().toString()) == ("ColorSpace.Srgb")) &&
                ((create(ColorSpace.DisplayP3Srgb).getColorSpaceType().toString()) == ("ColorSpace.DisplayP3")) &&
                ((create(ColorSpace.DisplayP3Hlg).getColorSpaceType().toString()) == ("ColorSpace.P3Hlg")) &&
                ((create(ColorSpace.DisplayP3Pq).getColorSpaceType().toString()) == ("ColorSpace.P3Pq")))
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
