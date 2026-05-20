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


internal import ohos.base.*
import std.unittest.testmacro.*
internal import ohos.data.relational_store.Progress as StoreProcess
internal import ohos.data.relational_store.SyncMode as RSyncMode
internal import ohos.data.relational_store.SubscribeType as RSubscribeType
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.HashMap
import ohos.callback_invoke.{CallbackObject, Callback0Argument}
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import ohos.data.relational_store.*
import ohos.callback_invoke.Callback1Argument

var store: Option<RdbStore> = None
var tag = 0

class TestCallback <: Callback0Argument {
    let callback_: () -> Unit
    public init(callback: () -> Unit) {
        callback_ = callback
    }
    public func invoke(err: ?BusinessException): Unit {
        callback_()
        Hilog.info(0u32, "cangjietest", "", "callback invoke.")
    }
}

@Test
class Test_relational_store {
    let rdbPridecates = RdbPredicates("test")
    let asset = Asset("info1", "uri1", "path1", "0:00", "8:00", "100MB")
    let allValueTypes = [
        RelationalStoreValueType.Null,
        RelationalStoreValueType.Integer(1),
        RelationalStoreValueType.Double(1.1),
        RelationalStoreValueType.StringValue("1"),
        RelationalStoreValueType.Boolean(false),
        RelationalStoreValueType.Uint8Array([1, 2]),
        RelationalStoreValueType.AssetEnum(asset),
        RelationalStoreValueType.AssetsEnum([asset])
    ]
    override func beforeAll(): Unit {
        store = getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        let rdbStore = store.getOrThrow()
        sleepFor(1.second)
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID INT NOT NULL, NAME VARCHAR(255) NOT NULL, AGE INT, SALARY FLOAT NOT NULL, CODES TINYINT(1) NOT NULL, PRIMARY KEY (ID))")

        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(100.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))

        rdbStore.insert("EMPLOYEE", values)

        values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(2))
        values.add("NAME", RelationalStoreValueType.StringValue("Peter"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        values.add("SALARY", RelationalStoreValueType.Double(1000.5))
        values.add("CODES", RelationalStoreValueType.Boolean(false))

        rdbStore.insert("EMPLOYEE", values)

        values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(3))
        values.add("NAME", RelationalStoreValueType.StringValue("Lily"))
        values.add("SALARY", RelationalStoreValueType.Double(10000.5))
        values.add("CODES", RelationalStoreValueType.Boolean(true))

        rdbStore.insert("EMPLOYEE", values)
    }

    override func afterAll(): Unit {
        let rdbStore = store.getOrThrow()
        deleteRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        getRdbStore(getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S1, name: "RdbTest.db", encrypt: false, dataGroupId: "",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: false,
                isReadOnly: true, pluginLibs: ["pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        deleteRdbStore(getAbilityContext(), "RdbTest1.db")
        GC()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0100
     * @tc.name      : test_getRdbStoreExceptionBr
     * @tc.desc      : test relational_store getRdbStore
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getRdbStoreExceptionBr() {
        var exceptionStore: Option<RdbStore> = None
        try {
            exceptionStore = getRdbStore(getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: String.empty))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800030)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0200
     * @tc.name      : test_initException
     * @tc.desc      : test relational_store RdbPredicates
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_initException() {
        try {
            RdbPredicates("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0300
     * @tc.name      : test_inAllDevices
     * @tc.desc      : test relational_store inAllDevices
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_inAllDevices() {
        rdbPridecates.inAllDevices()
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0400
     * @tc.name      : test_wrap
     * @tc.desc      : test relational_store wrap
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wrap() {
        rdbPridecates.beginWrap()
        rdbPridecates.endWrap()
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0500
     * @tc.name      : test_andOr
     * @tc.desc      : test relational_store and&Or
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_andOr() {
        rdbPridecates.and()
        rdbPridecates.or()
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0600
     * @tc.name      : test_contains
     * @tc.desc      : test relational_store contains
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_contains() {
        rdbPridecates.contains("test", "test")
        rdbPridecates.contains("test", "")
        try {
            rdbPridecates.contains("", "test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0700
     * @tc.name      : test_beginsWith
     * @tc.desc      : test relational_store beginsWith
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_beginsWith() {
        rdbPridecates.beginsWith("test", "test")
        rdbPridecates.beginsWith("test", "")
        try {
            rdbPridecates.beginsWith("", "test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0800
     * @tc.name      : test_endsWith
     * @tc.desc      : test relational_store endsWith
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_endsWith() {
        rdbPridecates.endsWith("test", "test")
        rdbPridecates.endsWith("test", "")
        try {
            rdbPridecates.endsWith("", "test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_0900
     * @tc.name      : test_isNull
     * @tc.desc      : test relational_store isNull
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isNull() {
        rdbPridecates.isNull("test")
        try {
            rdbPridecates.isNull("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1000
     * @tc.name      : test_isNotNull
     * @tc.desc      : test relational_store isNotNull
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isNotNull() {
        rdbPridecates.isNotNull("test")
        try {
            rdbPridecates.isNotNull("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1100
     * @tc.name      : test_like
     * @tc.desc      : test relational_store like
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_like() {
        rdbPridecates.like("test", "test")
        rdbPridecates.like("test", "")
        try {
            rdbPridecates.like("", "test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1200
     * @tc.name      : test_glob
     * @tc.desc      : test relational_store glob
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_glob() {
        rdbPridecates.glob("test", "test")
        rdbPridecates.glob("test", "")
        try {
            rdbPridecates.glob("", "test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1300
     * @tc.name      : test_orderByDesc
     * @tc.desc      : test relational_store orderByDesc
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByDesc() {
        rdbPridecates.orderByDesc("test")
        try {
            rdbPridecates.orderByDesc("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1400
     * @tc.name      : test_limitAs
     * @tc.desc      : test relational_store limitAs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_limitAs() {
        rdbPridecates.limitAs(1)
        rdbPridecates.limitAs(-1)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1500
     * @tc.name      : test_offsetAs
     * @tc.desc      : test relational_store offsetAs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_offsetAs() {
        rdbPridecates.offsetAs(1)
        rdbPridecates.offsetAs(-1)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1600
     * @tc.name      : test_groupBy
     * @tc.desc      : test relational_store groupBy
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_groupBy() {
        rdbPridecates.groupBy(Array<String>())
        rdbPridecates.groupBy(["test"])
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1700
     * @tc.name      : test_lessThanOrEqualTo
     * @tc.desc      : test relational_store lessThanOrEqualTo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessThanOrEqualTo() {
        rdbPridecates.lessThanOrEqualTo("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.lessThanOrEqualTo("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1800
     * @tc.name      : test_equalTo
     * @tc.desc      : test relational_store equalTo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_equalTo() {
        rdbPridecates.equalTo("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.equalTo("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_1900
     * @tc.name      : test_greaterThanOrEqualTo
     * @tc.desc      : test relational_store greaterThanOrEqualTo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterThanOrEqualTo() {
        rdbPridecates.greaterThanOrEqualTo("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.greaterThanOrEqualTo("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2000
     * @tc.name      : test_greaterThan
     * @tc.desc      : test relational_store greaterThan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_greaterThan() {
        rdbPridecates.greaterThan("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.greaterThan("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2100
     * @tc.name      : test_lessThan
     * @tc.desc      : test relational_store lessThan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lessThan() {
        rdbPridecates.lessThan("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.lessThan("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2200
     * @tc.name      : test_notEqualTo
     * @tc.desc      : test relational_store notEqualTo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notEqualTo() {
        rdbPridecates.notEqualTo("test", RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.notEqualTo("", RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2300
     * @tc.name      : test_notBetween
     * @tc.desc      : test relational_store notBetween
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notBetween() {
        rdbPridecates.notBetween("test", RelationalStoreValueType.StringValue(""),
            RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.notBetween("", RelationalStoreValueType.StringValue(""),
                RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2400
     * @tc.name      : test_between
     * @tc.desc      : test relational_store between
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_between() {
        rdbPridecates.between("test", RelationalStoreValueType.StringValue(""),
            RelationalStoreValueType.StringValue("test"))
        try {
            rdbPridecates.between("", RelationalStoreValueType.StringValue(""),
                RelationalStoreValueType.StringValue("test"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2500
     * @tc.name      : test_in
     * @tc.desc      : test relational_store in
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_in() {
        rdbPridecates.`inValues`("test", allValueTypes)
        rdbPridecates.`inValues`("test", Array<RelationalStoreValueType>())
        try {
            rdbPridecates.`inValues`("", Array<RelationalStoreValueType>())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2600
     * @tc.name      : test_notIn
     * @tc.desc      : test relational_store notInValues
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_notIn() {
        rdbPridecates.notInValues("test", allValueTypes)
        rdbPridecates.notInValues("test", Array<RelationalStoreValueType>())
        try {
            rdbPridecates.notInValues("", Array<RelationalStoreValueType>())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2700
     * @tc.name      : test_restore
     * @tc.desc      : test relational_store restore
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_restore() {
        let rdbStore = store.getOrThrow()
        rdbStore.backup("dbBackup_11.db")
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        @Expect(rdbStore.delete(predicates), 1)
        var resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        @Expect(resultSet.rowCount, 0)
        rdbStore.restore("dbBackup_11.db")
        resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        @Expect(resultSet.rowCount, 1)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2800
     * @tc.name      : test_delete
     * @tc.desc      : test relational_store delete
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delete() {
        let rdbStore = store.getOrThrow()
        rdbStore.executeSql(
            "CREATE TABLE PEOPLE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, PRIMARY KEY (Id))")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Rain"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        rdbStore.insert("PEOPLE", values)
        values.add("ID", RelationalStoreValueType.Integer(2))
        values.add("NAME", RelationalStoreValueType.StringValue("Sun"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        rdbStore.insert("PEOPLE", values)
        values.add("ID", RelationalStoreValueType.Integer(3))
        values.add("NAME", RelationalStoreValueType.StringValue("Rain"))
        values.add("AGE", RelationalStoreValueType.Integer(20))
        rdbStore.insert("PEOPLE", values)
        let predicates = RdbPredicates("PEOPLE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Rain"))
        try {
            let exceptionPredicates = RdbPredicates("PEO")
            rdbStore.delete(exceptionPredicates)
            @Expect(true)
        } catch (_: BusinessException) {}
        @Expect(rdbStore.delete(predicates), 2)
        @Expect(rdbStore.query(predicates,columns: ["ID", "NAME", "AGE"]).rowCount, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_2900
     * @tc.name      : test_backup_exception
     * @tc.desc      : test relational_store backup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_backup_exception() {
        let exceptionRdbStore = store.getOrThrow()
        try {
            exceptionRdbStore.backup("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3000
     * @tc.name      : test_restore_exception
     * @tc.desc      : test relational_store restore
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_restore_exception() {
        let exceptionRdbStore = store.getOrThrow()
        try {
            exceptionRdbStore.restore("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
        try {
            exceptionRdbStore.restore("123123")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800010)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3100
     * @tc.name      : test_transaction
     * @tc.desc      : test relational_store beginTransaction
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_transaction() {
        let rdbStore = store.getOrThrow()
        rdbStore.executeSql("CREATE TABLE THING(ID int NOT NULL, NAME varchar(255) NOT NULL, PRIMARY KEY (Id))")
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Rain"))
        rdbStore.insert("THING", values)
        rdbStore.beginTransaction()
        values.add("ID", RelationalStoreValueType.Integer(2))
        values.add("NAME", RelationalStoreValueType.StringValue("Sun"))
        rdbStore.insert("THING", values)
        rdbStore.commit()
        let predicates = RdbPredicates("THING")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME"])
        @Expect(resultSet.rowCount, 2)
        try {
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(3))
            values.add("NAME", RelationalStoreValueType.StringValue("Tom"))
            rdbStore.insert("THING", values)
            values.add("ID", RelationalStoreValueType.Integer(4))
            values.add("NAME", RelationalStoreValueType.StringValue("Wind"))
            rdbStore.insert("THING", values)
            throw Exception("there is error!")
            rdbStore.commit()
            @Expect(false)
        } catch (e: Exception) {
            rdbStore.rollBack()
        }
        let predicates2 = RdbPredicates("THING")
        let resultSet2 = rdbStore.query(predicates2, columns: ["ID", "NAME"])
        @Expect(resultSet2.rowCount, 2)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3200
     * @tc.name      : test_querySql0
     * @tc.desc      : test relational_store querySql0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_querySql0() {
        let rdbStore = store.getOrThrow()
        var resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'Peter'")
        @Expect(resultSet.goToNextRow(), true )
    }
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3200
     * @tc.name      : test_querySql1
     * @tc.desc      : test relational_store querySql1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_querySql1() {
        let rdbStore = store.getOrThrow()
        var resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'Peter'")
        resultSet.goToNextRow()
        @Expect(resultSet.getString(resultSet.getColumnIndex("NAME")), "Peter")
    }
     /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3200
     * @tc.name      : test_querySql2
     * @tc.desc      : test relational_store querySql2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_querySql2() {
        let rdbStore = store.getOrThrow()
        var resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'Peter'",
            bindArgs: [RelationalStoreValueType.StringValue("Peter")])
        try{
            rdbStore.querySql("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }   
    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3300
     * @tc.name      : test_getRow
     * @tc.desc      : test relational_store getRow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getRow() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.equalTo("NAME", RelationalStoreValueType.StringValue("Lisa"))
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.goToNextRow(), true)
        let map = resultSet.getRow()
        let predicates1 = RdbPredicates("EMPLOYEE")
        let resultSet1 = rdbStore.query(predicates1, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        try {
            let map1 = resultSet1.getRow()
            @Expect(false)
        } catch (_: BusinessException) {
        }
        match (map["ID"]) {
            case RelationalStoreValueType.Integer(v) =>
                if (v != 1) {
                    @Expect(false)
                }
            case _ => return
        }
        match (map["NAME"]) {
            case RelationalStoreValueType.StringValue(v) =>
                if (v != "Lisa") {
                    @Expect(false)
                }
            case _ => return
        }
        match (map["AGE"]) {
            case RelationalStoreValueType.Integer(v) =>
                if (v != 18) {
                    @Expect(false)
                }
            case _ => return
        }
        match (map["SALARY"]) {
            case RelationalStoreValueType.Double(v) =>
                if (v != 100.5) {
                    @Expect(false)
                }
            case _ => return
        }
        match (map["CODES"]) {
            case RelationalStoreValueType.Integer(v) =>
                if (v != 1) {
                    @Expect(false)
                }
            case _ => return
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3400
     * @tc.name      : test_on
     * @tc.desc      : test relational_store on
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on() {
        let rdbStore = store.getOrThrow()
        let testCallback1 = TestCallback({=> tag++})
        let testCallback2 = TestCallback({=> tag--})
        try {
            rdbStore.on("", false, testCallback1)
            @Expect(false)
        } catch (_: BusinessException) {
        }
        rdbStore.on("PRINT", false, testCallback1)
        rdbStore.on("PRINT", false, testCallback1)
        rdbStore.on("PRINT", false, testCallback2)
        rdbStore.off("PRINT", false)
        rdbStore.off("PRINT", false)
        rdbStore.emit("PRINT")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3500
     * @tc.name      : test_off_unregistered
     * @tc.desc      : test relational_store off
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_unregistered() {
        let rdbStore = store.getOrThrow()
        let testCallback1 = TestCallback({=>})
        rdbStore.off("unregistered", false)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3600
     * @tc.name      : test_emit
     * @tc.desc      : test relational_store emit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_emit() {
        let rdbStore = store.getOrThrow()
        let testCallback1 = TestCallback({=> tag++})
        let testCallback2 = TestCallback({=> tag--})
        try {
            rdbStore.on("", false, testCallback1)
            @Expect(false)
        } catch (_: BusinessException) {}
        try {
            rdbStore.on("PRINT", false, testCallback1)
            rdbStore.on("PRINT", false, testCallback1)
            rdbStore.on("PRINT", false, testCallback2)
            @Expect(false)
        } catch (_: BusinessException) {}
        try {
            rdbStore.emit("1")
            @Expect(false)
        } catch (_: BusinessException) {}
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3700
     * @tc.name      : test_distinct
     * @tc.desc      : test relational_store distinct
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_distinct() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        let exceptionPredicates = RdbPredicates("EMPLOYEE")
        try {
            exceptionPredicates.distinct()
            @Expect(false)
        } catch (_: BusinessException) {}
        predicates.equalTo("AGE", RelationalStoreValueType.Integer(18))
        let resultSet = rdbStore.query(predicates, columns: ["AGE"])
        @Expect(resultSet.rowCount, 2)
        let predicates2 = RdbPredicates("EMPLOYEE")
        predicates2
            .equalTo("AGE", RelationalStoreValueType.Integer(18))
            .distinct()
        let resultSet2 = rdbStore.query(predicates2, columns: ["AGE"])
        @Expect(resultSet2.rowCount, 1)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3800
     * @tc.name      : test_update
     * @tc.desc      : test relational_store update
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_update() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.`inValues`("NAME", [RelationalStoreValueType.StringValue("Peter")])
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("NAME", RelationalStoreValueType.StringValue("P"))
        values.add("AGE", RelationalStoreValueType.Integer(88))
        values.add("SALARY", RelationalStoreValueType.Double(9999.513))
        rdbStore.update(values, predicates)
        let resultSet = rdbStore.query(
            RdbPredicates("EMPLOYEE").`inValues`("NAME", [RelationalStoreValueType.StringValue("P")]),
            columns: ["ID", "NAME", "AGE", "SALARY"])
        @Expect(resultSet.goToNextRow())
        @Expect(resultSet.getString(resultSet.getColumnIndex("NAME")), "P")
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_3900
     * @tc.name      : test_resultSet
     * @tc.desc      : test relational_store resultSet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_resultSet() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.columnNames, ["ID", "NAME", "AGE", "SALARY" ,"CODES"])
        @Expect(resultSet.columnCount, 5)
        @Expect(resultSet.rowCount, 3)
        @Expect(resultSet.rowIndex, -1)
        @Expect(resultSet.isAtFirstRow, false)
        @Expect(resultSet.isStarted, false)
        resultSet.goToNextRow()
        @Expect(resultSet.rowIndex, 0)
        @Expect(resultSet.isAtFirstRow, true)
        @Expect(resultSet.isStarted, true)
        @Expect(resultSet.isAtLastRow, false)
        @Expect(resultSet.isEnded, false)
        @Expect(resultSet.goTo(2), true)
        @Expect(resultSet.isAtLastRow, true)
        @Expect(resultSet.isEnded, false)
        @Expect(resultSet.isClosed, false)
        resultSet.close()
        @Expect(resultSet.isClosed, true)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_4000
     * @tc.name      : test_batchInsert
     * @tc.desc      : test relational_store batchInsert
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_batchInsert() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.rowCount, 3)
        var v1 = HashMap<String, RelationalStoreValueType>()
        v1.add("ID", RelationalStoreValueType.Integer(4))
        v1.add("NAME", RelationalStoreValueType.StringValue("Bob"))
        v1.add("AGE", RelationalStoreValueType.Integer(18))
        v1.add("SALARY", RelationalStoreValueType.Double(100.5))
        v1.add("CODES", RelationalStoreValueType.Boolean(true))
        let v2 = HashMap<String, RelationalStoreValueType>()
        v2.add("ID", RelationalStoreValueType.Integer(5))
        v2.add("NAME", RelationalStoreValueType.StringValue("Jack"))
        v2.add("AGE", RelationalStoreValueType.Integer(18))
        v2.add("SALARY", RelationalStoreValueType.Double(1000.5))
        v2.add("CODES", RelationalStoreValueType.Boolean(false))
        try {
            rdbStore.batchInsert("", [v1, v2])
            @Expect(false)
        } catch (_: BusinessException) {}
        try {
            rdbStore.batchInsert("112233", [v1, v2])
            @Expect(false)
        } catch (_: BusinessException) {}
        rdbStore.batchInsert("EMPLOYEE", [])
        rdbStore.batchInsert("EMPLOYEE", [v1, v2])
        let resultSet2 = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet2.rowCount, 5)
        let predicates2 = RdbPredicates("EMPLOYEE").greaterThanOrEqualTo("ID", RelationalStoreValueType.Integer(4))
        rdbStore.delete(predicates2)
        let resultSet3 = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet3.rowCount, 3)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_4100
     * @tc.name      : test_goto
     * @tc.desc      : test relational_store goto
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_goto() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByAsc("SALARY")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        try {
            resultSet.isColumnNull(-1)
            @Expect(false)
        } catch (_: BusinessException) {}
        try {
            resultSet.getColumnName(-1)
            @Expect(false)
        } catch (_: BusinessException) {}
        try {
            resultSet.getDouble(-1)
            @Expect(false)
        } catch (_: BusinessException) {}
        @Expect(resultSet.goToRow(0), true)
        @Expect(resultSet.getDouble(3), 100.5)
        @Expect(resultSet.goToLastRow(), true)
        @Expect(resultSet.rowIndex, 2)
        @Expect(resultSet.getDouble(3), 10000.5)
        @Expect(resultSet.getColumnName(3), "SALARY")
        @Expect(resultSet.isColumnNull(3), false)
        @Expect(resultSet.isColumnNull(2), true)
        @Expect(resultSet.goToFirstRow(), true)
        @Expect(resultSet.rowIndex, 0)
        @Expect(resultSet.goToLastRow(), true)
        @Expect(resultSet.goToPreviousRow(), true)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_4200
     * @tc.name      : test_get
     * @tc.desc      : test relational_store get
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        predicates.orderByAsc("SALARY")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        @Expect(resultSet.goToFirstRow(), true)
        @Expect(resultSet.rowIndex, 0)
        @Expect(resultSet.getLong(0), 1)
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getLong(2), 18)
        @Expect(resultSet.getDouble(3), 100.5)
        @Expect(resultSet.getLong(4), 1)
        rdbStore.executeSql(
            "CREATE TABLE DATA(ID int NOT NULL, NAME Uint8Array NOT NULL, INFO Asset, INFOS Assets, PRIMARY KEY (Id))")
        let arr: Array<UInt8> = [1, 2, 3]
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.Uint8Array(arr))
        values.add("INFO", RelationalStoreValueType.AssetEnum(Asset("info1", "uri1", "path1", "0:00", "8:00", "100MB")))
        values.add(
            "INFOS",
            RelationalStoreValueType.AssetsEnum(
                [Asset("info2", "uri2", "path2", "1:00", "9:00", "200MB"),
                    Asset("info3", "uri3", "path3", "2:00", "10:00", "300MB")])
        )
        rdbStore.insert("DATA", values)
        let predicates2 = RdbPredicates("DATA")
        let resultSet2 = rdbStore.query(predicates2, columns: ["ID", "NAME", "INFO", "INFOS"])
        @Expect(resultSet2.goToFirstRow(), true)
        @Expect(resultSet2.getLong(resultSet2.getColumnIndex("ID")), 1)
        @Expect(resultSet2.getBlob(resultSet2.getColumnIndex("NAME")), arr)
        @Expect(resultSet2.getAsset(resultSet2.getColumnIndex("INFO")).name, "info1")
        @Expect(resultSet2.getAssets(resultSet2.getColumnIndex("INFOS"))[0].name, "info2")
        try {
            resultSet2.getBlob(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
        }
        try {
            resultSet2.getLong(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
        }
        try {
            resultSet2.getAsset(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
        }
        try {
            resultSet2.getAssets(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
        }
        try {
            resultSet2.getString(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800013)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_4300
     * @tc.name      : test_executeSql
     * @tc.desc      : test relational_store executeSql
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_executeSql() {
        let rdbStore = store.getOrThrow()
        try {
            rdbStore.executeSql("")
            @Expect(false)
        } catch (_: BusinessException) {
        }
        try {
            rdbStore.executeSql("123abc")
            @Expect(false)
        } catch (_: BusinessException) {
        }
        try {
            let sql = "CREATE TABLE DATA1(ID int NOT NULL, NAME Uint8Array NOT NULL, INFO Asset, INFOS Assets, PRIMARY KEY (?))"
            rdbStore.executeSql(sql, bindArgs: [RelationalStoreValueType.StringValue("Id")])
            @Expect(false)
        } catch (_: BusinessException) {
        }
        try {
            rdbStore.executeSql("", bindArgs: [RelationalStoreValueType.StringValue("Id")])
            @Expect(false)
        } catch (_: BusinessException) {
            println("catch BusinessException here")
        }
        try {
            rdbStore.executeSql("123123", bindArgs: [RelationalStoreValueType.StringValue("123")])
            @Expect(false)
        } catch (_: BusinessException) {
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_4400
     * @tc.name      : test_insertExceptionBr
     * @tc.desc      : test relational_store add
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_insertExceptionBr() {
        let rdbStore = store.getOrThrow()
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Rain"))
        values.add("AGE", RelationalStoreValueType.Integer(18))
        try {
            rdbStore.insert("", values)
            @Expect(false)
        } catch (_: BusinessException) {
        }
        try {
            rdbStore.insert("", values, conflict: ConflictResolution.OnConflictNone)
            @Expect(false)
        } catch (_: BusinessException) {
        }
        try {
            rdbStore.insert("112233", values, conflict: ConflictResolution.OnConflictNone)
            @Expect(false)
        } catch (_: BusinessException) {
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_5600
     * @tc.name      : test_indexedBy
     * @tc.desc      : test relational_store indexedBy
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_indexedBy() {
        let rdbStore = store.getOrThrow()
        rdbStore.executeSql("CREATE INDEX SALARY_INDEX ON EMPLOYEE(SALARY)")
        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "AGE", "SALARY", "CODES"])
        resultSet.goToFirstRow()
        @Expect(resultSet.getDouble(resultSet.getColumnIndex("SALARY")), 100.5)
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_5900
     * @tc.name      : test_orderByAsc_exception
     * @tc.desc      : test relational_store orderByAsc
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_orderByAsc_exception() {
        let rdbStore = store.getOrThrow()
        let predicates = RdbPredicates("EMPLOYEE")
        try {
            predicates.orderByAsc("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_relational_store_Test_relational_store_6000
     * @tc.name      : test_getColumnIndex_exception
     * @tc.desc      : test relational_store getColumnIndex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getColumnIndex_exception() {
        try {
            let rdbStore = store.getOrThrow()
            var resultSet = rdbStore.querySql("SELECT * FROM EMPLOYEE WHERE NAME = 'Peter'")
            resultSet.getColumnIndex("")
            @Expect(resultSet.getColumnIndex("123"), -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    func expectBusinessException(errCode: Int32, f: () -> Unit) {
        try {
            f()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, errCode)
        }
    }
}
