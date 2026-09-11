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

import ohos.ark_interop.*
import ohos.callback_invoke.*
import ohos.business_exception.*

var hasCallBackRun = false


class CallBack {
    public CallBack(let callBack: (String) -> Unit) {}
    public func invoke(err: ?BusinessException, arg: String): Unit {
        this.callBack(arg)
    }
}
