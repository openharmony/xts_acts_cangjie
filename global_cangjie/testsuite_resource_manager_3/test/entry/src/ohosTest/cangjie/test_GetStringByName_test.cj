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
import kit.LocalizationKit.{Configuration as Config, ArgsValueType}
import ohos.arkui.state_macro_manage.r
import ohos.resource.__GenerateResource__
import ohos.ui_test.*
import ohos_app_cangjie_entry.Global

@Test
class test_GetStringByName {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : resource_manager test_GetStringByName 基础无参数场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_plain")
        @Expect(result,"Hello World")
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : resource_manager test_GetStringByName 空字符串场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_empty")
        @Expect(result,"")
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : resource_manager test_GetStringByName 单整型占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_one_d", Int32Value(42))
        @Expect(result,"Count: 42")
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : resource_manager test_GetStringByName 单字符串占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_one_s", StringValue("Alice"))
        @Expect(result,"Hello, Alice")
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : resource_manager test_GetStringByName 单浮点型占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_one_f", Float32Value(19.99))
        @Expect(result,"Price: 19.990000")
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : resource_manager test_GetStringByName 多参数混合场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_two_args", StringValue("Bob"), Int32Value(5))
        @Expect(result,"Bob has 5 apples")
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : resource_manager test_GetStringByName 百分号转义场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_percent", Int32Value(20))
        @Expect(result,"Discount: 20%")
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : resource_manager test_GetStringByName 多类型混合占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_three_args", StringValue("format string"), Int32Value(10), Float32Value(98.78))
        @Expect(result,"I'm a format string, format int: 10, format float: 98.779999.")
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : resource_manager test_GetStringByName 索引占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_three_indexed", StringValue("format string"), Int32Value(10), Float32Value(98.78))
            @Expect(result,"I'm a format string, format int: 10, format float: 98.779999.")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code,9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : resource_manager test_GetStringByName 占位符无参数匹配场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_one_d") // 无参数匹配%d
        @Expect(result,"Count: %d") // 预期返回原字符串
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : resource_manager test_GetStringByName 参数类型不匹配场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_one_d", StringValue("not a number")) // 字符串匹配%d
            @Expect(false) // 预期返回原字符串
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : resource_manager test_GetStringByName 无效资源场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_no") //无效资源
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 9001003) // 验证抛出异常
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : resource_manager test_GetStringByName 整型大数场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        let resourceManager = Global.abilityContext.resourceManager
        let result = resourceManager.getStringByName("test_one_d", Int32Value(Int32.Max)) // Int32最大值
        @Expect(result,"Count: 2147483647")
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : resource_manager test_GetStringByName 参数数量少于占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_two_args", StringValue("Bob")) // 缺int参数
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_resource_manager_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : resource_manager test_GetStringByName 参数数量多于占位符场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_one_s", StringValue("Alice"), Int32Value(10)) // 多int参数
            @Expect(false) // 预期忽略多余参数，正常格式化
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code,9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : resource_manager test_GetStringByName 多参数顺序错误
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_two_args", Int32Value(5), StringValue("Bob"))
            @Expect(false) 
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : resource_manager test_GetStringByName 索引占位符顺序错误
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_indexed", Int32Value(3), StringValue("Charlie"))
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : resource_manager test_GetStringByName 索引参数多次使用
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("test_indexed", StringValue("Charlie"), Int32Value(3))
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code,9001007)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_resource_manager_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : resource_manager test_GetStringByName 第一个入参是空字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        try {
            let resourceManager = Global.abilityContext.resourceManager
            let result = resourceManager.getStringByName("")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code,9001003)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }
}
