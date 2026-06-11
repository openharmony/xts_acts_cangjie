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
import kit.PerformanceAnalysisKit.Hilog
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.multimedia.image.*

@Test
class testPixelMap_getBytesNumberPerRow_1 {

    /*
     * @tc.number    : Sub_Cangjie_testPixelMap_getBytesNumberPerRow_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : PixelMap.getBytesNumberPerRow. opts: "InitializationOptions(Size(1i32, 2i32), alphaType: AlphaType.Unknown, editable: true, pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize, size: Size( 3i32,  2i32))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "createPixelMap fail")
        try {
            let initOption = InitializationOptions(Size(1i32, 4), alphaType: AlphaType.Unknown, editable: true,
                pixelFormat: PixelMapFormat.Alpha8, scaleMode: ScaleMode.FitTargetSize)
            let pixelMap = createPixelMap(Array<UInt8>(16i64, repeat: 0u8), initOption)
            let bytesNumberPerRow = pixelMap.getBytesNumberPerRow()
            @Expect(UInt32(initOption.size.height * initOption.size.width), bytesNumberPerRow)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }
}
