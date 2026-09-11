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
import kit.NetworkKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*



@Test
class httpResponseCache_delete_1 {
    let cacheSizeArr = [0u32, 1u32, 2147483647u32, 4294967295u32]

    /*
     * @tc.number    : Sub_Cangjie_netHttp_httpResponseCache_delete_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Disable HTTP response cache and delete data inside
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable httpResponseCache")
        try{
            for(cacheSize in cacheSizeArr){
                let httpResponseCache = createHttpResponseCache(cacheSize: cacheSize)
                Hilog.info(0, "cangjietest", "delete")
                httpResponseCache.delete()
            }
            @Expect(true)
        }catch(e:BusinessException){
            @Expect(false)
            Hilog.error(0, "cangjietest", "testcase TestCase_1 fail: ${e.code}" + e.message)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

}
