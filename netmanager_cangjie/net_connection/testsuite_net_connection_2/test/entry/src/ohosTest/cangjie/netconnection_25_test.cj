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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.NetworkKit.*

@Test
class Test_get_set_getDefault_GlobalHttpProxy_02 {

    
    /*
    * @tc.number    : Sub_Cangjie_NetConnection_Test_get_set_getDefault_GlobalHttpProxy_02_0100
    * @tc.name      : test_getdefaultglobalhttpproxy_07
    * @tc.desc      : test NetConnection test_getdefaultglobalhttpproxy_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
     @Tag[APILevel22, TestLevel0]
    func test_getdefaultglobalhttpproxy_07(): Unit {
        let getDefaultHttp = getDefaultHttpProxy()
        @Expect(getDefaultHttp.host, "")
        @Expect(getDefaultHttp.port, 0u32)
        @Expect(getDefaultHttp.exclusionList, [])
    }
}
