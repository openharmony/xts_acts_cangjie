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
import std.collection.*
import ohos.base.*
import ohos.data.distributed_kv_store.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

@Test
class test_KVStore_enum_1 {

    public func stringifierKVSecurityLevel(kVSecurityLevel: KVSecurityLevel): String {
        match(kVSecurityLevel){
            case S1 => "S1"
            case S2 => "S2"
            case S3 => "S3"
            case S4 => "S4"
            case _ =>throw Exception("unsupported enum constructor")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_KVSecurityLevel_0400
     * @tc.name      : test_enum_KVSecurityLevel
     * @tc.desc      : test KVSecurityLevel enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_KVSecurityLevel(){
        @Expect(stringifierKVSecurityLevel(S1),"S1")
        @Expect(stringifierKVSecurityLevel(S2),"S2")
        @Expect(stringifierKVSecurityLevel(S3),"S3")
        @Expect(stringifierKVSecurityLevel(S4),"S4")
        }
 
}