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
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.business_exception.BusinessException
import ohos.ui_test.*
import ohos.data.relational_store.*
import ohos.data.relational_store.RelationalStoreSecurityLevel
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import std.math.*

@Test
class Test_dataSharePredicates {
    var _rdbStore: Option<RdbStore> = None
    prop rdbStore: RdbStore {
        get() {
            match (_rdbStore) {
                case Some(rdbStore) => rdbStore
                case None =>
                    let stageContext = getAbilityContext()
                    _rdbStore = getRdbStore(stageContext,
                        StoreConfig(RelationalStoreSecurityLevel.S2, name: "RdbTest.db", encrypt: true, dataGroupId: "",
                            customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true,
                            allowRebuild: false, isReadOnly: false, pluginLibs: ["pluginLibs"],
                            cryptoParam: CryptoParam(), vector: false, tokenizer: Tokenizer.NoneTokenizer, persist: true,
                            enableSemanticIndex: false))
                    _rdbStore.getOrThrow()
            }
        }
    }
    public override func afterAll(): Unit {
        match (_rdbStore) {
            case None => ()
            case Some(_) =>
                let stageContext = getAbilityContext()
                deleteRdbStore(stageContext, "RdbTest.db")
        }
    }
    public override func beforeEach(): Unit {
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, SALARY float NOT NULL, CODES Bit NOT NULL, PRIMARY KEY (Id))"
        )
        for (i in 1..101) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue(""))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(-Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 101..201) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("\0"))
            values.add("AGE", RelationalStoreValueType.Integer(i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 300..400) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            values.add("SALARY", RelationalStoreValueType.Double(-10000.5))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 400..500) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("a#$%^&*C123"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.25))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in 500..600) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME",
                RelationalStoreValueType.StringValue(
                    "111111111111111111111111111111111111111111111111111111111111111111111123"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i) + 0.25))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
    }

    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    } 
     
    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0200
    * @tc.name      : test_equalTo_Invalid
    * @tc.desc      : test DataSharePredicates test_equalTo
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_equalTo_Invalid(): Unit {
        var predicates = DataSharePredicates()
        try {
            predicates.equalTo("", VBValueType.StringValue("Peter"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates
    * @tc.name      : test_equalTo_valid
    * @tc.desc      : test DataSharePredicates test_equalTo
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_equalTo_valid(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(11))
        values.add("NAME", RelationalStoreValueType.StringValue("zhangSan"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(Float64(100) + 0.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))
        let predicates = DataSharePredicates()
        predicates.equalTo("NAME", VBValueType.StringValue("zhangSan"))
        predicates.orderByAsc("ID")
        @Expect(true)
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
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(18))
        values.add("NAME", RelationalStoreValueType.StringValue("zhangSan"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(Float64(100) + 0.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))
        let predicates = DataSharePredicates()
        predicates.equalTo("NAME", VBValueType.StringValue("zhangSan"))
            .and()
            .equalTo("AGE", VBValueType.Integer(19))
        @Expect(true)
    }


    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0300
    * @tc.name      : test_create_orderByDesc
    * @tc.desc      : test DataSharePredicates test_create_and
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_create_orderByDesc(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(11))
        values.add("NAME", RelationalStoreValueType.StringValue("zhangSan"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(Float64(100) + 0.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))
        let predicates = DataSharePredicates()
        predicates.equalTo("NAME", VBValueType.StringValue("zhangSan"))
        predicates.orderByDesc("ID")
        @Expect(true)
    }
    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0400
    * @tc.name      : test_orderByAsc_Invalid
    * @tc.desc      : test DataSharePredicates test_orderByAsc
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByAsc_Invalid() {
        try {
            var predicates = DataSharePredicates()
            predicates.orderByAsc("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0500
    * @tc.name      : test_orderByDesc_Invalid
    * @tc.desc      : test DataSharePredicates test_orderByDesc
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByDesc_Invalid(): Unit {
        try {
            var predicates = DataSharePredicates()
            predicates.orderByDesc("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0600
    * @tc.name      : test_limit_Invalid1
    * @tc.desc      : test DataSharePredicates test_limit
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limit_Invalid1(): Unit {
        try {
            var predicates = DataSharePredicates()
            predicates.limit(-1, 1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0600
    * @tc.name      : test_limit_Invalid2
    * @tc.desc      : test DataSharePredicates test_limit
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limit_Invalid2(): Unit {
        try {
            var predicates = DataSharePredicates()
            predicates.limit(1, -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }  
    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0600
    * @tc.name      : test_limit_valid
    * @tc.desc      : test DataSharePredicates test_limit
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limit_valid(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(11))
        values.add("NAME", RelationalStoreValueType.StringValue("zhangSan"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(Float64(100) + 0.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))
        let predicates = DataSharePredicates()
        predicates.equalTo("NAME", VBValueType.StringValue("zhangSan"))
        .limit(10, 3)
        @Expect(true)
    }

/*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0700
    * @tc.name      : test_in_Invalid1
    * @tc.desc      : test DataSharePredicates test_in
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_Invalid1(): Unit {
        let array = ArrayList<VBValueType>(5, {i => VBValueType.StringValue("hello ${i}")})
        let emptyArray = ArrayList<VBValueType>(0)
        let multiTypeArray: Array<VBValueType> = [
            VBValueType.Integer(1),
            VBValueType.StringValue("hello"),
            VBValueType.Double(0.01),
            VBValueType.Boolean(false)
        ]
        
        let testCases: Array<(String, Array<VBValueType>)> = [
            ("", array.toArray()),
            ("", emptyArray.toArray()),
            ("", multiTypeArray),
            ("AGE", emptyArray.toArray()),
            ("AGE", multiTypeArray)
        ]
        
        for ((field, values) in testCases) {
            try {
                var predicates = DataSharePredicates()
                predicates.`inValues`(field, values)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 401)
            }
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_DataSharePredicates_Test_dataSharePredicates_0700
    * @tc.name      : test_in_valid
    * @tc.desc      : test DataSharePredicates test_in
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in_valid(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(11))
        values.add("NAME", RelationalStoreValueType.StringValue("zhangSan"))
        values.add("AGE", RelationalStoreValueType.Integer(19))
        values.add("SALARY", RelationalStoreValueType.Double(Float64(100) + 0.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))
        let predicates = DataSharePredicates()
        predicates.inValues("AGE", [VBValueType.Integer(18), VBValueType.Integer(19)])
        @Expect(true)
    }
}
