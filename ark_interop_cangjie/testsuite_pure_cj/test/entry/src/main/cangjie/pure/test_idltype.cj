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

package entry.pure

import ohos.ark_interop.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*
import std.collection.*

func doJSArrExTest(both: JSArrayEx<String>) {
    let jsContext = getJSContext()
    @Expect(both.size, 2)
    let firstOpt = both.get(0)
    @Expect(firstOpt.isSome())
    @Expect(firstOpt.getOrThrow(), "aaa")
    both.set(0, "bbb")
    @Expect(!both.isEmpty())
    @Expect(both[0], "bbb")
    both[1] = "ccc"
    @Expect(both[1], "ccc")
    let cjArr = both.toArray()
    let outRangeOpt = both.get(3)
    @Expect(withException<Exception> {
        let outRangeInfo = both[2]
    })
}

func doJSHashMapTest(map: JSHashMapEx<String, String>) {
    let jsContext = getJSContext()
    @Expect(map.isEmpty())
    @Expect(map.get("a").isNone())
    map.set("a", "b")
    let clonedMap = map.clone()
    @Expect(map.get("a").isSome())
    @Expect(map.size, 1)
    @Expect(map.has("a"))
    @Expect(map.containsAll(["a"]))
    @Expect(clonedMap.get("a").isSome())
    @Expect(clonedMap.size, 1)
    @Expect(clonedMap.has("a"))
    let curKeys = map.keys()
    let values = map.values()
    @Expect(values.size, 1)
    map["b"] = "c"
    let bv = map["b"]
    @Expect(bv, "c")
    map.delete("a")
    @Expect(map.size, 1)
    map.setIfAbsent("a", "a")
    map.setIfAbsent("a", "b")
    @Expect(map["a"], "a")
    map.setAll([("a", "b")])
    @Expect(map["a"], "b")
    map.deleteAll(["a"])
    @Expect(map.size, 1)
    map["a"] = "c"
    map.deleteIf {
        k, v => k == "d"
    }
    @Expect(map.size, 2)
    map.deleteIf {
        k, v => v == "c"
    }
    @Expect(map.isEmpty())
    let hh = map.toHashMap()
    map["d"] = "a"
    map.clear()
    @Expect(map.size, 0)
    @Expect(withException<Exception> {
        let res = map["a"]
    })
}

func doJSInteropTypeTest<T>(jsContext: JSContext, value: T): Unit where T <: JSInteropType<T> & Equatable<T> {
    let jsValue = value.toJSValue(jsContext)
    let received = T.fromJSValue(jsContext, jsValue)
    @Expect(value, received)
}

