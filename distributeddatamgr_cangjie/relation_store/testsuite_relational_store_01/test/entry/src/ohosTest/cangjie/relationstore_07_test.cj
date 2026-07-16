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
import ohos.data.relational_store.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestDistinct_1 {
    /*
     * @tc.number    : Test_Distinct_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : "1" Filter out duplicate records
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable store")
        let store = Option<RdbPredicates>.None
        Hilog.info(0u32, "cangjietest", "", "define local variable pridecates")
        let pridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "define local variable exceptionPredicates")
        let exceptionPredicates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "testDistinct")
        exceptionPredicates.distinct()
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Test_Distinct_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : "2" Filter out duplicate records
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable store")
        let store = Option<RdbPredicates>.None
        Hilog.info(0u32, "cangjietest", "", "define local variable pridecates")
        let pridecates = RdbPredicates("REASON")
        Hilog.info(0u32, "cangjietest", "", "define local variable exceptionPredicates")
        let exceptionPredicates = RdbPredicates("REASON")
        Hilog.info(0u32, "cangjietest", "", "testDistinct")
        exceptionPredicates.distinct()
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

}
