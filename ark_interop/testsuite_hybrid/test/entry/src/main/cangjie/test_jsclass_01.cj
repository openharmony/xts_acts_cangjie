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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject, JSClass}

class MyClass_test_jsclass_01 {
    var name: String
    var age: Int64
    var grade: Int64
    static var jsClass: Option<JSClass> = None
    init(name: String, age: Int64, grade: Int64) {
        this.name = name
        this.age = age
        this.grade = grade
    }
    static init() {
        JSModule.registerFunc("testJSClass01", testJSClass01)
    }
    static func constructor(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
        Assert.equals(jsCallInfo.count, 3)
        let jsObject = jsContext.object()
        Assert.isTrue(jsCallInfo[0].isString())
        Assert.isTrue(jsCallInfo[1].isNumber())
        Assert.isTrue(jsCallInfo[2].isNumber())
        jsObject.defineOwnProperty("_name", jsCallInfo[0])
        jsObject.defineOwnProperty("_age", jsCallInfo[1])
        jsObject.defineOwnProperty("_grade", jsCallInfo[2])
        jsObject.toJSValue()
    }
    static func getJsClass(jsContext: JSContext): JSClass {
        match (jsClass) {
            case Some(jsClass) => jsClass
            case None =>
                let jsClass = jsContext.clazz(MyClass_test_jsclass_01.constructor)
                jsClass.addAccessor(
                    "name",
                    getter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        jsObject.getProperty("_name")
                    },
                    setter: {
                        jsContext: JSContext, jsCallInfo: JSCallInfo =>
                        let jsObject = jsCallInfo.thisArg.asObject()
                        Assert.equals(jsCallInfo.count, 1)
                        Assert.isTrue(jsCallInfo[0].isString())
                        jsObject.setProperty("_name", jsCallInfo[0].asString().toJSValue())
                        jsContext.undefined().toJSValue()
                    }
                )
                jsClass
        }
    }
}

func testJSClass01(jsContext: JSContext, _: JSCallInfo): JSValue {
    let jsClass = MyClass_test_jsclass_01.getJsClass(jsContext)
    let jsObject = jsClass
        .new(jsContext.string("tom").toJSValue(), jsContext.number(19.0f64).toJSValue(),
            jsContext.number(99.0f64).toJSValue())
        .asObject()
    Assert.isTrue(jsObject.hasProperty("_name"), reason: "js object has property defined by function defineOwnProperty")
    Assert.isFalse(
        jsObject.hasProperty("name"),
        reason: "js object does not have property defined by function defineOwnAccessor"
    )
    Assert.isTrue(
        jsObject.getProperty("_name").isString(),
        reason: "js object has property of correct type defined by function defineOwnProperty"
    )
    try {
    } catch (e: Exception) {
        Hilog.error(0, "cangjietest", e.toString())
    }
    Assert.equals(jsObject.getProperty("_name").toString(), "tom",
        reason: "value of property with name _name should be right")
    jsContext.undefined().toJSValue()
}
