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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import kit.LocalizationKit.{Configuration as Config}
import ohos.ui_test.*
import ohos_app_cangjie_entry.Global

@Test
class test_GetLocales {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }
    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : resource_manager getLocales()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let languageList = resourceManager.getLocales()
            @Expect(languageList.size>1)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : resource_manager getLocales(includeSystem:false)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let languageList = resourceManager.getLocales(includeSystem:false)
            @Expect(languageList.size>1)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : resource_manager getLocales(includeSystem:true)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let languageList = resourceManager.getLocales(includeSystem:true)
            @Expect(languageList.size>1)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }
}
