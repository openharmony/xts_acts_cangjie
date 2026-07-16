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
import kit.PerformanceAnalysisKit.*
import kit.PerformanceAnalysisKit.Hilog
@Test
class testCofigure_1 {
    /*
     * @tc.number    : Sub_Cangjie_config_config_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : config ConfigOption(maxStorage:"100M", disable: true).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"100M", disable: true))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_config_config_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : config ConfigOption(maxStorage:"200M", disable: true).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"200M", disable: true))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

  

    /*
     * @tc.number    : Sub_Cangjie_config_config_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : config ConfigOption(maxStorage:"100M", disable: false).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"100M", disable: false))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_config_config_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : config ConfigOption(maxStorage:"200M", disable: false).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"200M", disable: false))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_config_config_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : config ConfigOption(maxStorage:"300M", disable: false).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"300M", disable: false))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

   


    /*
     * @tc.number    : Sub_Cangjie_config_config_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : config ConfigOption(maxStorage:"100M").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"100M"))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_config_config_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : config ConfigOption(maxStorage:"200M").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest","define local variable config")
        let config = HiAppEvent.configure(ConfigOption(maxStorage:"200M"))
        @Expect(true, true)
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

 
}
