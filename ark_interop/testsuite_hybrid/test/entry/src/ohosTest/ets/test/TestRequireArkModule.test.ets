/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import { describe, it, expect } from '@ohos/hypium';
import {
    testRequireArkModulePubSys,
    testRequireArkModuleHmsNapi,
    testRequireArkModuleHmsHsp,
    testRequireArkModulePubSysKit,
    testRequireArkModuleLoadFail
} from 'libohos_app_cangjie_entry.so';

export default function testRequireArkModule() {
    describe('TestRequireArkModule', () => {
        it('testPubSys', 0, () => {
            expect(testRequireArkModulePubSys()).assertTrue();
        })
        it('testHmsNapi', 0, () => {
            expect(testRequireArkModuleHmsNapi()).assertTrue();
        })
        it('testHmsHsp', 0, () => {
            expect(testRequireArkModuleHmsHsp()).assertTrue();
        })
        it('testPubSysKit', 0, () => {
            expect(testRequireArkModulePubSysKit()).assertTrue();
        })
        it('testLoadFail', 0, () => {
            expect(testRequireArkModuleLoadFail('localhar')).assertTrue();
            expect(testRequireArkModuleLoadFail('localhsp')).assertTrue();
        })
        it('failLoadSys', 0, () => {
            expect(testRequireArkModuleLoadFail('@ohos.neverExist')).assertTrue();
            expect(testRequireArkModuleLoadFail('@hms.neverExist')).assertTrue();
        })
    })
}