@Test
class TestIDLType {
    /*
     * @tc.number    : Sub_Cangjie_testJSStringEx
     * @tc.name      : testJSStringEx
     * @tc.desc      : check application info_test_testJSStringEx
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSStringEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let value = JSStringEx("abc")
            let other = JSStringEx.fromJSValue(jsContext, value.toJSValue(jsContext))
            @Expect(value.toString(), "abc")
            @Expect(!(value != other))
            @Expect(value == other)
            @Expect(JSStringEx.toArktsType(), "string")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSArrayEx
     * @tc.name      : testJSArrayEx
     * @tc.desc      : check application info_test_testJSArrayEx
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let array = JSArrayEx<String>("aaa")
            let copy = array.clone()
            let both = array.concat(copy)
            let jsTy = JSArrayEx<String>.fromJSValue(jsContext, both.toJSValue(jsContext)).clone()
            doJSArrExTest(both)
            doJSArrExTest(jsTy)
            @Expect(JSArrayEx<String>.toArktsType(), "Array")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSHashMapEx
     * @tc.name      : testJSHashMapEx
     * @tc.desc      : check application info_test_testJSHashMapEx
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSHashMapEx() {
        let jsContext = getJSContext()
        await(jsContext) {
            let hashmap = JSHashMapEx<String, String>()
            let src = HashMap<String, String>()
            let hashmap1 = JSHashMapEx<String, String>(src)
            let hashmap2 = JSHashMapEx<String, String>.fromJSValue(jsContext, hashmap.toJSValue(jsContext))
            doJSHashMapTest(hashmap)
            doJSHashMapTest(hashmap1)
            doJSHashMapTest(hashmap2)
            @Expect(JSHashMapEx<String, String>.toArktsType(), "Map")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSInteropType
     * @tc.name      : testJSInteropType
     * @tc.desc      : check application info_test_testJSInteropType
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSInteropType() {
        let jsContext = getJSContext()
        await(jsContext) {
            @Expect(Int8.toArktsType(), "number")
            doJSInteropTypeTest<Int8>(jsContext, 0);
            doJSInteropTypeTest<Int8>(jsContext, Int8.Max);
            doJSInteropTypeTest<Int8>(jsContext, Int8.Min);
            @Expect(UInt8.toArktsType(), "number")
            doJSInteropTypeTest<UInt8>(jsContext, 0);
            doJSInteropTypeTest<UInt8>(jsContext, UInt8.Max);
            doJSInteropTypeTest<UInt8>(jsContext, UInt8.Min);
            @Expect(UInt16.toArktsType(), "number")
            doJSInteropTypeTest<UInt16>(jsContext, 0);
            doJSInteropTypeTest<UInt16>(jsContext, UInt16.Max);
            doJSInteropTypeTest<UInt16>(jsContext, UInt16.Min);
            @Expect(Int16.toArktsType(), "number")
            doJSInteropTypeTest<Int16>(jsContext, 0);
            doJSInteropTypeTest<Int16>(jsContext, Int16.Max);
            doJSInteropTypeTest<Int16>(jsContext, Int16.Min);
            @Expect(Int32.toArktsType(), "number")
            doJSInteropTypeTest<Int32>(jsContext, 0);
            doJSInteropTypeTest<Int32>(jsContext, Int32.Max);
            doJSInteropTypeTest<Int32>(jsContext, Int32.Min);
            @Expect(Int64.toArktsType(), "number")
            doJSInteropTypeTest<Int64>(jsContext, 0);
            doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Max));
            doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Min));
            @Expect(UInt64.toArktsType(), "number")
            doJSInteropTypeTest<UInt64>(jsContext, 0);
            doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Max));
            doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Min));
            @Expect(Float16.toArktsType(), "number")
            doJSInteropTypeTest<Float16>(jsContext, 0.0);
            doJSInteropTypeTest<Float16>(jsContext, Float16.Max);
            doJSInteropTypeTest<Float16>(jsContext, Float16.Min);
            @Expect(Float32.toArktsType(), "number")
            doJSInteropTypeTest<Float32>(jsContext, 0.0);
            @Expect(Float64.toArktsType(), "number")
            doJSInteropTypeTest<Float64>(jsContext, 0.0);
            @Expect(Bool.toArktsType(), "boolean")
            doJSInteropTypeTest<Bool>(jsContext, true);
            doJSInteropTypeTest<Bool>(jsContext, false);
            @Expect(String.toArktsType(), "string")
            doJSInteropTypeTest<Bool>(jsContext, true);
            doJSInteropTypeTest<Bool>(jsContext, false);
            @Expect(Unit.toArktsType(), "undefined")
            doJSInteropTypeTest<Unit>(jsContext, ());
            @Expect(Option<String>.toArktsType(), "union")
            doJSInteropTypeTest<?String>(jsContext, None<String>);
            doJSInteropTypeTest<?String>(jsContext, "abc");
            @Expect(Array<Byte>.toArktsType(), "ArrayBuffer")
            doJSInteropTypeTest<Array<Byte>>(jsContext, [1, 3, 4]);
            @Expect(Utf16String.toArktsType(), "string")
            doJSInteropTypeTest<Utf16String>(jsContext, Utf16String("💗"))
            @Expect(JSString.toArktsType(), "string")
            let strValue = jsContext.string("abc").toJSValue()
            let jsStr = JSString.fromJSValue(jsContext, strValue)
            @Expect("abc", jsStr.toString())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSInteropTypeUInt32
     * @tc.name      : testJSInteropTypeUInt32
     * @tc.desc      : check application info_test_testJSInteropTypeUInt32
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSInteropTypeUInt32() {
        let jsContext = getJSContext()
        await(jsContext) {
            @Expect(UInt32.toArktsType(), "number")
            doJSInteropTypeTest<UInt32>(jsContext, 0);
            doJSInteropTypeTest<UInt32>(jsContext, UInt32.Max);
            doJSInteropTypeTest<UInt32>(jsContext, UInt32.Min);
        }
    }
}
