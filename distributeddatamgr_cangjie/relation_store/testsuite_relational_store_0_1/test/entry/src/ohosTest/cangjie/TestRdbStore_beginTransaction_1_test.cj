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
import std.core.*
import std.collection.HashMap
import ohos.app.ability.ui_ability.UIAbilityContext
import ohos_app_cangjie_entry.Global

@Test
class TestRdbStore_beginTransaction_1 {
  
    /*
     * @tc.number    : TestRdbStore_beginTransaction_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }


    /*
     * @tc.number    : TestRdbStore_beginTransaction_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_beginTransaction_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_beginTransaction_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "cangjietest", "", "testisColumnNull the result set failed")
        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            let rdbStore1 = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
        @Expect(false)            
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 ends.")
    }

  
    /*
     * @tc.number    : TestRdbStore_beginTransaction_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)       
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    

    /*
     * @tc.number    : TestRdbStore_beginTransaction_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }


    /*
     * @tc.number    : TestRdbStore_beginTransaction_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_beginTransaction_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

  

    /*
     * @tc.number    : TestRdbStore_beginTransaction_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

  

    /*
     * @tc.number    : TestRdbStore_beginTransaction_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: true,
                tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
        Hilog.info(0u32, "cangjietest", "", "define local variable values")
        let values = HashMap<String, RelationalStoreValueType>()
        Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)    
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 ends.")
    }

    

    /*
     * @tc.number    : TestRdbStore_beginTransaction_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
        Hilog.info(0u32, "cangjietest", "", "define local variable values")
        let values = HashMap<String, RelationalStoreValueType>()
        Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 ends.")
    }

 

    /*
     * @tc.number    : TestRdbStore_beginTransaction_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
        Hilog.info(0u32, "cangjietest", "", "define local variable values")
        let values = HashMap<String, RelationalStoreValueType>()
        Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 ends.")
    }

  

    /*
     * @tc.number    : TestRdbStore_beginTransaction_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
            StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                isReadOnly: true, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
        Hilog.info(0u32, "cangjietest", "", "define local variable values")
        let values = HashMap<String, RelationalStoreValueType>()
        Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 ends.")
    }

  
    /*
     * @tc.number    : TestRdbStore_beginTransaction_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_beginTransaction_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 ends.")
    }

   
    /*
     * @tc.number    : TestRdbStore_beginTransaction_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 ends.")
    }

    

    /*
     * @tc.number    : TestRdbStore_beginTransaction_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 ends.")
    }

    
    /*
     * @tc.number    : TestRdbStore_beginTransaction_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 ends.")
    }


    /*
     * @tc.number    : TestRdbStore_beginTransaction_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_92 ends.")
    }

   

    /*
     * @tc.number    : TestRdbStore_beginTransaction_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: [], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_96 ends.")
    }

   
    /*
     * @tc.number    : TestRdbStore_beginTransaction_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : "Lisa" Begin a transaction before executing the SQL statement. This interface does not support usage in multi-process or multi-threaded environments.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")

        try {
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable values")
            let values = HashMap<String, RelationalStoreValueType>()
            Hilog.info(0u32, "cangjietest", "", "commit failed")
            rdbStore.beginTransaction()
            values.add("ID", RelationalStoreValueType.Integer(1i64))
            values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
            rdbStore.insert("THING", values)
            rdbStore.insert("THING", values)
            rdbStore.commit()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_100 ends.")
    }
}
