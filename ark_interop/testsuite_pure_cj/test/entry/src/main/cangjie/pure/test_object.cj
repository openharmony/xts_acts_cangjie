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
import ohos.ark_interop.*
import std.time.*
import std.runtime.*
import std.math.numeric.*

@Test
class TestObject {
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSObject00() {
        let jsContext = getJSContext()
        let object = await(jsContext) {jsContext.object()}
        @Expect(await(jsContext){object.keys().size}, 0)
        await(jsContext) {
            object["a"] = jsContext.boolean(true).toJSValue()
        }
        @Expect(await(jsContext){object["a"].isBoolean()})
        @Expect(await(jsContext){object["b"].isUndefined()})
        @Expect(await(jsContext){object.hasProperty("a")})
        @Expect(await(jsContext){object.hasProperty("b")}, false)
        @Expect(await(jsContext){object.getProperty("a").toBoolean()})
        await(jsContext) {
            object.setProperty("a", jsContext.boolean(false).toJSValue())
        }
        @Expect(await(jsContext){object["a"].toBoolean()}, false)
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSObjectDefineProperty() {
        let jsContext = getJSContext()
        let cases = [
            PropCase("a", false, false, false),
            PropCase("b", true, false, false),
            PropCase("c", false, true, false),
            PropCase("d", false, false, true),
            PropCase("e", true, true, false),
            PropCase("f", true, false, false),
            PropCase("g", false, true, true),
            PropCase("h", true, true, true)
        ]
        let object = await(jsContext) {jsContext.object()}
        let valueT = await(jsContext) {
            jsContext.boolean(true).toJSValue()
        }
        let valueF = await(jsContext) {
            jsContext.boolean(false).toJSValue()
        }
        for (one in cases) {
            await(jsContext) {
                object.defineOwnProperty(one.key, valueF, isWritable: one.writable, isEnumerable: one.enumerable,
                    isConfigurable: one.configurable)
            }
        }
        let keys = await(jsContext) {object.keys()}
        let expectedKeys = ["c", "e", "g", "h"]
        @Expect(keys.size, 4)
        for (k in keys) {
            @Expect(expectedKeys.contains(k))
        }
        for (one in cases) {
            if (one.writable) {
                await(jsContext) {object[one.key] = valueT}
                let received = await(jsContext) {object[one.key].toBoolean()}
                @Expect(one.writable, received)
            }
        }
        let valueNull = await(jsContext) {
            jsContext.null().toJSValue()
        }
        for (one in cases) {
            let expThrow = try {
                await(jsContext) {object.defineOwnProperty(one.key, valueNull)}
                false
            } catch (_) {
                true
            }
            if (one.configurable) {
                @Expect(await(jsContext){object[one.key].isNull()})
            } else {
                @Expect(expThrow)
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSObjectDefineAccessor() {
        let jsContext = getJSContext()
        let object = await(jsContext) {jsContext.object()}
        await(jsContext) {
            object["a"] = jsContext.number(1.1).toJSValue()
        }
        let rawGetter: JSLambda = {
            _, callInfo => callInfo.thisArg.getProperty("a")
        }
        let rawSetter: JSLambda = {
            _, callInfo =>
            callInfo.thisArg.setProperty("a", callInfo[0])
            jsContext.undefined().toJSValue()
        }
        let getter = await(jsContext) {jsContext.function(rawGetter)}
        let setter = await(jsContext) {jsContext.function(rawSetter)}
        await(jsContext) {object.defineOwnAccessor("b", getter: getter, setter: setter)}
        await(jsContext) {object.defineOwnAccessor("c", getter: getter)}
        await(jsContext) {object.defineOwnAccessor("d", setter: setter)}
        await(jsContext) {object.defineOwnAccessor("e", getter: rawGetter, setter: rawSetter)}
        await(jsContext) {object.defineOwnAccessor("f", getter: rawGetter)}
        await(jsContext) {object.defineOwnAccessor("g", setter: rawSetter)}
        await(jsContext) {
            object["b"] = jsContext.boolean(true).toJSValue()
        }
        @Expect(await(jsContext) {object["a"].toBoolean()})
        @Expect(await(jsContext) {object["b"].toBoolean()})
        @Expect(await(jsContext) {object["c"].toBoolean()})
        @Expect(await(jsContext) {object["e"].toBoolean()})
        @Expect(await(jsContext) {object["f"].toBoolean()})
        await(jsContext) {
            object["d"] = jsContext.number(0.0).toJSValue()
        }
        @Expect(await(jsContext) {object["a"].toNumber()}, 0.0)
        @Expect(await(jsContext) {object["b"].toNumber()}, 0.0)
        @Expect(await(jsContext) {object["c"].toNumber()}, 0.0)
        @Expect(await(jsContext) {object["e"].toNumber()}, 0.0)
        @Expect(await(jsContext) {object["f"].toNumber()}, 0.0)
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSObjectOther() {
        let jsContext = getJSContext()
        let object = await(jsContext) {jsContext.object()}
        await(jsContext) {
            object["a"] = jsContext.null().toJSValue()
        }
        await(jsContext) {
            object[jsContext.symbol(description: "b")] = jsContext.boolean(true).toJSValue()
        }
        await(jsContext) {
            object["c"] = jsContext.function {
                _, callInfo => jsContext.undefined().toJSValue()
            }.toJSValue()
        }
        await(jsContext) {object.callMethod("c")}
        let keys = await(jsContext) {object.keys()}
        @Expect(keys.size, 2)
        let newCls = await(jsContext) {
            jsContext.clazz({
                _, callInfo => callInfo.thisArg
            })
        }
        let isError = await(jsContext) {object.instanceOf(newCls)}
        @Expect(isError, false)
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSObjectExternal() {
        let jsContext = getJSContext()
        let object = await(jsContext) {jsContext.object()}
        @Expect(await(jsContext){object.getAttachInfo().isNone()})
        let myObject = MyObject()
        let external = await(jsContext) {jsContext.external(myObject)}
        await(jsContext) {object.attachCJObject(external)}
        let received = await(jsContext) {object.getAttachInfo()}
        @Expect(received.isSome())
        let receivedExt = received.getOrThrow()
        let receivedObJOpt = await(jsContext) {receivedExt.cast<MyObject>()}
        @Expect(receivedObJOpt.isSome())
        let receivedObJ = receivedObJOpt.getOrThrow()
        @Expect(receivedObJ.nativeId, myObject.nativeId)
        let data = await(jsContext) {receivedExt.getData()} as MyObject
        @Expect(data.isSome())
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testFinalizer() {
        let context = getJSContext()
        await(context) {
            let a = context.function {_, _ => context.undefined().toJSValue()}
            let b = context.object()
            let c = context.external(MyObject())
            let d = context.array()
            let e = context.bigint(BigInt(123))
            let f = context.clazz({_, c => c.thisArg})
            let g = unsafe {
                context.arrayBuffer(LibC.malloc<Byte>(count: 8), 8) {ptr => LibC.free(ptr)}
            }
            let h = context.promiseCapability()
            let i = h.toJSValue().asPromise()
            h.resolve(context.undefined().toJSValue())
            let j = context.symbol()
            let l = context.string("")
        }
        gc()
        sleep(Duration.second * 1)
        await(context) {
            context.global["ArkTools"].asObject().callMethod("forceFullGC")
        }
        sleep(Duration.millisecond * 200)
    }
}

struct PropCase {
    PropCase(
        let key: String,
        let writable: Bool,
        let enumerable: Bool,
        let configurable: Bool
    ) {}
}
