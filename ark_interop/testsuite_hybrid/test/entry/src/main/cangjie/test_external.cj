/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

package ohos_app_cangjie_entry

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime}

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject => jsObject["testExternal00"] = jsContext
        .function(test_external_00)
        .toJSValue()
}

class MyObject_test_external_00 <: SharedObject {
    var name: String
    var age: Int64
    var grade: Int64
    static var c: Option<JSClass> = None

    init(name: String, age: Int64, grade: Int64) {
        this.name = name
        this.age = age
        this.grade = grade
    }
    static func of(jsObject: JSObject): MyObject_test_external_00 {
        jsObject.getAttachInfo().getOrThrow().cast<MyObject_test_external_00>().getOrThrow()
    }
    static init() {
        JSModule.registerClass("MyObject_test_external_00", jsClassRegister)
    }
    static func constructor1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
        let name = jsCallInfo[0].toString()
        let age = Int64(jsCallInfo[1].toNumber())
        let grade = Int64(jsCallInfo[2].toNumber())
        let student = MyObject_test_external_00(name, age, grade)
        // js侧创建好的对象作为this传入
        let jsObject = jsCallInfo.thisArg.asObject()
        jsObject.attachCJObject(jsContext.external(student))
        jsObject.toJSValue()
    }
    static func constructor0(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
        let jsObject = jsCallInfo.thisArg.asObject()
        jsObject.attachCJObject(jsCallInfo[0].asExternal())
        jsObject.toJSValue()
    }
    static func jsClassRegister(jsContext: JSContext): JSClass {
        let jsClass = jsContext.clazz(MyObject_test_external_00.constructor0)
        jsClass.addAccessor(
            "name",
            getter: {
                jsContext: JSContext, jsCallInfo: JSCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let student = MyObject_test_external_00.of(jsObject)
                jsContext.string(student.name).toJSValue()
            },
            setter: {
                jsContext: JSContext, jsCallInfo: JSCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let student = MyObject_test_external_00.of(jsObject)
                let newName = jsCallInfo[0].toString()
                student.name = newName
                jsContext.undefined().toJSValue()
            }
        )
        //        c = jsClass
        jsContext.clazz(constructor1, superClass: jsClass)
    }
}

func test_external_00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isObject())
    let jsObject = jsCallInfo[0].asObject()
    //    Assert.isTrue(jsObject.instanceOf(MyObject_test_external_00.c.getOrThrow()))
    jsContext.undefined().toJSValue()
}
