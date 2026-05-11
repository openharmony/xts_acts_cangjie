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
import ohos.ark_interop.JSRuntime
import ohos.business_exception.BusinessException
import ohos.ark_interop.JSType

@Test
class TestJSValue {
    /*
     * @tc.number    : Sub_Cangjie_testJSValueNull
     * @tc.name      : testJSValueNull
     * @tc.desc      : check application info_test_testJSValueNull
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueNull() {
        let jsContext = getJSContext()
        await(jsContext) {
            let null = await(jsContext) {jsContext.null()}
            let value = await(jsContext) {null.toJSValue()}
            @Expect(await(jsContext){value.isNull()}, true)
            @Expect(await(jsContext){value.isBoolean()}, false)
            @Expect(await(jsContext){value.isUndefined()}, false)
            @Expect(await(jsContext){value.isArray()}, false)
            @Expect(await(jsContext){value.isClass()}, false)
            @Expect(await(jsContext){value.isNumber()}, false)
            @Expect(await(jsContext){value.isString()}, false)
            @Expect(await(jsContext){value.isBigInt()}, false)
            @Expect(await(jsContext){value.isObject()}, false)
            @Expect(await(jsContext){value.isSymbol()}, false)
            @Expect(await(jsContext){value.isPromise()}, false)
            @Expect(await(jsContext){value.isFunction()}, false)
            let isMismatch = try {
                await(jsContext) {value.toString()}
                false
            } catch (exe: BusinessException) {
                true
            }
            @Expect(isMismatch)
            let valueType = await(jsContext) {value.typeof()}
            @Expect(valueType == JSType.NULL)
            @Expect(valueType != JSType.NULL, false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueUndefined
     * @tc.name      : testJSValueUndefined
     * @tc.desc      : check application info_test_testJSValueUndefined
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueUndefined() {
        let jsContext = getJSContext()
        await(jsContext) {
            let undefined = jsContext.undefined()
            let value = undefined.toJSValue()
            @Expect(value.isUndefined(), true)
            @Expect(value.isBoolean(), false)
            @Expect(value.isArray(), false)
            @Expect(value.isNull(), false)
            @Expect(value.isClass(), false)
            @Expect(value.isNumber(), false)
            @Expect(value.isString(), false)
            @Expect(value.isBigInt(), false)
            @Expect(value.isObject(), false)
            @Expect(value.isSymbol(), false)
            @Expect(value.isPromise(), false)
            @Expect(value.isFunction(), false)
            let valueType = value.typeof()
            @Expect(valueType == JSType.UNDEFINED)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueBooleanTrue
     * @tc.name      : testJSValueBooleanTrue
     * @tc.desc      : check application info_test_testJSValueBooleanTrue
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueBooleanTrue() {
        let jsContext = getJSContext()
        await(jsContext) {
            let value = await(jsContext) {
                jsContext.boolean(true).toJSValue()
            }
            @Expect(await(jsContext){value.isBoolean()}, true)
            @Expect(await(jsContext){value.isUndefined()}, false)
            @Expect(await(jsContext){value.isArray()}, false)
            @Expect(await(jsContext){value.isNull()}, false)
            @Expect(await(jsContext){value.isClass()}, false)
            @Expect(await(jsContext){value.isNumber()}, false)
            @Expect(await(jsContext){value.isString()}, false)
            @Expect(await(jsContext){value.isBigInt()}, false)
            @Expect(await(jsContext){value.isObject()}, false)
            @Expect(await(jsContext){value.isSymbol()}, false)
            @Expect(await(jsContext){value.isPromise()}, false)
            @Expect(await(jsContext){value.isFunction()}, false)
            let valueType = await(jsContext) {value.typeof()}
            @Expect(valueType == JSType.BOOLEAN)
            let cjValue = await(jsContext) {value.toBoolean()}
            @Expect(cjValue)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueBooleanFalse
     * @tc.name      : testJSValueBooleanFalse
     * @tc.desc      : check application info_test_testJSValueBooleanFalse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueBooleanFalse() {
        let jsContext = getJSContext()
        await(jsContext) {
            let value = await(jsContext) {
                jsContext.boolean(false).toJSValue()
            }
            @Expect(await(jsContext){value.isBoolean()}, true)
            @Expect(await(jsContext){value.isUndefined()}, false)
            @Expect(await(jsContext){value.isArray()}, false)
            @Expect(await(jsContext){value.isNull()}, false)
            @Expect(await(jsContext){value.isClass()}, false)
            @Expect(await(jsContext){value.isNumber()}, false)
            @Expect(await(jsContext){value.isString()}, false)
            @Expect(await(jsContext){value.isBigInt()}, false)
            @Expect(await(jsContext){value.isObject()}, false)
            @Expect(await(jsContext){value.isSymbol()}, false)
            @Expect(await(jsContext){value.isPromise()}, false)
            @Expect(await(jsContext){value.isFunction()}, false)
            let valueType = await(jsContext) {value.typeof()}
            @Expect(valueType == JSType.BOOLEAN)
            await(jsContext) {
                @Expect(value.toBoolean(), false)
                @Expect(value.asBoolean().toBool(), false)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueNumber
     * @tc.name      : testJSValueNumber
     * @tc.desc      : check application info_test_testJSValueNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueNumber() {
        let jsContext = getJSContext()
        await(jsContext) {
            let i32 = await(jsContext) {
                jsContext.number(Int32(12)).toJSValue()
            }
            let f64 = await(jsContext) {
                jsContext.number(2.0).toJSValue()
            }
            @Expect(await(jsContext){i32.isNumber()})
            @Expect(await(jsContext){i32.typeof()} == JSType.NUMBER)
            @Expect(await(jsContext){f64.isNumber()})
            @Expect(await(jsContext){f64.typeof()} == JSType.NUMBER)
            @Expect(await(jsContext){i32.toNumber()}, 12.0)
            @Expect(await(jsContext){f64.toNumber()}, 2.0)
            let i32Num = await(jsContext) {i32.asNumber()}
            let f64Num = await(jsContext) {f64.asNumber()}
            @Expect(await(jsContext){i32Num.toFloat64()}, 12.0)
            @Expect(await(jsContext){f64Num.toFloat64()}, 2.0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueString
     * @tc.name      : testJSValueString
     * @tc.desc      : check application info_test_testJSValueString
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueString() {
        let jsContext = getJSContext()
        await(jsContext) {
            let text = await(jsContext) {jsContext.string("abc")}
            let value = await(jsContext) {text.toJSValue()}
            let value1 = await(jsContext) {text.toJSValue()}
            @Expect(await(jsContext){value.strictEqual(value1)})
            @Expect(await(jsContext){value.typeof()} == JSType.STRING)
            @Expect(await(jsContext){value.isString()})
            @Expect(await(jsContext){value1.isString()})
            let text1 = await(jsContext) {value.asString()}
            let text2 = await(jsContext) {value.asString()}
            @Expect(await(jsContext){text1.toString()},await(jsContext){ text2.toString()})
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueObject
     * @tc.name      : testJSValueObject
     * @tc.desc      : check application info_test_testJSValueObject
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueObject() {
        let jsContext = getJSContext()
        await(jsContext) {
            let source = await(jsContext) {jsContext.object()}
            let value = await(jsContext) {source.toJSValue()}
            @Expect(await(jsContext){value.isObject()})
            @Expect(await(jsContext){value.typeof()} == JSType.OBJECT)

            await(jsContext) {value.asObject()}

            await(jsContext) {
                value.setProperty("a", jsContext.number(1.0).toJSValue())
            }
            await(jsContext) {
                value.setProperty("b", jsContext.number(2.0).toJSValue())
            }
            let receivedValue = await(jsContext) {value.getProperty("a")}
            @Expect(await(jsContext){receivedValue.isNumber()})
            @Expect(await(jsContext){receivedValue.toNumber()}, 1.0)
            let receivedValue1 = await(jsContext) {value.getProperty("b")}
            @Expect(await(jsContext){receivedValue1.isNumber()})
            @Expect(await(jsContext){receivedValue1.toNumber()}, 2.0)

            let myData = MyObject()
            await(jsContext) {value.bindObject(myData)}
            await(jsContext) {
                value.bindObject(jsContext.external(myData).toJSValue())
            }
            await(jsContext) {value.bindObject(myData)}
            await(jsContext) {
                value.bindObject(jsContext.external(myData).toJSValue())
            }
            let a = await(jsContext) {value.getBindingObject()}
            let b = await(jsContext) {value.getBindingObject()}
            @Expect(a.isSome())
            @Expect(b.isSome())
            let objA = a.getOrThrow() as MyObject
            @Expect(objA.isSome())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueArray
     * @tc.name      : testJSValueArray
     * @tc.desc      : check application info_test_testJSValueArray
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueArray() {
        let jsContext = getJSContext()
        await(jsContext) {
            let array = await(jsContext) {jsContext.array()}
            let value = await(jsContext) {array.toJSValue()}
            @Expect(await(jsContext){value.isArray()})
            await(jsContext) {value.asArray()}
            await(jsContext) {
                value.setElement(0, jsContext.number(0.0).toJSValue())
            }
            await(jsContext) {
                value.setElement(1, jsContext.number(1.0).toJSValue())
            }
            @Expect(await(jsContext){array.size}, 2)
            let ele0 = await(jsContext) {value.getElement(0)}
            let ele1 = await(jsContext) {value.getElement(1)}
            @Expect(await(jsContext){ele0.isNumber()})
            @Expect(await(jsContext){ele0.toNumber()}, 0.0)
            @Expect(await(jsContext){ele1.isNumber()})
            @Expect(await(jsContext){ele1.toNumber()}, 1.0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueBigint
     * @tc.name      : testJSValueBigint
     * @tc.desc      : check application info_test_testJSValueBigint
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueBigint() {
        let jsContext = getJSContext()
        await(jsContext) {
            let bigint = await(jsContext) {jsContext.bigint(123)}
            let value = await(jsContext) {bigint.toJSValue()}
            @Expect(await(jsContext){value.isBigInt()})
            @Expect(await(jsContext){value.typeof()} == JSType.BIGINT)
            let received = await(jsContext) {value.asBigInt()}
            let receivedBigint = await(jsContext) {received.toBigInt()}
            let receivedI64 = await(jsContext) {receivedBigint.toInt64()}
            @Expect(receivedI64, 123)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueSymbol
     * @tc.name      : testJSValueSymbol
     * @tc.desc      : check application info_test_testJSValueSymbol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueSymbol() {
        let jsContext = getJSContext()
        await(jsContext) {
            let symbol = jsContext.symbol()
            let value = symbol.toJSValue()
            let value1 = symbol.toJSValue()
            @Expect(value.strictEqual(value1))
            @Expect(value.isSymbol())
            @Expect(value.typeof() == JSType.SYMBOL)
            value.asSymbol()
            @Expect(symbol.description, "")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testJSValueExternal
     * @tc.name      : testJSValueExternal
     * @tc.desc      : check application info_test_testJSValueExternal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSValueExternal() {
        let jsContext = getJSContext()
        await(jsContext) {
            let mydata = MyObject()
            let external = await(jsContext) {jsContext.external(mydata)}
            let value = await(jsContext) {external.toJSValue()}
            @Expect(await(jsContext){value.isExternal()})
            @Expect(await(jsContext){value.typeof()} == JSType.EXTERNAL)
            await(jsContext) {value.asExternal()}
        }
    }
}
