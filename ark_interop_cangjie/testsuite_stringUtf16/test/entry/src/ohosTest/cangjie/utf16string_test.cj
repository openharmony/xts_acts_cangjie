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

@Test
class TestUtf16String {
    /*
     * @tc.number    : Sub_Cangjie_testToString
     * @tc.name      : testToString
     * @tc.desc      : check application info_test_testToString
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testToString() {
        let cases = [
            "123zxcaijoad./?'[]{}",
            "你好，世界！",
            "i阿搜到叫哦🚹🚺😭😢"
        ]
        for (one in cases) {
            let src = Utf16String(one)
            @Expect(src.toString(), one)
            @Expect(!src.isEmpty())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testDispose
     * @tc.name      : testDispose
     * @tc.desc      : check application info_test_testDispose
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testDispose() {
        let src = Utf16String("123abc")
        @Expect(src.accessible)
        src.dispose()
        @Expect(!src.accessible)
        @Expect(withException<Exception> {
            src.toString()
        })
        @Expect(withException<Exception> {
            src.lines()
        })
    }

    /*
     * @tc.number    : Sub_Cangjie_testCompressed
     * @tc.name      : testCompressed
     * @tc.desc      : check application info_test_testCompressed
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testCompressed() {
        let latin1Cases = [
            "1234567890",
            "abcdefg",
            ",./;'[]-="
        ]
        for (one in latin1Cases) {
            let src = Utf16String(one)
            @Expect(src.isCompressed())
        }
        let utf16Cases = [
            "阿斯蒂芬",
            "asdsfdasd下",
            "i阿搜到叫哦🚹🚺😭😢"
        ]
        for (one in utf16Cases) {
            let src = Utf16String(one)
            @Expect(!src.isCompressed())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testCompare
     * @tc.name      : testCompare
     * @tc.desc      : check application info_test_testCompare
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testCompare() {
        let cases = [
            ("123456", "1234567"),
            ("asdasfsafda", "1245678"),
            ("谢谢小星星", "嘻嘻嘻嘻嘻"),
            ("谢谢谢谢", "xxxxx"),
            ("123abc那你呢", "123abc那你呢"),
            ("xxxxx", "谢谢谢谢")
        ]
        for ((a, b) in cases) {
            let ua = Utf16String(a)
            let ub = Utf16String(b)
            let result = ua.compare(ub)
            let dst = a.compare(b)
            @Expect(result, dst)
            match (result) {
                case Ordering.EQ =>
                    @Expect(ua == ub)
                    @Expect(ua > ub, false)
                    @Expect(ua >= ub)
                    @Expect(ua < ub, false)
                    @Expect(ua <= ub)
                case Ordering.GT =>
                    @Expect(ua > ub)
                    @Expect(ua >= ub)
                    @Expect(ua == ub, false)
                    @Expect(ua < ub, false)
                    @Expect(ua <= ub, false)
                case Ordering.LT =>
                    @Expect(ua > ub, false)
                    @Expect(ua >= ub, false)
                    @Expect(ua == ub, false)
                    @Expect(ua < ub)
                    @Expect(ua <= ub)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSize
     * @tc.name      : testSize
     * @tc.desc      : check application info_test_testSize
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testSize() {
        let cases = [
            ("abc123,./", 9),
            ("你好，世界！", 6),
            ("😭💗√✅️", 7)
        ]
        for ((ori, dst) in cases) {
            let src = Utf16String(ori)
            @Expect(src.size, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testTotalChars
     * @tc.name      : testTotalChars
     * @tc.desc      : check application info_test_testTotalChars
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testTotalChars() {
        let cases = [
            ("abc123,./", 9),
            ("你好，世界！", 6),
            ("😭💗√✅️", 5)
        ]
        for ((ori, dst) in cases) {
            let src = Utf16String(ori)
            @Expect(src.totalChars, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testIndex
     * @tc.name      : testIndex
     * @tc.desc      : check application info_test_testIndex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testIndex() {
        let cases = [
            ("abc123,./", 0, r'a'),
            ("你好，世界！", 2, r'，'),
            ("😭💗√✅️", 2, r'💗')
        ]
        for ((src, index, dst) in cases) {
            let u16 = Utf16String(src)
            let result = u16[index]
            if (UInt32(dst) < 0x10000) {
                @Expect(result, UInt16(UInt32(dst)))
            } else {
                let code = UInt32(dst) - 0x10000
                let prev = 0xD800 + ((code & 0xFFC00) >> 10)
                @Expect(result, UInt16(prev))
            }

            @Expect(withException<Exception> {
                u16[10]
            })

            @Expect(withException<Exception> {
                u16[-2]
            })
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubstr
     * @tc.name      : testSubstr
     * @tc.desc      : check application info_test_testSubstr
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testSubstr() {
        let cases = [
            ("0123456789", 0..5, "01234"),
            ("123456", 0..6, "123456"),
            ("你好世界，⏰️123", 2..7, "世界，⏰️")
        ]
        for ((src, range, dst) in cases) {
            let uSrc = Utf16String(src)
            let result = uSrc[range].toString()
            @Expect(result, dst)
        }

        let utf16Src = Utf16String("abcde")
        @Expect(withException<Exception> {
            utf16Src[-1..1]
        })

        @Expect(withException<Exception> {
            utf16Src[1..0]
        })

        @Expect(withException<Exception> {
            utf16Src[2..1]
        })
    }

    /*
     * @tc.number    : Sub_Cangjie_testRunes
     * @tc.name      : testRunes
     * @tc.desc      : check application info_test_testRunes
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testRunes() {
        let cases = [
            "jiasod123123<>/",
            "嘿嘿嘿，哈哈哈，呵呵呵！",
            "好喜欢在☔️天吃🍕"
        ]
        for (one in cases) {
            let src = Utf16String(one)
            var index = 0
            let a = src.runes()
            let b = one.runes()
            while (let Some(v) <- a.next()) {
                let bChar = b.next()
                @Expect(bChar.isSome())
                @Expect(v, bChar.getOrThrow())
            }
            @Expect(b.next().isNone())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLines
     * @tc.name      : testLines
     * @tc.desc      : check application info_test_testLines
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLines() {
        let cases = ["this is a line\n另一行\n", "没有分行"]
        for (one in cases) {
            let u16 = Utf16String(one)
            let a = one.lines()
            let b = u16.lines()
            while (let Some(v) <- a.next()) {
                let bLine = b.next()
                @Expect(bLine.isSome())
                let bl = bLine.getOrThrow().toString()
                @Expect(v, bl)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testIndexOf
     * @tc.name      : testIndexOf
     * @tc.desc      : check application info_test_testIndexOf
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testIndexOf() {
        let cases = [
            ("🚒真实的自我132", 0, "我", 6),
            ("🚒真实的自我132", 0, "3", 8),
            ("0123456", 0, "123", 1),
            ("谢谢谢谢写法小行星谢", 4, "谢", 9)
        ]
        for ((src, offset, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.indexOf(uTar, offset)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testIndexOf1
     * @tc.name      : testIndexOf1
     * @tc.desc      : check application info_test_testIndexOf1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testIndexOf1() {
        let cases = [
            ("🚒真实的自我132", "我", 6),
            ("🚒真实的自我132", "3", 8),
            ("0123456", "123", 1)
        ]
        for ((src, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.indexOf(uTar)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLastIndexOf
     * @tc.name      : testLastIndexOf
     * @tc.desc      : check application info_test_testLastIndexOf
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLastIndexOf() {
        let cases = [("🚂好🚂3456", 8, "345", 5), ("0123456", 7, "123", 1)]
        for ((src, offset, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar, offset)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLastIndexOfIsNone
     * @tc.name      : testLastIndexOfIsNone
     * @tc.desc      : check application info_test_testLastIndexOfIsNone
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLastIndexOfIsNone() {
        let cases = [("0123456", 7, "999", 1)]
        for ((src, offset, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar, offset)
            @Expect(result.isNone())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLastIndexOf1
     * @tc.name      : testLastIndexOf1
     * @tc.desc      : check application info_test_testLastIndexOf1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLastIndexOf1() {
        let cases = [("🚂好🚂3456", "345", 5), ("0123456", "123", 1)]
        for ((src, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testCountOf
     * @tc.name      : testCountOf
     * @tc.desc      : check application info_test_testCountOf
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testCountOf() {
        let cases = [("asdf213i1o23iui0sj0f", "a"), ("谢谢小星星小星星小星星嘻嘻嘻嘻", "谢")]
        for ((src, tar) in cases) {
            let dst = src.count(tar)
            let uSrc = Utf16String(src)
            let uDst = Utf16String(tar)
            let result = uSrc.count(uDst)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSplit
     * @tc.name      : testSplit
     * @tc.desc      : check application info_test_testSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testSplit() {
        let cases = [
            ("😓😃😐🚲😄", "", 0),
            ("😓😃😐🚲😄", "", 0),
            ("1234", "", 0),
            ("1234", "", 3),
            ("12你34🚲", "", 0),
            ("12你34🚲", "", 3),
            ("123456789", "1", 0),
            ("123456789", "9", 0),
            ("1 2 3 4 568", " ", 0),
            (" ", "", 0)
        ]
        for ((src, tar, count) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(tar)
            let dst = src.split(tar, count)
            let result = uSrc.split(uTar, count).map {v => v.toString()}
            @Expect(result, dst)
            let result1 = uSrc.split(uTar).map {v => v.toString()}
            let result2 = uSrc.split(uTar, removeEmpty: true).map {v => v.toString()}
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testLazySplit
     * @tc.name      : testLazySplit
     * @tc.desc      : check application info_test_testLazySplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testLazySplit() {
        let cases = [
            ("😓😃😐🚲😄", "", 0),
            ("😓😃😐🚲😄", "", 0),
            ("1234", "", 0),
            ("1234", "", 3),
            ("12你34🚲", "", 0),
            ("12你34🚲", "", 3),
            ("123456789", "1", 0),
            ("123456789", "9", 0),
            ("1 2 3 4 568", " ", 0)
        ]
        for ((src, tar, count) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(tar)
            let dst = src.lazySplit(tar, count)
            let result = uSrc.lazySplit(uTar, count)
            uSrc.lazySplit(uTar)
            while (let Some(v) <- dst.next()) {
                let optU = result.next()
                @Expect(optU.isSome())
                let uRes = optU.getOrThrow().toString()
                @Expect(uRes, v)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testReplace
     * @tc.name      : testReplace
     * @tc.desc      : check application info_test_testReplace
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testReplace() {
        let cases = [("abcdefg", "cde", "123"), ("amd 解决 amd", "amd", "nvidia")]
        for ((src, from, to) in cases) {
            let dst = src.replace(from, to)
            let uSrc = Utf16String(src)
            let uFrom = Utf16String(from)
            let uTo = Utf16String(to)
            let result = uSrc.replace(uFrom, uTo).toString()
            @Expect(result, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testContains
     * @tc.name      : testContains
     * @tc.desc      : check application info_test_testContains
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testContains() {
        let cases = [
            ("123456789", "0254"),
            ("123145456", "1454"),
            ("你12看5678", "56"),
            ("你12看看线性5678", "看线")
        ]
        for ((src, tar) in cases) {
            let dst = src.contains(tar)
            let uSrc = Utf16String(src)
            let uTar = Utf16String(tar)
            let result = uSrc.contains(uTar)
            @Expect(result, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartsWith
     * @tc.name      : testStartsWith
     * @tc.desc      : check application info_test_testStartsWith
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testStartsWith() {
        let cases = [("abcd123", "abc"), ("abcd您那你", "abc")]
        for ((src, tar) in cases) {
            let dst = src.startsWith(tar)
            let uSrc = Utf16String(src)
            let uTar = Utf16String(tar)
            let result = uSrc.startsWith(uTar)
            @Expect(result, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testEndsWith
     * @tc.name      : testEndsWith
     * @tc.desc      : check application info_test_testEndsWith
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testEndsWith() {
        let cases = [
            ("abcd123", "abc"),
            ("abcd123", "123"),
            ("在这种这地方12354x", "54x"),
            ("吱吱吱吱中", "5454")
        ]
        for ((src, tar) in cases) {
            let dst = src.endsWith(tar)
            let uSrc = Utf16String(src)
            let uTar = Utf16String(tar)
            let result = uSrc.endsWith(uTar)
            @Expect(result, dst)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testAppend
     * @tc.name      : testAppend
     * @tc.desc      : check application info_test_testAppend
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func testAppend() {
        let cases = [
            ("132", "bxx"),
            ("您那你", "xxx"),
            ("xxfdaasdf", "嘻嘻嘻"),
            ("嘻嘻嘻", "单独发顺丰")
        ]
        for ((prev, next) in cases) {
            let dst = prev + next
            let uPrev = Utf16String(prev)
            let uNext = Utf16String(next)
            let result = uPrev + uNext
            @Expect(result.toString(), dst)
        }
    }
}

func withException<E>(callback: () -> Unit): Bool where E <: Exception {
    try {
        callback()
        false
    } catch (_: E) {
        true
    }
}
