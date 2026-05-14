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

package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import kit.CoreFileKit.*
import ohos.ui_test.*

@Test
class test_UiWindow {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : UiWindow isActive()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            let active = window?.isActive()
            @Expect(active, true)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : UiWindow maximize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.maximize()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : UiWindow minimize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.minimize()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : UiWindow moveTo()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.moveTo(100, 100)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : UiWindow resume()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.resume()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : UiWindow split()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.split()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : UiWindow moveTo()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.moveTo(100, 100)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : UiWindow resize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.resize(100, 100, ResizeDirection.Left)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 17000005)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : UiWindow close()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        try {
            let driver: Driver = Driver.create()
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            window?.close()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }   
}
