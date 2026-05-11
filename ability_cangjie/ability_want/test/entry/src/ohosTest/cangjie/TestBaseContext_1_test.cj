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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.*
import ohos.business_exception.BusinessException
import ohos_app_cangjie_entry.Global


@Test
class TestBaseContext_1 {
    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : start ability with name "", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext().startAbility(Want(bundleName: "", abilityName: "", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#0: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "xxx", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#1: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : start ability with name "EntryAbility", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "EntryAbility", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#2: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : start ability with name "", in module with name "xxx", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "", moduleName: "xxx"), options: StartOptions())
                
            @Expect("assertion#3: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : start ability with name "xxx", in module with name "xxx", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "xxx", moduleName: "xxx"), options: StartOptions())
                
            @Expect("assertion#4: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : start ability with name "EntryAbility", in module with name "xxx", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "EntryAbility", moduleName: "xxx"), options: StartOptions())
                
            @Expect("assertion#5: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : start ability with name "", in module with name "entry", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#6: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : start ability with name "xxx", in module with name "entry", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "xxx", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#7: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : start ability with name "EntryAbility", in module with name "entry", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "", abilityName: "EntryAbility", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#8: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : start ability with name "", in module with name "", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#9: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "xxx", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#10: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : start ability with name "EntryAbility", in module with name "", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "EntryAbility", moduleName: ""), options: StartOptions())
                
            @Expect("assertion#11: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : start ability with name "", in module with name "xxx", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "", moduleName: "xxx"), options: StartOptions())
                
            @Expect("assertion#12: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : start ability with name "xxx", in module with name "xxx", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "xxx", moduleName: "xxx"), options: StartOptions())
            @Expect("assertion#13: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : start ability with name "EntryAbility", in module with name "xxx", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "EntryAbility", moduleName: "xxx"), options: StartOptions())
            @Expect("assertion#14: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : start ability with name "", in module with name "entry", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#15: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : start ability with name "xxx", in module with name "entry", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "xxx", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#16: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : start ability with name "EntryAbility", in module with name "entry", in bundle with name "xxx"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "xxx", abilityName: "EntryAbility", moduleName: "entry"), options: StartOptions())
                
            @Expect("assertion#17: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : start ability with name "", in module with name "", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "", moduleName: ""),
                    options: StartOptions())
                
            @Expect("assertion#18: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "xxx", moduleName: ""),
                    options: StartOptions())
                
            @Expect("assertion#19: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : start ability with name "EntryAbility", in module with name "", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "start ability successfully")
        Global.getAbilityContext()
            .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility", moduleName: ""),
                options: StartOptions())
            
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : start ability with name "", in module with name "xxx", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "", moduleName: "xxx"),
                    options: StartOptions())
                
            @Expect("assertion#20: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : start ability with name "xxx", in module with name "xxx", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "xxx", moduleName: "xxx"),
                    options: StartOptions())
                
            @Expect("assertion#21: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : start ability with name "EntryAbility", in module with name "xxx", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "start ability successfully")
        Global.getAbilityContext()
            .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility", moduleName: "xxx"),
                options: StartOptions())
            
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : start ability with name "", in module with name "entry", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "", moduleName: "entry"),
                    options: StartOptions())
                
            @Expect("assertion#22: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "", moduleName: "entry"),
                    options: StartOptions())
                
            @Expect("assertion#23: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching ability is found.")
            @Expect(e.code, 16000019i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : start ability with name "xxx", in module with name "entry", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "xxx", moduleName: "entry"),
                    options: StartOptions())
                
            @Expect("assertion#24: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "fail to start ability.")
        try {
            Global.getAbilityContext()
                .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "xxx", moduleName: "entry"),
                    options: StartOptions())
                
            @Expect("assertion#25: not throw", "fail to start ability.")
        } catch (e: BusinessException) {
            @Expect(e.message, "The specified ability does not exist.")
            @Expect(e.code, 16000001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : start ability with name "EntryAbility", in module with name "entry", in bundle with name "com.example.myapplication"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "start ability successfully")
        Global.getAbilityContext()
            .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility", moduleName: "entry"),
                options: StartOptions())
            
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
}
