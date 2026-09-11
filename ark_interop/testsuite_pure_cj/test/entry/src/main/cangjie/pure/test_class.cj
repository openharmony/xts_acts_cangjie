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

package entry.pure

import ohos.ark_interop.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*
import ohos.business_exception.BusinessException

@Test
class TestJSClass {
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func throwExceptionInsideConstructor(): Unit {
        let jsContext = getJSContext()
        let jsClass = await(jsContext) {
            => jsContext.clazz(
                {
                    _: JSContext, callInfo: JSCallInfo =>
                    throw Exception("exception inside constructor.")
                    callInfo.thisArg
                }
            )
        }
        try {
            let _ = await(jsContext) {jsClass.new()}
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300002)
        }
    }
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSClassPlain() {
        let jsContext = getJSContext()
        await(jsContext) {
            let classA = await(jsContext) {
                jsContext.clazz({
                    _, callInfo => callInfo.thisArg
                })
            }
            let proto = await(jsContext) {classA.prototype}
            let sthDone = Box<Bool>(false)
            await(jsContext) {
                proto["doSth"] = jsContext
                    .function {
                        _, callInfo =>
                        sthDone.value = true
                        jsContext.undefined().toJSValue()
                    }
                    .toJSValue()
            }
            let valueA = await(jsContext) {classA.new()}
            @Expect(await(jsContext){valueA.isObject()}, true)
            let objA = await(jsContext) {valueA.asObject()}
            @Expect(await(jsContext){objA.instanceOf(classA)})
            await(jsContext) {objA.callMethod("doSth")}
            @Expect(sthDone.value)
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSClassInherit() {
        let jsContext = getJSContext()
        await(jsContext) {
            let classA = await(jsContext) {
                jsContext.clazz(
                    {
                        _, callInfo =>
                        let thisObj = callInfo.thisArg.asObject()
                        thisObj["name"] = callInfo[0]
                        callInfo.thisArg
                    }
                )
            }
            await(jsContext) {
                classA.addMethod("getName") {
                    _, callInfo => callInfo.thisArg.getProperty("name")
                }
            }
            await(jsContext) {
                classA.addProperty("clsName", jsContext.string("none").toJSValue())
            }
            await(jsContext) {
                classA.addMethod(
                    "setName",
                    {
                        _, callInfo =>
                        callInfo.thisArg.setProperty("name", callInfo[0])
                        jsContext.undefined().toJSValue()
                    }
                )
            }
            let jsFunc = await(jsContext) {
                jsContext.function {
                    _, callInfo => jsContext.undefined().toJSValue()
                }
            }
            await(jsContext) {
                classA.addMethod(
                    "getUndefined",
                    jsFunc
                )
            }
            let classB = await(jsContext) {
                jsContext.clazz(
                    {
                        _, callInfo =>
                        let thisObj = callInfo.thisArg.asObject()
                        thisObj["name"] = callInfo[0]
                        thisObj["id"] = callInfo[1]
                        callInfo.thisArg
                    },
                    superClass: classA
                )
            }
            await(jsContext) {
                classB.addAccessor(
                    "myid",
                    getter: jsContext.function {
                        _, callInfo => callInfo.thisArg.getProperty("id")
                    },
                    setter: jsContext.function {
                        _, callInfo =>
                        callInfo.thisArg.setProperty("id", callInfo[0])
                        jsContext.undefined().toJSValue()
                    }
                )
            }
            await(jsContext) {
                classB.addAccessor(
                    "myid1",
                    getter: {
                        _, callInfo => callInfo.thisArg.getProperty("id")
                    },
                    setter: {
                        _, callInfo =>
                        callInfo.thisArg.setProperty("id", callInfo[0])
                        jsContext.undefined().toJSValue()
                    }
                )
            }
            let valueA = await(jsContext) {
                classA.new(jsContext.string("a").toJSValue())
            }
            let valueB = await(jsContext) {
                classB.new(jsContext.string("b").toJSValue(), jsContext.number(1.0).toJSValue())
            }
            let valueC = await(jsContext) {
                classA.new([])
            }
            @Expect(await(jsContext){valueA.isObject()})
            @Expect(await(jsContext){valueB.isObject()})
            @Expect(await(jsContext){valueC.isObject()})
            let objA = await(jsContext) {valueA.asObject()}
            let objB = await(jsContext) {valueB.asObject()}
            @Expect(await(jsContext){objA.instanceOf(classA)})
            @Expect(await(jsContext){objB.instanceOf(classB)})
            @Expect(await(jsContext){objB.instanceOf(classA)})
            let nameA = await(jsContext) {objA.callMethod("getName")}
            @Expect(await(jsContext){nameA.isString()})
            @Expect(await(jsContext){nameA.toString()}, 'a')
            var isMismatch: Bool = false
            try {
                let nameA = await(jsContext) {
                    objA.callMethod("name")
                }
                @Expect(false)
            } catch (e: BusinessException) {
                isMismatch = true
            }
            @Expect(isMismatch)
            await(jsContext) {
                objA.callMethod("setName", jsContext.string("A").toJSValue())
            }
            let nameA1 = await(jsContext) {objA["name"]}
            @Expect(await(jsContext){nameA1.isString()})
            @Expect(await(jsContext){nameA1.toString()}, "A")
            let id1 = await(jsContext) {objB["id"]}
            let id2 = await(jsContext) {objB["myid"]}
            @Expect(await(jsContext){id1.isNumber()})
            @Expect(await(jsContext){id2.isNumber()})
            @Expect(await(jsContext){id1.toNumber()}, await(jsContext){id2.toNumber()})
            @Expect(await(jsContext){id1.strictEqual(id2)})
            @Expect(await(jsContext){id1.toNumber()}, 1.0)
            await(jsContext) {
                objB["myid"] = jsContext.number(3.0).toJSValue()
            }
            @Expect(await(jsContext){objB["id"].toNumber()}, 3.0)
            @Expect(await(jsContext){objB["myid1"].toNumber()}, 3.0)
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueFunc() {
        let jsContext = getJSContext()
        await(jsContext) {
            let callNum = Box<Int64>(0)
            let entry = await(jsContext) {
                jsContext.function {
                    _, callInfo =>
                    callNum.value++
                    jsContext.undefined().toJSValue()
                }
            }
            let value = await(jsContext) {entry.toJSValue()}
            @Expect(await(jsContext){value.isFunction()})
            @Expect(await(jsContext){value.typeof()} == JSType.FUNCTION)
            await(jsContext) {value.asFunction()}
            await(jsContext) {entry.call()}
            await(jsContext) {
                entry.call(jsContext.undefined().toJSValue(), thisArg: jsContext.null().toJSValue())
            }
            await(jsContext) {
                entry.call(thisArg: jsContext.null().toJSValue())
            }
            await(jsContext) {
                entry.call([jsContext.undefined().toJSValue(), jsContext.undefined().toJSValue()],
                    thisArg: jsContext.null().toJSValue())
            }
            @Expect(callNum.value, 4)
        }
    }
}
