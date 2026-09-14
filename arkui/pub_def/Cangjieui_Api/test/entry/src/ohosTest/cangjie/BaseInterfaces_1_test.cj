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
import std.unittest.testmacro.*
import ohos.base.*

@Test
class BaseInterfaces_1_test {
    /*
     * @tc.number    : TestBaseInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test BaseInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let px = LengthUnit.Px
        let vp = LengthUnit.Vp
        let fp = LengthUnit.Fp
        let percent = LengthUnit.Percent
        let lpx = LengthUnit.Lpx
        @Expect(px == LengthUnit.Px, true)
        @Expect(vp == LengthUnit.Vp, true)
        @Expect(fp == LengthUnit.Fp, true)
        @Expect(percent == LengthUnit.Percent, true)
        @Expect(lpx == LengthUnit.Lpx, true)
        @Expect(px != vp, true)
        @Expect(vp != fp, true)
        @Expect(fp != percent, true)
        @Expect(percent != lpx, true)
        @Expect(px == lpx, false)
        let parsedPx = LengthUnit.parse(px.getValue())
        @Expect(parsedPx == px, true)
        let parsedVp = LengthUnit.parse(vp.getValue())
        @Expect(parsedVp == vp, true)
        let parsedFp = LengthUnit.parse(fp.getValue())
        @Expect(parsedFp == fp, true)
        let parsedPercent = LengthUnit.parse(percent.getValue())
        @Expect(parsedPercent == percent, true)
        let parsedLpx = LengthUnit.parse(lpx.getValue())
        @Expect(parsedLpx == lpx, true)
    }
    /*
     * @tc.number    : TestBaseInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test BaseInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let red = Color(0xffff0000u32)
        @Expect(red.toUInt32(), 0xffff0000u32)
        let black = Color(0xff000000u32)
        @Expect(black.toUInt32(), 0xff000000u32)
        let white = Color(0xffffffffu32)
        @Expect(white.toUInt32(), 0xffffffffu32)
        @Expect(Color.Red.toUInt32(), 0xffff0000u32)
        @Expect(Color.Black.toUInt32(), 0xff000000u32)
        @Expect(Color.White.toUInt32(), 0xffffffffu32)
        @Expect(Color.Green.toUInt32(), 0xff008000u32)
        @Expect(Color.Blue.toUInt32(), 0xff0000ffu32)
        @Expect(Color.Gray.toUInt32(), 0xff808080u32)
        @Expect(Color.Transparent.toUInt32(), 0x00000000u32)
        let rgb = Color(255u8, 0u8, 0u8)
        @Expect(rgb.toUInt32(), 0xffff0000u32)
        let rgbAlpha = Color(255u8, 0u8, 0u8, alpha: 0.5f32)
        @Expect(rgbAlpha.toUInt32() != 0xffff0000u32, true)
        let transparent = Color(0u8, 0u8, 0u8, alpha: 0.0f32)
        @Expect(transparent.toUInt32(), 0x00000000u32)
        let custom = Color(0u8, 255u8, 0u8, alpha: 1.0f32)
        @Expect(custom.toUInt32(), 0xff00ff00u32)
    }
    /*
     * @tc.number    : TestBaseInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test BaseInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let lm1 = LengthMetrics(10.0)
        @Expect(lm1.value, 10.0)
        @Expect(lm1.unitType == LengthUnit.Vp, true)
        let lm2 = LengthMetrics(20.0, unit: LengthUnit.Px)
        @Expect(lm2.value, 20.0)
        @Expect(lm2.unitType == LengthUnit.Px, true)
        let lm3 = LengthMetrics(0.5, unit: LengthUnit.Percent)
        @Expect(lm3.value, 0.5)
        @Expect(lm3.unitType == LengthUnit.Percent, true)
        let lm4 = LengthMetrics(100.0, unit: LengthUnit.Fp)
        @Expect(lm4.value, 100.0)
        @Expect(lm4.unitType == LengthUnit.Fp, true)
        let lm5 = LengthMetrics(-50.0, unit: LengthUnit.Lpx)
        @Expect(lm5.value, -50.0)
        @Expect(lm5.unitType == LengthUnit.Lpx, true)
        let autoLen = LengthMetrics.AUTO
        @Expect(autoLen.value, 0.0)
        @Expect(autoLen.unitType.getValue(), 5)
    }
    /*
     * @tc.number    : TestBaseInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test BaseInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let arr: Array<(String, Any)> = [("name", "test"), ("count", 42)]
        let params = ReuseParams(arr)
        let name = params.get<String>("name")
        @Expect(name.isSome(), true)
        @Expect(name.getOrThrow(), "test")
        let count = params.get<Int64>("count")
        @Expect(count.isSome(), true)
        @Expect(count.getOrThrow(), 42)
        let missing = params.get<String>("nonexistent")
        @Expect(missing.isNone(), true)
        let arr2: Array<(String, Any)> = [("flag", true), ("pi", 3.14)]
        let params2 = ReuseParams(arr2)
        let flag = params2.get<Bool>("flag")
        @Expect(flag.isSome(), true)
        @Expect(flag.getOrThrow(), true)
        let pi = params2.get<Float64>("pi")
        @Expect(pi.isSome(), true)
        @Expect(pi.getOrThrow(), 3.14)
        @Expect(canIUse("cangjie"), false)
    }
    /*
     * @tc.number    : TestBaseInterfaces_1_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test BaseInterfaces_1_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let ctx = UIThread
        @Expect(ctx.hasEnded(), false)
    }
}
