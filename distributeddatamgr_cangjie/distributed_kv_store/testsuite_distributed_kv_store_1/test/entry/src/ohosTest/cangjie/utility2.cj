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
import ohos.data.distributed_kv_store.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}

public func checkExceptionInfo(actualException: BusinessException, expectedException: KVStoreError, message!: String = ""):Unit {
    @Expect(actualException.code, expectedException.code)
    @Expect(actualException.message, expectedException.message)
    Hilog.error(0, "cangjietest","checkException",message)
}

public class Comment {
    public func assertThrows(expectedException: KVStoreError, f: () -> Unit): Unit {
        try {
            f()
        } catch (actualException: BusinessException) {
            @Expect(actualException.code, expectedException.code)
            @Expect(actualException.message, expectedException.message)
        }
    }
}

public func comment(_: String): Comment {
    Comment()
}

public enum KVStoreError {
    | KVManagerInvalidParameter(String)
    | KVManagerSystemAPIPermissionFailed(String)
    | KVManagerOverMaxLimits(String)
    | KVManagerOpenExistedDatabaseWithChangedOptions(String)
    | KVManagerDatabaseCorrupted(String)
    | KVManagerDataNotFound(String)
    | KVManagerAccessClosedDatabase(String)
    | KVStoreUnknowError(String)
    | KVStoreInvalidParameter(String)
    | KVStoreSystemAPIPermissionFailed(String)
    | KVStoreOverMaxLimits(String)
    | KVStoreOpenExistedDatabaseWithChangedOptions(String)
    | KVStoreDatabaseCorrupted(String)
    | KVStoreDataNotFound(String)
    | KVStoreAccessClosedDatabase(String)

    public prop code: Int32 {
        get() {
            match (this) {
                case KVManagerInvalidParameter(_) => 401
                case KVManagerSystemAPIPermissionFailed(_) => 202
                case KVManagerOverMaxLimits(_) => 15100001
                case KVManagerOpenExistedDatabaseWithChangedOptions(_) => 15100002
                case KVManagerDatabaseCorrupted(_) => 15100003
                case KVManagerDataNotFound(_) => 15100004
                case KVManagerAccessClosedDatabase(_) => 15100005
                case KVStoreUnknowError(_) => 27459584
                case KVStoreInvalidParameter(_) => 401
                case KVStoreSystemAPIPermissionFailed(_) => 202
                case KVStoreOverMaxLimits(_) => 15100001
                case KVStoreOpenExistedDatabaseWithChangedOptions(_) => 15100002
                case KVStoreDatabaseCorrupted(_) => 15100003
                case KVStoreDataNotFound(_) => 15100004
                case KVStoreAccessClosedDatabase(_) => 15100005
            }
        }
    }
    public prop message: String {
        get() {
            match (this) {
                case KVManagerInvalidParameter(functionName) => "KVManager ${functionName} failed: Parameter error. Parameter verification failed."
                case KVManagerSystemAPIPermissionFailed(functionName) => "KVManager ${functionName} failed: Permission verification failed. A non-system application calls a system API."
                case KVManagerOverMaxLimits(functionName) => "KVManager ${functionName} failed: Over max limits."
                case KVManagerOpenExistedDatabaseWithChangedOptions(functionName) => "KVManager ${functionName} failed: Open existed database with changed options."
                case KVManagerDatabaseCorrupted(functionName) => "KVManager ${functionName} failed: Database corrupted."
                case KVManagerDataNotFound(functionName) => "KVManager ${functionName} failed: Not found."
                case KVManagerAccessClosedDatabase(functionName) => "KVManager ${functionName} failed: Database or result set already closed."
                case KVStoreUnknowError(functionName) => "KVStore ${functionName} failed: Unknown error code 27459584" 
                case KVStoreInvalidParameter(functionName) => "KVStore ${functionName} failed: Parameter error. Parameter verification failed."
                case KVStoreSystemAPIPermissionFailed(functionName) => "KVStore ${functionName} failed: Permission verification failed. A non-system application calls a system API."
                case KVStoreOverMaxLimits(functionName) => "KVStore ${functionName} failed: Over max limits."
                case KVStoreOpenExistedDatabaseWithChangedOptions(functionName) => "KVStore ${functionName} failed: Open existed database with changed options."
                case KVStoreDatabaseCorrupted(functionName) => "KVStore ${functionName} failed: Database corrupted."
                case KVStoreDataNotFound(functionName) => "KVStore ${functionName} failed: Not found."
                case KVStoreAccessClosedDatabase(functionName) => "KVStore ${functionName} failed: Database or result set already closed."
            }
        }
    }
}
