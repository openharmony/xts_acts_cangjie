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

import ohos.business_exception.BusinessException
internal import kit.UniversalKeystoreKit.*

let genKeyOptionsTest1 = HuksOptions(
    properties: [
        HuksParam(HuksTag.HUKS_TAG_ALGORITHM, HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
        HuksParam(HuksTag.HUKS_TAG_KEY_SIZE, HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
        HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
            HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))
    ]
)

func clean(keyAlias: String) {
    try {
        if (hasKeyItem(keyAlias, HuksOptions())) {
            deleteKeyItem(keyAlias, HuksOptions())
        }
    } catch (e: BusinessException) {
        e.printStackTrace()
    }
}

func generateSimpleKey(keyAlias: String) {
    let options = HuksOptions(
        properties: [HuksParam(HuksTag.HUKS_TAG_ALGORITHM,
                HuksParamValue.Uint32Value(HuksKeyAlg.HUKS_ALG_AES)),
            HuksParam(HuksTag.HUKS_TAG_KEY_SIZE,
                HuksParamValue.Uint32Value(HuksKeySize.HUKS_AES_KEY_SIZE_256)),
            HuksParam(HuksTag.HUKS_TAG_PURPOSE, HuksParamValue.Uint32Value(
                HuksKeyPurpose.HUKS_KEY_PURPOSE_ENCRYPT | HuksKeyPurpose.HUKS_KEY_PURPOSE_DECRYPT))])
    generateKeyItem(keyAlias, options)
}
