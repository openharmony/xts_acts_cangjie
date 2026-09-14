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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.tab.*

public class TabsController {
    private var currentIndex: Int32
    public init() {
        currentIndex = 0
    }
    public func changeIndex(value: ?Int32): Unit {
        match (value) {
            case Some(v) => currentIndex = v
            case None => ()
        }
    }
    public func getCurrentIndex(): Int32 {
        return currentIndex
    }
}

@Test
class TabsInterfaces_test {
    /*
     * @tc.number    : TestTabsController_0100
     * @tc.name      : TestCase_TabsController_1
     * @tc.desc      : construct TabsController, call changeIndex with valid/None values, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_TabsController_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TabsController_1 begins.")
        var opsCount = 0
        let controller = TabsController()
        controller.changeIndex(Some(3))
        opsCount = opsCount + 1
        @Expect(opsCount, 1)
        controller.changeIndex(Some(0))
        opsCount = opsCount + 1
        @Expect(opsCount, 2)
        controller.changeIndex(Some(-1))
        opsCount = opsCount + 1
        @Expect(opsCount, 3)
        controller.changeIndex(Option<Int32>.None)
        opsCount = opsCount + 1
        @Expect(opsCount, 4)
        controller.changeIndex(Some(100))
        opsCount = opsCount + 1
        @Expect(opsCount, 5)
        @Expect(controller.getCurrentIndex(), 100)
        Hilog.info(0u32, "CangjieTest", "testcase TabsController_1 ends.")
    }
}
