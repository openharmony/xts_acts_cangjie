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

class MyClass_test_instanceof_03 <: SharedObject {
    var name: String
    var age: Int64
    var grade: Int64
    static var jsClass: Option<JSClass> = None
    static var v: Option<Int64> = None

    init(name: String, age: Int64, grade: Int64) {
        this.name = name
        this.age = age
        this.grade = grade
    }
    static func of(jsObject: JSObject): MyClass_test_instanceof_03 {
        jsObject.getAttachInfo().getOrThrow().cast<MyClass_test_instanceof_03>().getOrThrow()
    }
    static init() {
        JSModule.registerFunc("testInstanceOf03", test_instanceof_03)
        JSModule.registerClass("MyClass_test_instanceof_03", getJsClass)
    }
    static func constructor(jsContext: JSContext, _: JSCallInfo): JSValue {
        let jsObject = jsContext.object()
        jsObject.toJSValue()
    }
    static func getJsClass(jsContext: JSContext): JSClass {
        match (jsClass) {
            case Some(jsClass) => jsClass
            case None =>
                let jsClass = jsContext.clazz(MyClass_test_instanceof_03.constructor)
                jsClass.addAccessor(
                    "name",
                    getter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        jsContext.string(student.name).toJSValue()
                    },
                    setter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        Assert.equals(jsCallInfo.count, 1)
                        Assert.isTrue(jsCallInfo[0].isString())
                        let newName = jsCallInfo[0].toString()
                        student.name = newName
                        jsContext.undefined().toJSValue()
                    }
                )
                jsClass.addAccessor(
                    "age",
                    getter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        jsContext.number(Float64(student.age)).toJSValue()
                    },
                    setter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        Assert.equals(jsCallInfo.count, 1, reason: "setter should have 1 argument as new value")
                        Assert.isTrue(jsCallInfo[0].isNumber(), reason: "expecting number")
                        let newAge = Int64(jsCallInfo[0].toNumber())
                        student.age = newAge
                        jsContext.undefined().toJSValue()
                    }
                )
                jsClass.addAccessor(
                    "grade",
                    getter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        jsContext.number(Float64(student.grade)).toJSValue()
                    },
                    setter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        let student = MyClass_test_instanceof_03.of(jsObject)
                        Assert.equals(jsCallInfo.count, 1)
                        Assert.isTrue(jsCallInfo[0].isString())
                        let newGrade = Int64(jsCallInfo[0].toNumber())
                        student.grade = newGrade
                        jsContext.undefined().toJSValue()
                    }
                )
                jsClass
        }
    }
}

func test_instanceof_03(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
    } catch (e: Exception) {
        Hilog.error(0, "cangjietest", e.toString())
    }
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isObject())
    let jsObject = jsCallInfo[0].asObject()
    let jsClass = MyClass_test_instanceof_03.getJsClass(jsContext)
    Assert.isTrue(jsObject.instanceOf(jsClass), reason: "jsObject is instance of jsClass")
    jsContext.undefined().toJSValue()
}
