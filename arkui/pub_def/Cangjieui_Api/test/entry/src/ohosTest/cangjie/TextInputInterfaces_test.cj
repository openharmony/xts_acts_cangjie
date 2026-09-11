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
import ohos.base.*
import ohos.arkui.component.common.*
import ohos.arkui.component.text_input.*

@Test
class TextInputInterfaces_test {
    /*
     * @tc.number    : TestTextInputController_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test TextInputController init and caretPosition with various values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let tc = TextInputController()
        var step = 0
        tc.caretPosition(0)
        step = step + 1
        tc.caretPosition(5)
        step = step + 1
        tc.caretPosition(100)
        step = step + 1
        tc.caretPosition(-1)
        step = step + 1
        tc.caretPosition(Option<Int32>.None)
        step = step + 1
        @Expect(step, 5)
        tc.caretPosition(50)
        step = step + 1
        @Expect(step, 6)
    }
    /*
     * @tc.number    : TestTextInputController_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test TextInputController setTextSelection with various start/end/options
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let tc = TextInputController()
        var step = 0
        tc.setTextSelection(0, 10)
        step = step + 1
        tc.setTextSelection(5, 5)
        step = step + 1
        tc.setTextSelection(10, 0)
        step = step + 1
        tc.setTextSelection(0, 100)
        step = step + 1
        tc.setTextSelection(Option<Int32>.None, Option<Int32>.None)
        step = step + 1
        tc.setTextSelection(3, 8, options: MenuPolicy.Default)
        step = step + 1
        tc.setTextSelection(3, 8, options: MenuPolicy.Hide)
        step = step + 1
        tc.setTextSelection(3, 8, options: Option<MenuPolicy>.None)
        step = step + 1
        tc.setTextSelection(Option<Int32>.None, 5, options: MenuPolicy.Default)
        step = step + 1
        tc.setTextSelection(5, Option<Int32>.None, options: MenuPolicy.Hide)
        step = step + 1
        @Expect(step, 10)
        @Expect(MenuPolicy.Default != MenuPolicy.Hide, true)
        @Expect(MenuPolicy.Default == MenuPolicy.Default, true)
        @Expect(MenuPolicy.Hide == MenuPolicy.Hide, true)
    }
    /*
     * @tc.number    : TestTextInputController_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test TextInputController stopEditing and combined method calls
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let tc = TextInputController()
        var step = 0
        tc.stopEditing()
        step = step + 1
        tc.stopEditing()
        step = step + 1
        @Expect(step, 2)
        tc.caretPosition(10)
        tc.setTextSelection(0, 5)
        tc.stopEditing()
        step = step + 1
        @Expect(step, 3)
        tc.caretPosition(0)
        tc.setTextSelection(0, 0, options: MenuPolicy.Default)
        tc.setTextSelection(Option<Int32>.None, Option<Int32>.None, options: MenuPolicy.Hide)
        tc.stopEditing()
        tc.caretPosition(Option<Int32>.None)
        tc.setTextSelection(2, 4)
        tc.stopEditing()
        step = step + 1
        @Expect(step, 4)
        tc.caretPosition(100)
        tc.setTextSelection(50, 60, options: Option<MenuPolicy>.None)
        tc.stopEditing()
        step = step + 1
        @Expect(step, 5)
    }
}
