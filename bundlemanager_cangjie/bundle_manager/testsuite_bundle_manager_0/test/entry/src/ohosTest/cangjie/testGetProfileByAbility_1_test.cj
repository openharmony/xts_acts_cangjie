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
import ohos.bundle.bundle_manager.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

@Test
class testGetProfileByAbility_1 {

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "EntryAbility" in module with name "entry".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "profile nonExistentProfileName not found in entry-EntryAbility")
        try {
            BundleManager.getProfileByAbility("entry", "EntryAbility", metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified profile is not found in the HAP.")
            @Expect(e.code, 17700024i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get profile with name "profile0" by ability with name "ApplicationAbility" in module with name "entry".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "ability ApplicationAbility not found in entry")
        try {
            BundleManager.getProfileByAbility("entry", "ApplicationAbility", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability is not found.")
            @Expect(e.code, 17700003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "ApplicationAbility" in module with name "entry".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "ability ApplicationAbility not found in entry")
        try {
            BundleManager.getProfileByAbility("entry", "ApplicationAbility", metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability is not found.")
            @Expect(e.code, 17700003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get profile with name "profile0" by ability with name "nonExistentAbilityName" in module with name "entry".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "ability nonExistentAbilityName not found in entry")
        try {
            BundleManager.getProfileByAbility("entry", "nonExistentAbilityName", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability is not found.")
            @Expect(e.code, 17700003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "nonExistentAbilityName" in module with name "entry".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "ability nonExistentAbilityName not found in entry")
        try {
            BundleManager.getProfileByAbility("entry", "nonExistentAbilityName", metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability is not found.")
            @Expect(e.code, 17700003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get profile with name "profile0" by ability with name "EntryAbility" in module with name "application".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "ability EntryAbility not found in application")
        try {
            BundleManager.getProfileByAbility("application", "EntryAbility", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "EntryAbility" in module with name "application".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "ability EntryAbility not found in application")
        try {
            BundleManager.getProfileByAbility("application", "EntryAbility", metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "ApplicationAbility" in module with name "application".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "profile nonExistentProfileName not found in application-ApplicationAbility")
        try {
            BundleManager.getProfileByAbility("application", "ApplicationAbility",
                metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : get profile with name "profile0" by ability with name "nonExistentAbilityName" in module with name "application".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "ability nonExistentAbilityName not found in application")
        try {
            BundleManager.getProfileByAbility("application", "nonExistentAbilityName", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "nonExistentAbilityName" in module with name "application".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "ability nonExistentAbilityName not found in application")
        try {
            BundleManager.getProfileByAbility("application", "nonExistentAbilityName",
                metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get profile with name "profile0" by ability with name "EntryAbility" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "EntryAbility", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "EntryAbility" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "EntryAbility",
                metadataName: "nonExistentProfileName")
            @Expect("assertion#11: not throw", "module nonExistentModuleName not found")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get profile with name "profile0" by ability with name "ApplicationAbility" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "ApplicationAbility", metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "ApplicationAbility" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "ApplicationAbility",
                metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get profile with name "profile0" by ability with name "nonExistentAbilityName" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "nonExistentAbilityName",
                metadataName: "profile0")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_getProfileByAbility_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get profile with name "nonExistentProfileName" by ability with name "nonExistentAbilityName" in module with name "nonExistentModuleName".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "module nonExistentModuleName not found")
        try {
            BundleManager.getProfileByAbility("nonExistentModuleName", "nonExistentAbilityName",
                metadataName: "nonExistentProfileName")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified module is not found.")
            @Expect(e.code, 17700002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
}
