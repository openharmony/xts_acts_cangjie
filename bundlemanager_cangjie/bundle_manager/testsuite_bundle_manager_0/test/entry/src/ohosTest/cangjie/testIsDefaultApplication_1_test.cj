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
import kit.AbilityKit.*
import kit.AbilityKit.DefaultAppManager
import kit.PerformanceAnalysisKit.Hilog

@Test
class testIsDefaultApplication_1 {
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Browser)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Image)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Audio)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Video)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Pdf)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Word)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Excel)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Ppt)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_isDefaultApplication_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Not the default application
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable result")
        let result = DefaultAppManager.isDefaultApplication(ApplicationType.Email)
        @Expect(result, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
}
