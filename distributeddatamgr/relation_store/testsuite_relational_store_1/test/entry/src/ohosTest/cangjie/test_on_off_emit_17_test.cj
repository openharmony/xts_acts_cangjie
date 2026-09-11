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
import ohos.data.relational_store.*
import ohos.data.relational_store.RelationalStoreSecurityLevel
import ohos.data.relational_store.RelationalStoreValueType as RelationalStoreValueType
import std.math.*
import ohos.callback_invoke.{Callback0Argument}
import std.collection.{HashMap}
import ohos.business_exception.{BusinessException}
import ohos.callback_invoke.{CallbackObject, Callback0Argument}
import kit.PerformanceAnalysisKit.Hilog

var sum = 0
var sum1 = 0

class CallBack <: Callback0Argument {
    public init() {
    }
    public func invoke(err: ?BusinessException): Unit {
        sum += 1
        Hilog.info(0u32, "cangjietest", "", "callback invoke.")
    }
}

class CallBack1 <: Callback0Argument {
    public init() {
    }
    public func invoke(err: ?BusinessException): Unit {
        sum1 += 1
        Hilog.info(0u32, "cangjietest", "", "callback invoke.")
    }
}

@Test
class Test_on_off_emit_17 {
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
        sum = 0
        sum1 = 0
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, AGE int, SALARY float NOT NULL, CODES Bit NOT NULL, PRIMARY KEY (Id))"
        )
        for (i in 101..201) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("仓颉"))
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
        for (i in Int64.Max - 99..=Int64.Max) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME", RelationalStoreValueType.StringValue("bcdefg1231978287"))
            values.add("AGE", RelationalStoreValueType.Integer(-i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(false))
            rdbStore.insert("EMPLOYEE", values)
        }
        for (i in Int64.Min..Int64.Min + 100) {
            var values = HashMap<String, RelationalStoreValueType>()
            values.add("ID", RelationalStoreValueType.Integer(i))
            values.add("NAME",
                RelationalStoreValueType.StringValue(
                    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"))
            values.add("AGE", RelationalStoreValueType.Integer(i))
            values.add("SALARY", RelationalStoreValueType.Double(Float64(i)))
            values.add("CODES", RelationalStoreValueType.Boolean(true))
            rdbStore.insert("EMPLOYEE", values)
        }
    }

    public override func afterEach(): Unit {
        rdbStore.off("zps", true)
        rdbStore.off("cangjie", true)
        rdbStore.off("cangjie", false)
        rdbStore.executeSql("DROP TABLE EMPLOYEE")  
    }
    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_on_off_emit_17_0100
     * @tc.name      : test_on_01
     * @tc.desc      : test RelationStore test_on_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_01(): Unit {
        let callBack = CallBack()
        rdbStore.on("zps", true, callBack)
        rdbStore.emit("PRINT")
        @Expect(sum, 0)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_on_off_emit_17_0200
     * @tc.name      : test_on_02
     * @tc.desc      : test RelationStore test_on_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_02(): Unit {
        let callBack = CallBack()
        rdbStore.on("zps", true, callBack)
        rdbStore.emit("zps")
        @Expect(sum, 1)

    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_on_off_emit_17_0300
     * @tc.name      : test_emit_03
     * @tc.desc      : test RelationStore test_emit_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_emit_03(): Unit {
        let callBack = CallBack1()
        rdbStore.on("cangjie", false, callBack)
        rdbStore.emit("cangjie")
        @Expect(sum1, 1)
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_on_off_emit_17_0400
     * @tc.name      : test_off_04
     * @tc.desc      : test RelationStore test_off_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_04(): Unit {
        let callBack = CallBack()
        rdbStore.on("cangjie", true, callBack)
        rdbStore.off("cangjie", true)
        rdbStore.emit("cangjie")
        @Expect(sum, 0)
    }
}
