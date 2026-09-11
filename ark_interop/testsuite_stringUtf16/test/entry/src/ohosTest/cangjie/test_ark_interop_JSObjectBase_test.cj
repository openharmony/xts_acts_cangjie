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
import ohos.hilog.Hilog
import ohos.ark_interop.*

let sharedObjRuntime = JSRuntime()
let sharedObjContext = sharedObjRuntime.mainContext

@Test
class TestJSObjectBase {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0100
     * @tc.name      : testHasPropertyAndGetAndSet
     * @tc.desc      : 测试 hasProperty/getProperty/[]读取/setProperty/[]写入
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testHasPropertyAndGetAndSet(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testHasPropertyAndGetAndSet begins.")
        let context = sharedObjContext
        let obj = context.object()
        obj.setProperty("name", context.string("hi").toJSValue())
        @Expect(obj.hasProperty("name"))
        @Expect(!obj.hasProperty("notexist"))
        @Expect(obj.getProperty("name").asString().toString(), "hi")
        @Expect(obj["name"].asString().toString(), "hi")
        obj["name"] = context.string("world").toJSValue()
        @Expect(obj.getProperty("name").asString().toString(), "world")
        Hilog.info(0u32, "cangjietest", "", "testcase testHasPropertyAndGetAndSet ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0200
     * @tc.name      : testCallMethod
     * @tc.desc      : 测试 callMethod 调用对象方法
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallMethod(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testCallMethod begins.")
        let context = sharedObjContext
        let obj = context.object()
        let fn = context.function({ ctx: JSContext, _: JSCallInfo => ctx.number(42.0f64).toJSValue() })
        obj.setProperty("getAnswer", fn.toJSValue())
        let r = obj.callMethod("getAnswer", [])
        @Expect(r.asNumber().toFloat64(), 42.0f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testCallMethod ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0300
     * @tc.name      : testDefineOwnProperty
     * @tc.desc      : 测试 defineOwnProperty 定义属性后可读
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDefineOwnProperty(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDefineOwnProperty begins.")
        let context = sharedObjContext
        let obj = context.object()
        let ok = obj.defineOwnProperty("x", context.number(1.0f64).toJSValue())
        @Expect(ok)
        @Expect(obj.getProperty("x").asNumber().toFloat64(), 1.0f64)
        let ok2 = obj.defineOwnProperty("y", context.number(2.0f64).toJSValue(),
            isWritable: false, isEnumerable: false, isConfigurable: false)
        @Expect(ok2)
        Hilog.info(0u32, "cangjietest", "", "testcase testDefineOwnProperty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0400
     * @tc.name      : testDefineOwnAccessor
     * @tc.desc      : 测试 defineOwnAccessor(JSLambda) 定义访问器后可读
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDefineOwnAccessor(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testDefineOwnAccessor begins.")
        let context = sharedObjContext
        let obj = context.object()
        let getter = { ctx: JSContext, _: JSCallInfo => ctx.number(7.0f64).toJSValue() }
        let ok = obj.defineOwnAccessor("g", getter: getter)
        @Expect(ok)
        @Expect(obj.getProperty("g").asNumber().toFloat64(), 7.0f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testDefineOwnAccessor ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0500
     * @tc.name      : testKeys
     * @tc.desc      : 测试 keys() 返回对象属性名列表
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testKeys(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testKeys begins.")
        let context = sharedObjContext
        let obj = context.object()
        obj.setProperty("a", context.number(1.0f64).toJSValue())
        obj.setProperty("b", context.number(2.0f64).toJSValue())
        let ks = obj.keys()
        @Expect(ks.size >= 2)
        @Expect(ks.contains("a"))
        @Expect(ks.contains("b"))
        Hilog.info(0u32, "cangjietest", "", "testcase testKeys ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0600
     * @tc.name      : testInstanceOf
     * @tc.desc      : 测试 instanceOf 判断对象是否为某类实例
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testInstanceOf(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testInstanceOf begins.")
        let context = sharedObjContext
        let cls = context.clazz({ ctx: JSContext, _: JSCallInfo => ctx.undefined().toJSValue() })
        let inst = cls.new()
        @Expect(inst.asObject().instanceOf(cls))
        Hilog.info(0u32, "cangjietest", "", "testcase testInstanceOf ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSObjectBase_0700
     * @tc.name      : testAttachCJObjectAndGetAttachInfo
     * @tc.desc      : 测试 attachCJObject/getAttachInfo 绑定/取回 JSExternal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAttachCJObjectAndGetAttachInfo(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAttachCJObjectAndGetAttachInfo begins.")
        let context = sharedObjContext
        let data = MyData()
        let ext = context.external(data)
        let obj = context.object()
        obj.attachCJObject(ext)
        let info = obj.getAttachInfo()
        @Expect(info.isSome())
        Hilog.info(0u32, "cangjietest", "", "testcase testAttachCJObjectAndGetAttachInfo ends.")
    }
}
