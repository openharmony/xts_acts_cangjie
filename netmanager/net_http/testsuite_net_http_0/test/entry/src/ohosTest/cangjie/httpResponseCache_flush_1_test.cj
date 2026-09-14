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
class httpResponseCache_flush_1 {

    let cacheSizeArr = [0u32, 1u32, 2147483647u32, 4294967295u32]

    /*
     * @tc.number    : Sub_Cangjie_netHttp_httpResponseCache_flush_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Flush HTTP response cache to file system
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
                let httpResponseCache = createHttpResponseCache(cacheSize: 0u32)
                Hilog.info(0, "cangjietest", "flush")
                httpResponseCache.flush()
            }
            @Expect(true)
        }catch(e:BusinessException){
            @Expect(false)
            Hilog.error(0, "cangjietest", "testcase TestCase_1 fail: ${e.code}" + e.message)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

}
