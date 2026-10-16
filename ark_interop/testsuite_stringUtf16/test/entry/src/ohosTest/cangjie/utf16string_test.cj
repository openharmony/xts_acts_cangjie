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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0100
     * @tc.name      : testToString
     * @tc.desc      : 测试 Utf16String.toString() 转换为字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToString(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0200
     * @tc.name      : testDispose
     * @tc.desc      : 测试 dispose() 释放后 accessible 为 false 且方法抛异常
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDispose(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0300
     * @tc.name      : testCompressed
     * @tc.desc      : 测试 isCompressed() 判断 latin1 和 utf16 压缩状态
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCompressed(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0400
     * @tc.name      : testCompare
     * @tc.desc      : 测试 compare() 方法及比较运算符 ==, >, >=, <, <=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCompare(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0500
     * @tc.name      : testSize
     * @tc.desc      : 测试 size 属性获取 utf16 单元数量
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSize(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0600
     * @tc.name      : testTotalChars
     * @tc.desc      : 测试 totalChars 属性获取实际字符数量
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testTotalChars(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0700
     * @tc.name      : testIndex
     * @tc.desc      : 测试索引 [index] 获取指定位置 utf16 单元及越界异常
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIndex(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0800
     * @tc.name      : testSubstr
     * @tc.desc      : 测试范围 [range] 获取子串及无效范围异常
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSubstr(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_0900
     * @tc.name      : testRunes
     * @tc.desc      : 测试 runes() 迭代 unicode 字符
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRunes(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1000
     * @tc.name      : testLines
     * @tc.desc      : 测试 lines() 按换行符分割
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testLines(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1100
     * @tc.name      : testIndexOf
     * @tc.desc      : 测试 indexOf(target, offset) 从指定位置查找子串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIndexOf(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1200
     * @tc.name      : testIndexOf1
     * @tc.desc      : 测试 indexOf(target) 从起始位置查找子串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIndexOf1(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1300
     * @tc.name      : testLastIndexOf
     * @tc.desc      : 测试 lastIndexOf(target, offset) 从指定位置反向查找
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testLastIndexOf(): Unit {
        let cases = [("🚂好🚂3456", 8, "345", 5), ("0123456", 7, "123", 1)]
        for ((src, offset, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar, offset)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1400
     * @tc.name      : testLastIndexOfIsNone
     * @tc.desc      : 测试 lastIndexOf 找不到时返回 None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testLastIndexOfIsNone(): Unit {
        let cases = [("0123456", 7, "999", 1)]
        for ((src, offset, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar, offset)
            @Expect(result.isNone())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1500
     * @tc.name      : testLastIndexOf1
     * @tc.desc      : 测试 lastIndexOf(target) 从末尾反向查找
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testLastIndexOf1(): Unit {
        let cases = [("🚂好🚂3456", "345", 5), ("0123456", "123", 1)]
        for ((src, target, dst) in cases) {
            let uSrc = Utf16String(src)
            let uTar = Utf16String(target)
            let result = uSrc.lastIndexOf(uTar)
            @Expect(dst, result)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1600
     * @tc.name      : testCountOf
     * @tc.desc      : 测试 count() 统计子串出现次数
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCountOf(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1700
     * @tc.name      : testSplit
     * @tc.desc      : 测试 split() 按分隔符分割字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSplit(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1800
     * @tc.name      : testLazySplit
     * @tc.desc      : 测试 lazySplit() 惰性分割字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testLazySplit(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_1900
     * @tc.name      : testReplace
     * @tc.desc      : 测试 replace() 替换子串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testReplace(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_2000
     * @tc.name      : testContains
     * @tc.desc      : 测试 contains() 判断是否包含子串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testContains(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_2100
     * @tc.name      : testStartsWith
     * @tc.desc      : 测试 startsWith() 判断前缀
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testStartsWith(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_2200
     * @tc.name      : testEndsWith
     * @tc.desc      : 测试 endsWith() 判断后缀
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testEndsWith(): Unit {
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
     * @tc.number    : Sub_Cangjie_arkts_interop_TestUtf16String_2300
     * @tc.name      : testAppend
     * @tc.desc      : 测试 + 运算符追加字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAppend(): Unit {
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
