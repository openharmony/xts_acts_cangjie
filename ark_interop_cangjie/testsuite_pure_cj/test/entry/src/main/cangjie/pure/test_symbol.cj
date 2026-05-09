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
import std.math.numeric.*
import std.random.*
import std.collection.*
import ohos.ark_interop.*

@Test
class TestSymbol {
    /*
     * @tc.number    : Sub_Cangjie_testSymbol00
     * @tc.name      : testSymbol00
     * @tc.desc      : check application info_test_testSymbol00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testSymbol00() {
        let jsContext = getJSContext()
        await(jsContext) {
            let symbol = await(jsContext) {jsContext.symbol()}
            let value = await(jsContext) {symbol.toJSValue()}
            let valueType = await(jsContext) {value.typeof()}
            @Expect(valueType == JSType.SYMBOL)
            @Expect(await(jsContext){value.isSymbol()}, true)
            @Expect(await(jsContext){value.isNull()}, false)
            @Expect(await(jsContext){value.isBoolean()}, false)
            @Expect(await(jsContext){value.isUndefined()}, false)
            @Expect(await(jsContext){value.isArray()}, false)
            @Expect(await(jsContext){value.isClass()}, false)
            @Expect(await(jsContext){value.isNumber()}, false)
            @Expect(await(jsContext){value.isString()}, false)
            @Expect(await(jsContext){value.isBigInt()}, false)
            @Expect(await(jsContext){value.isObject()}, false)
            @Expect(await(jsContext){value.isPromise()}, false)
            @Expect(await(jsContext){value.isFunction()}, false)
            // no-exception when convert to JSSymbol
            let other = await(jsContext) {value.asSymbol()}
            @Expect(await(jsContext){other.description}, "")
            await(jsContext) {symbol.toString()}
            let desc = await(jsContext) {symbol.description}
            @Expect(await(jsContext){symbol.description}, "")
            @Expect(await(jsContext){symbol.description}, desc)
            let value1 = await(jsContext) {symbol.toJSValue(jsContext)}
            @Expect(await(jsContext){value1.isSymbol()})
            await(jsContext) {value1.asSymbol()}
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSymbolIsKey
     * @tc.name      : testSymbolIsKey
     * @tc.desc      : check application info_test_testSymbolIsKey
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testSymbolIsKey() {
        let jsContext = getJSContext()
        await(jsContext) {
            let symbol = await(jsContext) {jsContext.symbol()}
            let object = await(jsContext) {jsContext.object()}
            await(jsContext) {
                object[symbol] = jsContext.boolean(false).toJSValue()
            }
            let received = await(jsContext) {object[symbol]}
            @Expect(await(jsContext){received.isBoolean()})
            @Expect(await(jsContext){received.toBoolean()}, false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSymbolKeyIsUnique
     * @tc.name      : testSymbolKeyIsUnique
     * @tc.desc      : check application info_test_testSymbolKeyIsUnique
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testSymbolKeyIsUnique() {
        let jsContext = getJSContext()
        await(jsContext) {
            // 2 symbol with same description is different key
            let key1 = await(jsContext) {
                jsContext.symbol(description: "a").toJSValue().asSymbol()
            }
            let key2 = await(jsContext) {
                jsContext.symbol(description: "a").toJSValue().asSymbol()
            }
            let object = await(jsContext) {jsContext.object()}
            await(jsContext) {
                object[key1] = jsContext.boolean(false).toJSValue()
            }
            await(jsContext) {
                object[key2] = jsContext.boolean(true).toJSValue()
            }
            let value1 = await(jsContext) {object[key1]}
            let value2 = await(jsContext) {object[key2]}
            @Expect(await(jsContext){value1.isBoolean()})
            @Expect(await(jsContext){value1.toBoolean()}, false)
            @Expect(await(jsContext){value2.isBoolean()})
            @Expect(await(jsContext){value2.toBoolean()}, true)
            await(jsContext) {key1.toString()}
            @Expect(await(jsContext){key1.description},await(jsContext) {key2.description})
        }
    }
}
