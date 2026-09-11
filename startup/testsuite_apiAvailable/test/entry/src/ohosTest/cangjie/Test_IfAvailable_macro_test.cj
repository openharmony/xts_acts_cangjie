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
import ohos.hilog.Hilog
import ohos.device_info.apiAvailable

@Test
class Test_IfAvailable_macro {
    /*
     * @tc.number    : Sub_Cangjie_IfAvailable_macro_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : start test with Param level: "26.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        let branch = Box(0)
        @IfAvailable(level: "26.0.0", {=>
            branch.value = 1
        }, {=>
            branch.value = 2
        })
        @Expect(branch.value == 1, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_IfAvailable_macro_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : start test with Param level: "25.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        let branch = Box(0)
        @IfAvailable(level: "25.0.0", {=>
            branch.value = 1
        }, {=>
            branch.value = 2
        })
        @Expect(branch.value == 1, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_IfAvailable_macro_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : start test with Param level: "26.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        let branch = Box(0)
        @IfAvailable(level: "26.99.99", {=>
            branch.value = 1
        }, {=>
            branch.value = 2
        })
        @Expect(branch.value == 2, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_IfAvailable_macro_0016
     * @tc.name      : TestCase_16
     * @tc.desc      : start test with Param level: "27.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        let branch = Box(0)
        @IfAvailable(level: "27.0.0", {=>
            branch.value = 1
        }, {=>
            branch.value = 2
        })
        @Expect(branch.value == 2, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_IfAvailable_macro_0017
     * @tc.name      : TestCase_17
     * @tc.desc      : start test with Param level: "99.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        let branch = Box(0)
        @IfAvailable(level: "99.99.99", {=>
            branch.value = 1
        }, {=>
            branch.value = 2
        })
        @Expect(branch.value == 2, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

}
