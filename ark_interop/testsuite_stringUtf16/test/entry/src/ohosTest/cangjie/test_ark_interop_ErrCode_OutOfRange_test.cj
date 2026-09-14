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
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import std.sync.*

@Test
class TestErrCodeOutOfRange {

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0100
     * @tc.name      : testArrayExSetOutOfRange
     * @tc.desc      : 测试 JSArrayEx.set(5) 在 size=1(合法范围[0..size])时越界抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayExSetOutOfRange(): Unit {
        let arr = JSArrayEx<Utf16String>([Utf16String("a")])
        try {
            arr.set(5i64, Utf16String("x"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0110
     * @tc.name      : testArrayExIndexSetOutOfRange
     * @tc.desc      : 测试 JSArrayEx 下标写 arr[5]=value 在 size=1(合法范围[0..size])时越界抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayExIndexSetOutOfRange(): Unit {
        let arr = JSArrayEx<Utf16String>([Utf16String("a")])
        try {
            arr[5i64] = Utf16String("x")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
    }


    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0120
     * @tc.name      : testUtf16StringRangeOutOfRange
     * @tc.desc      : 测试 Utf16String 切片 s[0..10] 在 size=3 时范围越界抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUtf16StringRangeOutOfRange(): Unit {
        let s = Utf16String("abc")
        try {
            let _ = s[0..10]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0130
     * @tc.name      : testUtf16StringSplitMaxSplitOutOfRange
     * @tc.desc      : 测试 Utf16String.split 分隔符分割时 maxSplit=-1 非法越界抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUtf16StringSplitMaxSplitOutOfRange(): Unit {
        let s = Utf16String("a,b,c")
        try {
            let _ = s.split(Utf16String(","), -1i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
    }
}
