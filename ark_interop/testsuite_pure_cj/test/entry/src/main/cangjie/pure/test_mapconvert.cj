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

import std.unittest.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.collection.*
import ohos.ark_interop.*
import ohos.ark_interop_helper.*
import ohos.business_exception.*

@Test
class TestMapConvert {
    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0100
     * @tc.name      : testMapToJSValueString
     * @tc.desc      : cover mapToJSValue with Some(HashMap<String, String>) and string convert
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapToJSValueString(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            let map = HashMap<String, String>()
            map.add("k1", "v1")
            map.add("k2", "v2")
            let result = mapToJSValue<String>(jsContext, Some(map), { ctx, v => ctx.string(v).toJSValue() })
            let obj = result.asObject()
            @Expect(obj["k1"].asString().toString(), "v1")
            @Expect(obj["k2"].asString().toString(), "v2")
            @Expect(!obj.hasProperty("k3"))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0200
     * @tc.name      : testMapFromJSValueString
     * @tc.desc      : cover mapFromJSValue with a JS object and string convert
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapFromJSValueString(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            let obj = jsContext.object()
            obj["k1"] = jsContext.string("v1").toJSValue()
            obj["k2"] = jsContext.string("v2").toJSValue()
            let result = mapFromJSValue<String>(jsContext, obj.toJSValue(), { ctx, v => v.asString().toString() })
            let map = result.getOrThrow()
            @Expect(map.size, 2)
            @Expect(map.get("k1").getOrThrow(), "v1")
            @Expect(map.get("k2").getOrThrow(), "v2")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0300
     * @tc.name      : testMapRoundTripInt64
     * @tc.desc      : cover mapToJSValue then mapFromJSValue round trip with Int64 values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapRoundTripInt64(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            let src = HashMap<String, Int64>()
            src.add("n1", 11)
            src.add("n2", 22)
            let jsValue = mapToJSValue<Int64>(jsContext, Some(src), { ctx, v => ctx.number(Float64(v)).toJSValue() })
            let back = mapFromJSValue<Int64>(jsContext, jsValue, { ctx, v => Int64(v.toNumber()) })
            let map = back.getOrThrow()
            @Expect(map.size, 2)
            @Expect(map.get("n1").getOrThrow(), 11)
            @Expect(map.get("n2").getOrThrow(), 22)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0400
     * @tc.name      : testMapToJSValueEmptyMap
     * @tc.desc      : cover mapToJSValue with an empty HashMap producing an object without properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapToJSValueEmptyMap(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
            let map = HashMap<String, String>()
            let result = mapToJSValue<String>(jsContext, Some(map), { ctx, v => ctx.string(v).toJSValue() })
            let obj = result.asObject()
            @Expect(!obj.hasProperty("k1"))
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0500
     * @tc.name      : testMapToJSValueThreadMismatch
     * @tc.desc      : cover mapToJSValue called off the JS bind thread throwing 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapToJSValueThreadMismatch(): Unit {
        let jsContext = getJSContext()
        try {
            let map = HashMap<String, String>()
            map.add("k", "v")
            let _ = mapToJSValue<String>(jsContext, Some(map), { ctx, v => ctx.string(v).toJSValue() })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300004i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ark_interop_MapConvert_0600
     * @tc.name      : testMapFromJSValueThreadMismatch
     * @tc.desc      : cover mapFromJSValue called off the JS bind thread throwing 34300004
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMapFromJSValueThreadMismatch(): Unit {
        let jsContext = getJSContext()
        let value = await(jsContext) {
            let obj = jsContext.object()
            obj["k"] = jsContext.string("v").toJSValue()
            Some(obj.toJSValue())
        }
        try {
            let _ = mapFromJSValue<String>(jsContext, value.getOrThrow(), { ctx, v => v.asString().toString() })
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300004i32)
        }
    }
}
