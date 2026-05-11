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

import ohos.ark_interop.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*

@Test
class TestExternal {
    /*
     * @tc.number    : Sub_Cangjie_testJSExternal
     * @tc.name      : testJSExternal
     * @tc.desc      : check application info_test_testJSExternal
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSExternal() {
        let jsContext = getJSContext()
        let data = MyObject()
        let ext1 = await(jsContext) {jsContext.external(data)}
        let ext2 = await(jsContext) {jsContext.external(data)}
        let ext3 = await(jsContext) {
            ext1.toJSValue().asExternal()
        }
        let recevied1 = await(jsContext) {ext1.getData()}
        let received2 = await(jsContext) {ext2.getData()}
        let received3 = await(jsContext) {ext3.getData()}
        @Expect(recevied1.nativeId, received2.nativeId)
        @Expect(data.nativeId, received3.nativeId)
        @Expect(data.nativeId, recevied1.nativeId)
    }
}

class MyObject <: SharedObject {
    var name: String = ""
}
