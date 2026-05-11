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

package ohos_app_cangjie_entry

import ohos.file.fs.FileIo
import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule, JSObject, SharedObject, JSClass}
import std.math.{MathExtension, abs}
import std.math.numeric.BigInt

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject =>
    jsObject["testRegisterModule00"] = jsContext.undefined().toJSValue()
    jsObject["testRegisterModule01"] = jsContext.null().toJSValue()
    jsObject["testRegisterModule02"] = jsContext.boolean(true).toJSValue()
    jsObject["testRegisterModule03"] = jsContext.number(114.514).toJSValue()
    jsObject["testRegisterModule04"] = jsContext.string("hello world").toJSValue()
    jsObject["testRegisterModule05"] = jsContext
        .function {
            jsContext, jsCallInfo => jsContext.number(jsCallInfo[0].toNumber() + jsCallInfo[1].toNumber()).toJSValue()
        }
        .toJSValue()
    jsObject["testRegisterModule06"] = {
        =>
        let jsClass = jsContext.clazz(Person.constructor)
        jsClass.addProperty("gender", jsContext.string("male").toJSValue())
        jsClass.addAccessor(
            "name",
            getter: {
                jsContext, jsCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let person = jsObject.getAttachInfo().getOrThrow().cast<Person>().getOrThrow()
                jsContext.string(person.name).toJSValue()
            },
            setter: {
                jsContext, jsCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let person = jsObject.getAttachInfo().getOrThrow().cast<Person>().getOrThrow()
                person.name = jsCallInfo[0].toString()
                jsContext.undefined().toJSValue()
            }
        )
        jsClass
    }().toJSValue()
    jsObject["testRegisterModule07"] = jsContext.symbol().toJSValue()
    jsObject["testRegisterModule08"] = jsContext
        .array([jsContext.number(1.0).toJSValue(), jsContext.boolean(true).toJSValue()])
        .toJSValue()
    jsObject["testRegisterModule09"] = {
        =>
        let jsObject = jsContext.object()
        jsObject.defineOwnProperty("name", jsContext.string("tom").toJSValue())
        jsObject
    }().toJSValue()
    jsObject["testRegisterModule10"] = jsContext.bigint(BigInt("12345678901234567890")).toJSValue()
    jsObject["testRegisterModule11"] = jsContext.arrayBuffer(114514).toJSValue()
    jsObject["testRegisterModule12"] = jsContext.external(Person("tom", 23)).toJSValue()
}

class Person <: SharedObject {
    var name: String
    var age: Int64
    init(name: String, age: Int64) {
        this.name = name
        this.age = age
    }
    static func constructor(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
        let name = jsCallInfo[0].toString()
        let age = Int64(jsCallInfo[1].toNumber())
        let person = Person(name, age)
        let jsObject = jsCallInfo.thisArg.asObject()
        jsObject.attachCJObject(jsContext.external(person))
        jsObject.toJSValue()
    }
    static func getJSClass(jsContext: JSContext): JSClass {
        let jsClass = jsContext.clazz(Person.constructor)
        jsClass.addAccessor(
            "name",
            getter: {
                jsContext, jsCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let person = jsObject.getAttachInfo().getOrThrow().cast<Person>().getOrThrow()
                jsContext.string(person.name).toJSValue()
            },
            setter: {
                jsContext, jsCallInfo =>
                let jsObject = jsCallInfo.thisArg.asObject()
                let person = jsObject.getAttachInfo().getOrThrow().cast<Person>().getOrThrow()
                person.name = jsCallInfo[0].toString()
                jsContext.undefined().toJSValue()
            }
        )
        jsClass
    }
}
