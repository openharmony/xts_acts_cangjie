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
import std.collection.*
import ohos.base.*
import ohos.graphics.color_space_manager.*

@Test
class TestCreateCustomColor {
    /*
     * @tc.number    : Sub_Cangjie_color_manager_create_custom_parameterized_0100
     * @tc.name      : test_create_custom_color_representative_parameters
     * @tc.desc      : Verify custom color creation for representative primaries
     *                 combinations and negative, zero, and positive gamma values.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_custom_color_representative_parameters(): Unit {
        let low = -0.300000f32
        let high = 0.400000f32
        let primariesCases = [
            [low, low, low, low, low, low, low, low],
            [high, high, high, high, high, high, high, high],
            [low, low, low, low, high, high, high, high],
            [low, high, low, high, low, high, low, high],
            [high, low, low, low, low, low, low, low]
        ]
        let gammaCases = [-2.300000f32, 0.000000f32, 1.200000f32]
        for (values in primariesCases) {
            for (gamma in gammaCases) {
                let primaries = ColorSpacePrimaries(values[0], values[1], values[2], values[3],
                values[4], values[5], values[6], values[7])
                let colorSpace = create(primaries, gamma)
                let whitePoint = colorSpace.getWhitePoint()
                @Expect(colorSpace.getGamma() == gamma &&
                    whitePoint[0i64] == primaries.whitePointX &&
                    whitePoint[1i64] == primaries.whitePointY)
                }
        }
    }
}
