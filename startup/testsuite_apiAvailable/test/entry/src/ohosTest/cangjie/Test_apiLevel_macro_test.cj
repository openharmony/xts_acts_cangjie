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
import ohos.labels.APILevel
import ohos.hilog.Hilog

@Test
class Test_apiLevel_macro {
    @!APILevel[since: "26.0.0"]
    func foo_1() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : start test with func declared in apilevel: "26.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_1()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    @!APILevel[since: "1.0.0"]
    func foo_2() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : start test with func declared in apilevel: "1.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_2()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    @!APILevel[since: "2.0.0"]
    func foo_3() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : start test with func declared in apilevel: "2.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_3()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    @!APILevel[since: "5.0.0"]
    func foo_4() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : start test with func declared in apilevel: "5.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_4()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    @!APILevel[since: "10.0.0"]
    func foo_5() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : start test with func declared in apilevel: "10.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_5()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    @!APILevel[since: "15.0.0"]
    func foo_6() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : start test with func declared in apilevel: "15.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_6()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    @!APILevel[since: "20.0.0"]
    func foo_7() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : start test with func declared in apilevel: "20.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_7()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    @!APILevel[since: "25.0.0"]
    func foo_8() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : start test with func declared in apilevel: "25.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_8()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    @!APILevel[since: "6.1.1"]
    func foo_9() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : start test with func declared in apilevel: "6.1.1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_9()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    @!APILevel[since: "25.99.99"]
    func foo_10() {}

    /*
     * @tc.number    : Sub_Cangjie_ApiLevel_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : start test with func declared in apilevel: "25.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        try {
            foo_10()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

}