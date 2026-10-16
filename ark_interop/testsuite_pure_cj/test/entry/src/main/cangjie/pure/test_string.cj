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

@Test
class TestString {
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSString() {
        let jsContext = getJSContext()
        await(jsContext) {
            let originals = [
                "a plain text",
                "`~!@#$%^&*()_+[]\\",
                "中文字符",
                "😊😂🤣❤️😍😒👌😘"
            ]
            for (original in originals) {
                let jsStr = await(jsContext) {jsContext.string(original)}
                let jsStr1 = await(jsContext) {original.toJSValue(jsContext)}
                @Expect(await(jsContext){jsStr.toString()}, original)
                let value = await(jsContext) {jsStr.toJSValue()}
                @Expect(await(jsContext){value.isString()})
                @Expect(await(jsContext){value.toString()}, original)
                let value1 = await(jsContext) {jsStr.toJSValue(jsContext)}
                @Expect(await(jsContext){value1.isString()})
                @Expect(await(jsContext){value.strictEqual(value1)})
                let other = await(jsContext) {value.asString()}
                @Expect(await(jsContext){other.toString()}, original)
                let utf16Value = await(jsContext) {jsStr.toUtf16String()}
                @Expect(await(jsContext){utf16Value.toString()}, original)
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSStringAsKey() {
        let jsContext = getJSContext()
        await(jsContext) {
            let originals = [
                ("a", await(jsContext) {
                        jsContext.number(1.0).toJSValue()
                    }),
                ("1", await(jsContext) {
                        jsContext.string("asd").toJSValue()
                    }),
                ("$", await(jsContext) {
                        jsContext.boolean(false).toJSValue()
                    })
            ]
            let object = await(jsContext) {jsContext.object()}
            for ((k, v) in originals) {
                await(jsContext) {object[k] = v}
            }
            let keys = await(jsContext) {object.keys()}
            for ((k, v) in originals) {
                @Expect(keys.contains(k))
                let received = await(jsContext) {object[k]}
                @Expect(await(jsContext){received.strictEqual(v)})
            }
        }
    }
}
