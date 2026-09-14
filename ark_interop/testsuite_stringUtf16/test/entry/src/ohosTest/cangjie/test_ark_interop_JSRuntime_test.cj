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

package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import ohos.ark_interop.*

@Test
class TestJSRuntime {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSRuntime_0100
     * @tc.name      : testInitAndMainContext
     * @tc.desc      : 测试 JSRuntime init 创建运行时后 mainContext 可用
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testInitAndMainContext(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testInitAndMainContext begins.")
        let runtime = JSRuntime()
        let context = runtime.mainContext
        @Expect(context.isInBindThread())
        let undef = context.undefined()
        @Expect(undef.toJSValue().isUndefined())
        Hilog.info(0u32, "cangjietest", "", "testcase testInitAndMainContext ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSRuntime_0200
     * @tc.name      : testGetNapiEnv
     * @tc.desc      : 测试 JSRuntime.getNapiEnv() 返回非空环境指针
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetNapiEnv(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetNapiEnv begins.")
        let runtime = JSRuntime()
        let env = runtime.getNapiEnv()
        @Expect(!env.isNull())
        Hilog.info(0u32, "cangjietest", "", "testcase testGetNapiEnv ends.")
    }
}
