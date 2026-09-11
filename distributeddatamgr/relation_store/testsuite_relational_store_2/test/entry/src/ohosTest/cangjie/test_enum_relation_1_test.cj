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
import ohos.business_exception.BusinessException

public func stringifierRelationalStoreSecurityLevel(relationalstoresecurityLevel: RelationalStoreSecurityLevel): String {
    match(relationalstoresecurityLevel){
        case S1 => "S1"
        case S2 => "S2"
        case S3 => "S3"
        case S4 => "S4"
        case _ =>throw Exception("unsupported enum constructor")

    }  
}
public func stringifierKdfAlgo(kdfalgo: KdfAlgo): String {
    match(kdfalgo){
        case KdfSha1 => "KdfSha1"
        case KdfSha256 => "KdfSha256"
        case KdfSha512 => "KdfSha512"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierHmacAlgo(hmacAlgo: HmacAlgo): String {
    match(hmacAlgo){
        case Sha1 => "Sha1"
        case Sha256 => "Sha256"
        case Sha512 => "Sha512"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierEncryptionAlgo(encryptionalgo: EncryptionAlgo): String {
    match(encryptionalgo){
        case Aes256Gcm => "Aes256Gcm"
        case Aes256Cbc => "Aes256Cbc"
        case _ =>throw Exception("unsupported enum constructor")

    }
} 

public func stringifierTokenizer(tokenizer: Tokenizer): String {
    match(tokenizer){
        case NoneTokenizer => "NoneTokenizer"
        case IcuTokenizer => "IcuTokenizer"
        case CustomeTokenizer => "CustomTokenizer"
        case _ =>throw Exception("unsupported enum constructor")
    }
}

public func stringifierChangeType(changeType: ChangeType): String {
    match(changeType){
        case DataChange => "DataChange"
        case AssetChange  => "AssetChange"

        case _ =>throw Exception("unsupported enum constructor")
    }
}

public func stringifierAssetStatus(assetstatus: AssetStatus): String {
    match(assetstatus){
        case AssetNormal => "AssetNormal"
        case AssetInsert => "AssetInsert"
        case AssetUpdate => "AssetUpdate"
        case AssetDelete => "AssetDelete"
        case AssetAbnormal => "AssetAbnormal"
        case AssetDownloading => "AssetDownloading"
        case _ =>throw Exception("unsupported enum constructor")
    }
}

public func stringifierField(field: Field): String {
    match(field){
        case CursorField => "CursorField"
        case OriginField => "OriginField"
        case DeletedFlagField => "DeletedFlagField"
        case OwnerField => "OwnerField"
        case PrivilegeField => "PrivilegeField"
        case SharingResourceField => "SharingResourceField"
        case _ =>throw Exception("unsupported enum constructor")
    }
}

public func stringifierConflictResolution(conflictResolution: ConflictResolution): String {
    match(conflictResolution){
        case OnConflictNone => "OnConflictNone"
        case OnConflictRollback => "OnConflictRollback"
        case OnConflictAbort => "OnConflictAbort"
        case OnConflictFail => "OnConflictFail"
        case OnConflictIgnore => "OnConflictIgnore"
        case OnConflictReplace => "OnConflictReplace"
        case _ =>throw Exception("unsupported enum constructor")

    }
}


public func stringifierDistributedType(distributedtype: DistributedType): String {
    match(distributedtype){
        case DistributedDevice => "DistributedDevice"
        case DistributedCloud => "DistributedCloud"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierSyncMode(syncmode: SyncMode): String {
    match(syncmode){
        case SyncModePush => "SyncModePush"
        case SyncModePull => "SyncModePull"
        case SyncModeTimeFirst => "SyncModeTimeFirst"
        case SyncModeNativeFirst => "SyncModeNativeFirst"
        case SyncModeCloudFirst => "SyncModeCloudFirst"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierProgress(progress: Progress): String {
    match(progress){
        case SyncBegin => "SyncBegin"
        case SyncInProgress => "SyncInProgress"
        case SyncFinish => "SyncFinish"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierSubscribeType(subscribeType: SubscribeType): String {
    match(subscribeType){
        case SubscribeTypeRemote => "SubscribeTypeRemote"
        case SubscribeTypeCloud => "SubscribeTypeCloud"
        case SubscribeTypeCloudDetails => "SubscribeTypeCloudDetails"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

public func stringifierOrigin(origin: Origin): String {
    match(origin){
        case Local => "Local"
        case Cloud => "Cloud"
        case Remote => "Remote"
        case _ =>throw Exception("unsupported enum constructor")

    }
}

@Test
class test_enum_relation_1 {
    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0100
     * @tc.name      : test_enum_RelationalStoreSecurityLevel
     * @tc.desc      : test RelationStore test_limitas_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_RelationalStoreSecurityLevel() {
        @Expect(stringifierRelationalStoreSecurityLevel(RelationalStoreSecurityLevel.S1), "S1")
        @Expect(stringifierRelationalStoreSecurityLevel(RelationalStoreSecurityLevel.S2), "S2")
        @Expect(stringifierRelationalStoreSecurityLevel(RelationalStoreSecurityLevel.S3), "S3")
        @Expect(stringifierRelationalStoreSecurityLevel(RelationalStoreSecurityLevel.S4), "S4")
        }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0200
     * @tc.name      : test_enum_KdfAlgo
     * @tc.desc      : test RelationStore test_limitas_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_KdfAlgo() {
        @Expect(stringifierKdfAlgo(KdfSha1), "KdfSha1")
        @Expect(stringifierKdfAlgo(KdfSha256), "KdfSha256")
        @Expect(stringifierKdfAlgo(KdfSha512), "KdfSha512")
    }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_HmacAlgo_0300
     * @tc.name      : test_enum_HmacAlgo
     * @tc.desc      : test HmacAlgo enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_HmacAlgo(){
        @Expect(stringifierHmacAlgo(Sha1),"Sha1")
        @Expect(stringifierHmacAlgo(Sha256),"Sha256")
        @Expect(stringifierHmacAlgo(Sha512),"Sha512")
        }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0400
     * @tc.name      : test_enum_EncryptionAlgo
     * @tc.desc      : test RelationStore test_limitas_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_EncryptionAlgo(){
        @Expect(stringifierEncryptionAlgo(Aes256Gcm),"Aes256Gcm")
        @Expect(stringifierEncryptionAlgo(Aes256Cbc),"Aes256Cbc")
        }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0500
     * @tc.name      : test_enum_Tokenizer
     * @tc.desc      : test RelationStore test_limitas_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_Tokenizer(){
        @Expect(stringifierTokenizer(NoneTokenizer),"NoneTokenizer")
        @Expect(stringifierTokenizer(IcuTokenizer),"IcuTokenizer")
        @Expect(stringifierTokenizer(CustomTokenizer), "CustomTokenizer")
}  

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0500
     * @tc.name      : test_enum_ChangeType
     * @tc.desc      : test RelationStore test_limitas_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_ChangeType(){
        @Expect(stringifierChangeType(DataChange), "DataChange")
        @Expect(stringifierChangeType(AssetChange), "AssetChange")
} 

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0500
     * @tc.name      : test_enum_AssetStatus
     * @tc.desc      : test RelationStore test_limitas_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_AssetStatus(){
            @Expect(stringifierAssetStatus(AssetNormal), "AssetNormal")
            @Expect(stringifierAssetStatus(AssetInsert), "AssetInsert")
            @Expect(stringifierAssetStatus(AssetUpdate), "AssetUpdate")
            @Expect(stringifierAssetStatus(AssetDelete), "AssetDelete")
            @Expect(stringifierAssetStatus(AssetAbnormal), "AssetAbnormal")
            @Expect(stringifierAssetStatus(AssetDownloading), "AssetDownloading")
    }

    /*
     * @tc.number    : Sub_Cangjie_RelationStore_Test_limitAs_offsetAs_groupBy_in_notIn_09_0500
     * @tc.name      : test_enum_Field
     * @tc.desc      : test RelationStore test_limitas_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_Field(){
        @Expect(stringifierField(CursorField), "CursorField")
        @Expect(stringifierField(OriginField), "OriginField")
        @Expect(stringifierField(DeletedFlagField), "DeletedFlagField")
        @Expect(stringifierField(OwnerField), "OwnerField")
        @Expect(stringifierField(PrivilegeField), "PrivilegeField")
        @Expect(stringifierField(SharingResourceField), "SharingResourceField")
}

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_ConflictResolution_0600
     * @tc.name      : test_enum_ConflictResolution
     * @tc.desc      : test ConflictResolution enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_ConflictResolution(){
        @Expect(stringifierConflictResolution(OnConflictNone),"OnConflictNone")
        @Expect(stringifierConflictResolution(OnConflictRollback),"OnConflictRollback")
        @Expect(stringifierConflictResolution(OnConflictAbort),"OnConflictAbort")
        @Expect(stringifierConflictResolution(OnConflictFail),"OnConflictFail")
        @Expect(stringifierConflictResolution(OnConflictIgnore),"OnConflictIgnore")
        @Expect(stringifierConflictResolution(OnConflictReplace),"OnConflictReplace")
        }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_DistributedType_0200
     * @tc.name      : test_enum_DistributedType
     * @tc.desc      : test DistributedType enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_DistributedType(){
        @Expect(stringifierDistributedType(DistributedDevice),"DistributedDevice")
        @Expect(stringifierDistributedType(DistributedCloud),"DistributedCloud")
        }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_SyncMode_0500
     * @tc.name      : test_enum_SyncMode
     * @tc.desc      : test SyncMode enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]     
    func test_enum_SyncMode(){
        @Expect(stringifierSyncMode(SyncModePush),"SyncModePush")
        @Expect(stringifierSyncMode(SyncModePull),"SyncModePull")
        @Expect(stringifierSyncMode(SyncModeTimeFirst),"SyncModeTimeFirst")
        @Expect(stringifierSyncMode(SyncModeNativeFirst),"SyncModeNativeFirst")
        @Expect(stringifierSyncMode(SyncModeCloudFirst),"SyncModeCloudFirst")
        }


    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Progress_0300
     * @tc.name      : test_enum_Progress
     * @tc.desc      : test Progress enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]       
    func test_enum_Progress(){
        @Expect(stringifierProgress(SyncBegin),"SyncBegin")
        @Expect(stringifierProgress(SyncInProgress),"SyncInProgress")
        @Expect(stringifierProgress(SyncFinish),"SyncFinish")
        }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_SubscribeType_0300
     * @tc.name      : test_enum_SubscribeType
     * @tc.desc      : test SubscribeType enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_SubscribeType(){
            @Expect(stringifierSubscribeType(SubscribeTypeRemote),"SubscribeTypeRemote")
            @Expect(stringifierSubscribeType(SubscribeTypeCloud),"SubscribeTypeCloud")
            @Expect(stringifierSubscribeType(SubscribeTypeCloudDetails),"SubscribeTypeCloudDetails")
        }

    /*
     * @tc.number    : Sub_Cangjie_Crypto_Test_Origin_0300
     * @tc.name      : test_enum_Origin
     * @tc.desc      : test Origin enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_Origin(){
            @Expect(stringifierOrigin(Local),"Local")
            @Expect(stringifierOrigin(Cloud),"Cloud")
            @Expect(stringifierOrigin(Remote),"Remote")
        }

}
