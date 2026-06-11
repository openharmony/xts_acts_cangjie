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
//import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestEqualTo_1 {
    /*
     * @tc.number    : Test_Equal_To_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : "1" Match data table.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbPridecates")
        let rdbPridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "testEqualTo")
        rdbPridecates
            .equalTo("Lisa", RelationalStoreValueType.StringValue("Lisa"))
            .and()
            .equalTo("AGD", RelationalStoreValueType.Boolean(true))
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Test_Equal_To_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : "2" Match data table.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbPridecates")
        let rdbPridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "Match data table")
        try {
            rdbPridecates
                .equalTo("", RelationalStoreValueType.StringValue(""))
                .and()
                .equalTo("DEWR%$%$*67", RelationalStoreValueType.Boolean(false))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Test_Equal_To_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : "3" Match data table.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbPridecates")
        let rdbPridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "testEqualTo")
        rdbPridecates
            .equalTo("Lisa", RelationalStoreValueType.StringValue("Lisa"))
            .and()
            .equalTo("#!$@$23", RelationalStoreValueType.Boolean(true))
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Test_Equal_To_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : "4" Match data table.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbPridecates")
        let rdbPridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "testEqualTo")
        rdbPridecates
            .equalTo("Lisa", RelationalStoreValueType.StringValue("Lisa"))
            .and()
            .equalTo("reason", RelationalStoreValueType.Boolean(true))
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Test_Equal_To_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : "1024" Match data table.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbPridecates")
        let rdbPridecates = RdbPredicates("EMPLOYEE")
        Hilog.info(0u32, "cangjietest", "", "testEqualTo")
        rdbPridecates
            .equalTo("Lisa", RelationalStoreValueType.StringValue("Lisa"))
            .and()
            .equalTo("1234567890", RelationalStoreValueType.Boolean(true))
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }
}
