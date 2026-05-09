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

import std.collection.ArrayList
import std.collection.HashMap
import ohos.base.*
import std.unittest.testmacro.*
import kit.ArkData.*
import ohos.data.data_share_predicates
// import ohos.data.values_bucket.ValueType as VBValueType
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.BusinessException

let DEBUG_HEAD: String = "[TEST DATA_SHARE_PREDICATES]: "
let SUCCESS_CODE: Int32 = 0
let MEMORY_ERROR: Int32 = -1
let E_PARAM_ERROR: Int32 = 401
let errorMsg = HashMap<Int32, String>(
    [(E_PARAM_ERROR,
        "Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed."),
        (MEMORY_ERROR, "Instance invalid.")])

@Test
class Test_dataSharePredicates {
    // 创建一个rdb数据库 假定该数据库字段设计如下
    // 表名 EMPLOYEE
    
    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0100
    * @tc.name      : test_create_dataSharePredicates
    * @tc.desc      : test DataSharePredicates test_create_dataSharePredicates
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_dataSharePredicates(): Unit {
        // 一般来说，创建一个 DataSharePredicates 对象不会出现意外
        try {
            var predicates = DataSharePredicates()
            @Expect(true)
            println(DEBUG_HEAD + "test_create_dataSharePredicates success.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_create_dataSharePredicates error. code is ${e.code}, message is ${e.message}.")
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0200
    * @tc.name      : test_equalTo
    * @tc.desc      : test DataSharePredicates test_equalTo
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_equalTo(): Unit {
        // equalTo方法测试
        var predicates = DataSharePredicates()
        // 测试列名为空的情况
        try {
            predicates.equalTo("", VBValueType.StringValue("Peter"))
            @Expect(false)
            println(DEBUG_HEAD + "test_equalTo with empty field error. It should throw an exception.")
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_equalTo with empty field success. code is ${e.code}, message is ${e.message}.")
        }

        // 测试不存在列名的情况，DataSharePredicates和数据库是没有直接的操作关系，只是存储一些值，因此理论应该不会抛出错误
        try {
            predicates.equalTo("FIELD_NOT_EXIST", VBValueType.StringValue("Peter"))
            @Expect(true)
            println(DEBUG_HEAD + "test_equalTo with field not exist success.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_equalTo with field not exist error. code is ${e.code}, message is ${e.message}.")
            @Expect(false)
        }

        // 测试正常的情况
        try {
            // Int64
            predicates.equalTo("AGE", VBValueType.Integer(25))
            // Float64
            predicates.equalTo("SALARY", VBValueType.Double(1000.5))
            // String
            predicates.equalTo("NAME", VBValueType.StringValue("Peter"))
            // Bool
            predicates.equalTo("CODES", VBValueType.Boolean(true))

            @Expect(true)
            println(DEBUG_HEAD + "test_equalTo with normal situation success.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_equalTo with field not exist error. code is ${e.code}, message is ${e.message}.")
        }

        // 测试错误查询
        try {
            predicates = DataSharePredicates()
            predicates.equalTo("AGE", VBValueType.Integer(17))
            @Expect(true)
            println(DEBUG_HEAD + "test_equalTo with incorrect value, pass.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_equalTo with not exists field error. code is ${e.code}, message is ${e.message}."
            )
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0300
    * @tc.name      : test_create_and
    * @tc.desc      : test DataSharePredicates test_create_and
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_and(): Unit {
        // equalTo方法测试
        // 测试链式编程
        try {
            var predicates = DataSharePredicates()
            predicates
                .equalTo("AGE", VBValueType.Integer(18))
                .and()
                .equalTo("NAME", VBValueType.StringValue("Lisa"))
                .and()
                .equalTo("SALARY", VBValueType.Double(100.5))
                .and()
                .equalTo("CODES", VBValueType.Boolean(true))
            println(DEBUG_HEAD + "test_and success.")
            @Expect(true)
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_and error. code is ${e.code}, message is ${e.message}.")
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0400
    * @tc.name      : test_orderByAsc
    * @tc.desc      : test DataSharePredicates test_orderByAsc
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByAsc() {

        // 测试列名为空的情况
        try {
            var predicates = DataSharePredicates()
            predicates.orderByAsc("")
            println(DEBUG_HEAD + "test_orderByAsc error. It should throw an Exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_orderByAsc success. code is ${e.code}, message is ${e.message}.")
        }

        // 测试正常的情况
        try {
            var predicates = DataSharePredicates()
            predicates.orderByAsc("AGE")
            @Expect(true)
            println(DEBUG_HEAD + "test_orderByAsc success.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_orderByAsc error. It should not throw an Exception.")
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0500
    * @tc.name      : test_orderByDesc
    * @tc.desc      : test DataSharePredicates test_orderByDesc
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByDesc(): Unit {
        // 测试列名为空的情况
        try {
            var predicates = DataSharePredicates()
            predicates.orderByDesc("")
            println(DEBUG_HEAD + "test_orderByDesc error. It should throw an Exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_orderByDesc success. code is ${e.code}, message is ${e.message}.")
        }
        // 测试正常的情况
        try {
            var predicates = DataSharePredicates()
            predicates.orderByDesc("AGE")
            @Expect(true)
            println(DEBUG_HEAD + "test_orderByDesc success.")
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_orderByDesc error. It should not throw an Exception.")
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0600
    * @tc.name      : test_limit
    * @tc.desc      : test DataSharePredicates test_limit
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limit(): Unit {
        // 测试输入负数的情况
        try {
            var predicates = DataSharePredicates()
            predicates.limit(-1, 1)
            println(DEBUG_HEAD + "test_limit error. It should throw an Exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_limit success. code is ${e.code}, message is ${e.message}.")
        }

        try {
            var predicates = DataSharePredicates()
            predicates.limit(1, -1)
            println(DEBUG_HEAD + "test_limit error. It should throw an Exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_limit success. code is ${e.code}, message is ${e.message}.")
        }

        try {
            var predicates = DataSharePredicates()
            predicates.limit(-1, -1)
            println(DEBUG_HEAD + "test_limit error. It should throw an Exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_limit success. code is ${e.code}, message is ${e.message}.")
        }

        // 测试正常情况
        try {
            var predicates = DataSharePredicates()
            predicates.limit(10, 10)
            println(DEBUG_HEAD + "test_limit success.")
            @Expect(true)
        } catch (e: BusinessException) {
            println(DEBUG_HEAD + "test_limit error. It should not throw an exception.")
            @Expect(false)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0700
    * @tc.name      : test_in
    * @tc.desc      : test DataSharePredicates test_in
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in(): Unit {
        let array = ArrayList<VBValueType>(5, {i => VBValueType.StringValue("hello ${i}")})
        let emptyArray = ArrayList<VBValueType>(0)
        let multiTypeArray: Array<VBValueType> = [
            VBValueType.Integer(1),
            VBValueType.StringValue("hello"),
            VBValueType.Double(0.01),
            VBValueType.Boolean(false)
        ]

        // 测试列名为空，array正常
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("", array.toArray())
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
            @Expect(true)
        }

        // 测试列名为空，array为空
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("", emptyArray.toArray())
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
            @Expect(true)
        }

        // 测试列名为空，arrary中类型不一致
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("", multiTypeArray)
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
            @Expect(true)
        }

        // 测试列名不为空， array中类型一致
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("AGE", array.toArray())
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
            @Expect(false)
        }

        // 测试列名不为空， array为空
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("AGE", emptyArray.toArray())
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
        }

        // 测试列名不为空， array中类型不一致
        try {
            var predicates = DataSharePredicates()
            predicates.`inValues`("AGE", multiTypeArray)
            println(DEBUG_HEAD + "test_in error. It should throw an exception.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, E_PARAM_ERROR)
            println(DEBUG_HEAD + "test_in success. code is ${e.code}, message is ${e.message}.")
            @Expect(true)
        }
    }
}
