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
import ohos.hilog.Hilog
import ohos.element_name.ElementName

@Test
class TestElementName {
    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestElementName_0100
     * @tc.name      : test_element_name_full_params
     * @tc.desc      : Check ElementName constructor with bundleName, abilityName, deviceId and moduleName all provided.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_element_name_full_params(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_element_name_full_params begins.")
        let elementName = ElementName("com.example.cangjie", "EntryAbility", deviceId: "device123",
            moduleName: "entry")
        @Expect(elementName.bundleName, "com.example.cangjie")
        @Expect(elementName.abilityName, "EntryAbility")
        @Expect(elementName.deviceId, "device123")
        @Expect(elementName.moduleName, "entry")
        Hilog.info(0u32, "cangjietest", "testcase test_element_name_full_params ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestElementName_0200
     * @tc.name      : test_element_name_default_params
     * @tc.desc      : Check ElementName constructor default values for deviceId and moduleName when omitted.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_element_name_default_params(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_element_name_default_params begins.")
        let elementName = ElementName("com.example.cangjie", "MainAbility")
        @Expect(elementName.bundleName, "com.example.cangjie")
        @Expect(elementName.abilityName, "MainAbility")
        @Expect(elementName.deviceId, "")
        @Expect(elementName.moduleName, "")
        Hilog.info(0u32, "cangjietest", "testcase test_element_name_default_params ends.")
    }
}
