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
import std.collection.{HashMap}

@Test
class Test_asset_13 {
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
    let arr: Array<UInt8> = [255, 0, 30, 31, 32]
    let asset1: Asset = Asset("name1", "uri1", "path1", "createTime1", "modifyTime1", "size1")
    let asset2: Asset = Asset("name2", "uri2", "path2", "createTime2", "modifyTime2", "size2",
        status: AssetStatus.AssetNormal)
    let asset3: Asset = Asset("name3", "uri3", "path3", "createTime3", "modifyTime3", "size3",
        status: AssetStatus.AssetInsert)
    let asset4: Asset = Asset("name4", "uri4", "path4", "createTime4", "modifyTime4", "size4",
        status: AssetStatus.AssetUpdate)
    let asset5: Asset = Asset("name5", "uri5", "path5", "createTime5", "modifyTime5", "size5",
        status: AssetStatus.AssetDelete)
    let asset6: Asset = Asset("name6", "uri6", "path6", "createTime6", "modifyTime6", "size6",
        status: AssetStatus.AssetAbnormal)
    let asset7: Asset = Asset("name7", "uri7", "path7", "createTime7", "modifyTime7", "size7",
        status: AssetStatus.AssetDownloading)
    public override func beforeEach(): Unit {
        rdbStore.executeSql(
            "CREATE TABLE EMPLOYEE(ID int NOT NULL, NAME varchar(255) NOT NULL, ARR Uint8Array, ASS Asset NOT NULL, ASSS Assets NOT NULL, PRIMARY KEY (Id))"
        )
    }
    public override func afterEach(): Unit {
        rdbStore.executeSql("DROP TABLE EMPLOYEE")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_asset_13_0100
     * @tc.name      : test_asset_01
     * @tc.desc      : test RelationStore test_asset_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_asset_01(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values.add("ASS", RelationalStoreValueType.AssetEnum(asset1))
        values.add("ASSS", RelationalStoreValueType.AssetsEnum([asset1, asset2]))
        rdbStore.insert("EMPLOYEE", values)

        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(2))
        values1.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values1.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values1.add("ASS", RelationalStoreValueType.AssetEnum(asset2))
        values1.add("ASSS", RelationalStoreValueType.AssetsEnum([asset2, asset3, asset4]))
        rdbStore.insert("EMPLOYEE", values1)

        var values2 = HashMap<String, RelationalStoreValueType>()
        values2.add("ID", RelationalStoreValueType.Integer(3))
        values2.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values2.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values2.add("ASS", RelationalStoreValueType.AssetEnum(asset3))
        values2.add("ASSS", RelationalStoreValueType.AssetsEnum([asset3, asset4, asset5, asset6, asset7]))
        rdbStore.insert("EMPLOYEE", values2)

        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "ARR", "ASS", "ASSS"])
        @Expect(resultSet.rowCount, 3)
        resultSet.goToFirstRow()
        @Expect(resultSet.getString(0), "1")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getBlob(2), [255u8, 0, 30, 31, 32])
        @Expect(resultSet.getAsset(3).name, "name1")
        @Expect(resultSet.getAsset(3).uri, "uri1")
        @Expect(resultSet.getAsset(3).path, "path1")
        @Expect(resultSet.getAsset(3).createTime, "createTime1")
        @Expect(resultSet.getAsset(3).modifyTime, "modifyTime1")
        @Expect(resultSet.getAsset(3).size, "size1")
        @Expect(resultSet.getAssets(4)[0].name, "name1")
        @Expect(resultSet.getAssets(4)[0].uri, "uri1")
        @Expect(resultSet.getAssets(4)[0].path, "path1")
        @Expect(resultSet.getAssets(4)[0].createTime, "createTime1")
        @Expect(resultSet.getAssets(4)[0].modifyTime, "modifyTime1")
        @Expect(resultSet.getAssets(4)[0].size, "size1")
        @Expect(resultSet.getAssets(4)[1].name, "name2")
        @Expect(resultSet.getAssets(4)[1].uri, "uri2")
        @Expect(resultSet.getAssets(4)[1].path, "path2")
        @Expect(resultSet.getAssets(4)[1].createTime, "createTime2")
        @Expect(resultSet.getAssets(4)[1].modifyTime, "modifyTime2")
        @Expect(resultSet.getAssets(4)[1].size, "size2")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_asset_13_0200
     * @tc.name      : test_asset_02
     * @tc.desc      : test RelationStore test_asset_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_asset_02(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values.add("ASS", RelationalStoreValueType.AssetEnum(asset1))
        values.add("ASSS", RelationalStoreValueType.AssetsEnum([asset1, asset2]))
        rdbStore.insert("EMPLOYEE", values)

        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(2))
        values1.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values1.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values1.add("ASS", RelationalStoreValueType.AssetEnum(asset2))
        values1.add("ASSS", RelationalStoreValueType.AssetsEnum([asset2, asset3, asset4]))
        rdbStore.insert("EMPLOYEE", values1)

        var values2 = HashMap<String, RelationalStoreValueType>()
        values2.add("ID", RelationalStoreValueType.Integer(3))
        values2.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values2.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values2.add("ASS", RelationalStoreValueType.AssetEnum(asset3))
        values2.add("ASSS", RelationalStoreValueType.AssetsEnum([asset3, asset4, asset5, asset6]))
        rdbStore.insert("EMPLOYEE", values2)

        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "ARR", "ASS", "ASSS"])
        @Expect(resultSet.rowCount, 3)
        resultSet.goToRow(1)
        @Expect(resultSet.getString(0), "2")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getBlob(2), [255u8, 0, 30, 31, 32])
        @Expect(resultSet.getAsset(3).name, "name2")
        @Expect(resultSet.getAsset(3).uri, "uri2")
        @Expect(resultSet.getAsset(3).path, "path2")
        @Expect(resultSet.getAsset(3).createTime, "createTime2")
        @Expect(resultSet.getAsset(3).modifyTime, "modifyTime2")
        @Expect(resultSet.getAsset(3).size, "size2")
        @Expect(resultSet.getAssets(4)[0].name, "name2")
        @Expect(resultSet.getAssets(4)[0].uri, "uri2")
        @Expect(resultSet.getAssets(4)[0].path, "path2")
        @Expect(resultSet.getAssets(4)[0].createTime, "createTime2")
        @Expect(resultSet.getAssets(4)[0].modifyTime, "modifyTime2")
        @Expect(resultSet.getAssets(4)[0].size, "size2")
        @Expect(resultSet.getAssets(4)[1].name, "name3")
        @Expect(resultSet.getAssets(4)[1].uri, "uri3")
        @Expect(resultSet.getAssets(4)[1].path, "path3")
        @Expect(resultSet.getAssets(4)[1].createTime, "createTime3")
        @Expect(resultSet.getAssets(4)[1].modifyTime, "modifyTime3")
        @Expect(resultSet.getAssets(4)[1].size, "size3")
        @Expect(resultSet.getAssets(4)[2].name, "name4")
        @Expect(resultSet.getAssets(4)[2].uri, "uri4")
        @Expect(resultSet.getAssets(4)[2].path, "path4")
        @Expect(resultSet.getAssets(4)[2].createTime, "createTime4")
        @Expect(resultSet.getAssets(4)[2].modifyTime, "modifyTime4")
        @Expect(resultSet.getAssets(4)[2].size, "size4")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_asset_13_0300
     * @tc.name      : test_asset_03
     * @tc.desc      : test RelationStore test_asset_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_asset_03(): Unit {
        var values = HashMap<String, RelationalStoreValueType>()
        values.add("ID", RelationalStoreValueType.Integer(1))
        values.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values.add("ASS", RelationalStoreValueType.AssetEnum(asset1))
        values.add("ASSS", RelationalStoreValueType.AssetsEnum([asset1, asset2]))
        rdbStore.insert("EMPLOYEE", values)

        var values1 = HashMap<String, RelationalStoreValueType>()
        values1.add("ID", RelationalStoreValueType.Integer(2))
        values1.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values1.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values1.add("ASS", RelationalStoreValueType.AssetEnum(asset2))
        values1.add("ASSS", RelationalStoreValueType.AssetsEnum([asset2, asset3, asset4]))
        rdbStore.insert("EMPLOYEE", values1)

        var values2 = HashMap<String, RelationalStoreValueType>()
        values2.add("ID", RelationalStoreValueType.Integer(3))
        values2.add("NAME", RelationalStoreValueType.StringValue("Lisa"))
        values2.add("ARR", RelationalStoreValueType.Uint8Array(arr))
        values2.add("ASS", RelationalStoreValueType.AssetEnum(asset3))
        values2.add("ASSS", RelationalStoreValueType.AssetsEnum([asset3, asset4, asset5, asset6, asset7]))
        rdbStore.insert("EMPLOYEE", values2)

        let predicates = RdbPredicates("EMPLOYEE")
        let resultSet = rdbStore.query(predicates, columns: ["ID", "NAME", "ARR", "ASS", "ASSS"])
        @Expect(resultSet.rowCount, 3)
        resultSet.goToLastRow()
        @Expect(resultSet.getString(0), "3")
        @Expect(resultSet.getString(1), "Lisa")
        @Expect(resultSet.getAsset(3).name, "name3")
        @Expect(resultSet.getAsset(3).uri, "uri3")
        @Expect(resultSet.getAsset(3).path, "path3")
        @Expect(resultSet.getAsset(3).createTime, "createTime3")
        @Expect(resultSet.getAsset(3).modifyTime, "modifyTime3")
        @Expect(resultSet.getAsset(3).size, "size3")
        @Expect(resultSet.getAssets(4)[0].name, "name3")
        @Expect(resultSet.getAssets(4)[0].uri, "uri3")
        @Expect(resultSet.getAssets(4)[0].path, "path3")
        @Expect(resultSet.getAssets(4)[0].createTime, "createTime3")
        @Expect(resultSet.getAssets(4)[0].modifyTime, "modifyTime3")
        @Expect(resultSet.getAssets(4)[0].size, "size3")
        @Expect(resultSet.getAssets(4)[1].name, "name4")
        @Expect(resultSet.getAssets(4)[1].uri, "uri4")
        @Expect(resultSet.getAssets(4)[1].path, "path4")
        @Expect(resultSet.getAssets(4)[1].createTime, "createTime4")
        @Expect(resultSet.getAssets(4)[1].modifyTime, "modifyTime4")
        @Expect(resultSet.getAssets(4)[1].size, "size4")
        @Expect(resultSet.getAssets(4)[2].name, "name5")
        @Expect(resultSet.getAssets(4)[2].uri, "uri5")
        @Expect(resultSet.getAssets(4)[2].path, "path5")
        @Expect(resultSet.getAssets(4)[2].createTime, "createTime5")
        @Expect(resultSet.getAssets(4)[2].modifyTime, "modifyTime5")
        @Expect(resultSet.getAssets(4)[2].size, "size5")
        @Expect(resultSet.getAssets(4)[3].name, "name6")
        @Expect(resultSet.getAssets(4)[3].uri, "uri6")
        @Expect(resultSet.getAssets(4)[3].path, "path6")
        @Expect(resultSet.getAssets(4)[3].createTime, "createTime6")
        @Expect(resultSet.getAssets(4)[3].modifyTime, "modifyTime6")
        @Expect(resultSet.getAssets(4)[3].size, "size6")
        @Expect(resultSet.getAssets(4)[4].name, "name7")
        @Expect(resultSet.getAssets(4)[4].uri, "uri7")
        @Expect(resultSet.getAssets(4)[4].path, "path7")
        @Expect(resultSet.getAssets(4)[4].createTime, "createTime7")
        @Expect(resultSet.getAssets(4)[4].modifyTime, "modifyTime7")
        @Expect(resultSet.getAssets(4)[4].size, "size7")
    }
}
