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
class testAppEventPackageHolderSetSize_1 {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-1i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-10i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-100i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-1000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-10000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-100000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(0i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher1".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher1")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(1i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-1i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-10i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-100i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-1000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-10000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(-100000i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(0i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_AppEventPackageHolder_SetSize_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : AppEventPackageHolder setSize, watcherName: "watcher2".
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        try {
            Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
            Hilog.info(0, "cangjietest", "define local variable eventPackageHolder")
            let eventPackageHolder = AppEventPackageHolder("watcher2")
            Hilog.info(0, "cangjietest", "AppEventPackageHolder setSize")
            eventPackageHolder.setSize(1i32)
            Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid size value.")
        }
    }
}
