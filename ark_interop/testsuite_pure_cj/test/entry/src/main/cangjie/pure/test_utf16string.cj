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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.ark_interop.*

@Test
class TestUtf16String {
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testUtf16FromTo() {
        let jsContext = getJSContext()
        let cases = [
            "1234567890",
            "abcdefg",
            ",./[]-=",
            "阿斯蒂芬",
            "asdafas电",
            "暗色调😊😞🚹👴🚺"
        ]
        await(jsContext) {
            for (one in cases) {
                let u16 = Utf16String(one)
                u16.hashCode()
                let jstr = await(jsContext) {jsContext.string(u16).toJSValue()}
                let receive = await(jsContext) {jstr.toUtf16String()}
                @Expect(u16, receive)
                @Expect(one, receive.toString())
                let value = await(jsContext) {u16.toJSValue(jsContext)}
                let received1 = await(jsContext) {Utf16String.fromJSValue(jsContext, value)}
                @Expect(received1, u16)
            }
        }
    }
}
