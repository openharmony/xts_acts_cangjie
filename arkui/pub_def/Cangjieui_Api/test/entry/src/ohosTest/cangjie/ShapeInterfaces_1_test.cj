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
import ohos.base.Color as baseColor
import ohos.arkui.shape.*
import ohos.arkui.component.common.*

@Test
class ShapeInterfaces_1_test {
    /*
     * @tc.number    : TestShapeInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test ShapeInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        var count = 0
        let circle = CircleShape(width: 100i64.vp, height: 100i64.vp)
        count = count + 1
        circle.fill(baseColor.Red)
        count = count + 1
        circle.width(200i64.vp)
        count = count + 1
        circle.height(200i64.vp)
        count = count + 1
        let sized = circle.size(width: 300i64.vp, height: 300i64.vp)
        count = count + 1
        let offsetted = sized.offset(x: 10i64.vp, y: 20i64.vp)
        count = count + 1
        @Expect(count, 6)
        let defaultCircle = CircleShape()
        count = count + 1
        @Expect(count, 7)
        let chained = defaultCircle.fill(baseColor.Blue)
            .width(50i64.vp)
            .height(50i64.vp)
            .size(width: 100i64.vp, height: 100i64.vp)
            .offset(x: 0i64.vp, y: 0i64.vp)
        count = count + 1
        @Expect(count, 8)
    }
    /*
     * @tc.number    : TestShapeInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test ShapeInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        var count = 0
        let ellipse = EllipseShape(width: 200i64.vp, height: 100i64.vp)
        count = count + 1
        ellipse.fill(baseColor.Green)
        count = count + 1
        ellipse.width(300i64.vp)
        count = count + 1
        ellipse.height(150i64.vp)
        count = count + 1
        ellipse.size(width: 400i64.vp, height: 200i64.vp)
        count = count + 1
        ellipse.offset(x: 5i64.vp, y: 15i64.vp)
        count = count + 1
        @Expect(count, 6)
        let defaultEllipse = EllipseShape()
        count = count + 1
        @Expect(count, 7)
        let chained = defaultEllipse.fill(baseColor.White)
            .width(80i64.vp)
            .height(40i64.vp)
            .offset(x: 0i64.vp, y: 0i64.vp)
        count = count + 1
        @Expect(count, 8)
    }
    /*
     * @tc.number    : TestShapeInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test ShapeInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        var count = 0
        let path1 = PathShape(commands: "M0 0 L100 100")
        count = count + 1
        path1.fill(baseColor.Red)
        count = count + 1
        path1.width(200i64.vp)
        count = count + 1
        path1.height(200i64.vp)
        count = count + 1
        path1.offset(x: 10i64.vp, y: 10i64.vp)
        count = count + 1
        @Expect(count, 5)
        let path2 = PathShape(width: 100i64.vp, height: 100i64.vp, commands: "M0 0 L50 50 Z")
        count = count + 1
        path2.fill(baseColor.Blue)
        count = count + 1
        path2.size(width: 200i64.vp, height: 200i64.vp)
        count = count + 1
        @Expect(count, 8)
        let path3 = PathShape()
        count = count + 1
        path3.fill(baseColor.Black)
        count = count + 1
        @Expect(count, 10)
        let chained = path3.fill(baseColor.White)
            .width(50i64.vp)
            .height(50i64.vp)
            .offset(x: 0i64.vp, y: 0i64.vp)
        count = count + 1
        @Expect(count, 11)
    }
    /*
     * @tc.number    : TestShapeInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test ShapeInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        var count = 0
        let rect = RectShape(width: 100i64.vp, height: 50i64.vp)
        count = count + 1
        rect.fill(baseColor.Red)
        count = count + 1
        rect.width(200i64.vp)
        count = count + 1
        rect.height(100i64.vp)
        count = count + 1
        rect.size(width: 300i64.vp, height: 150i64.vp)
        count = count + 1
        rect.offset(x: 5i64.vp, y: 10i64.vp)
        count = count + 1
        rect.radiusWidth(10i64.vp)
        count = count + 1
        rect.radiusHeight(5i64.vp)
        count = count + 1
        rect.radius(15i64.vp)
        count = count + 1
        @Expect(count, 9)
        let defaultRect = RectShape()
        count = count + 1
        @Expect(count, 10)
        let chained = defaultRect.fill(baseColor.Blue)
            .width(50i64.vp)
            .height(25i64.vp)
            .radiusWidth(8i64.vp)
            .radiusHeight(8i64.vp)
            .radius(12i64.vp)
            .offset(x: 0i64.vp, y: 0i64.vp)
        count = count + 1
        @Expect(count, 11)
        let rectNone = RectShape(width: Option<Length>.None, height: Option<Length>.None)
        count = count + 1
        rectNone.fill(Option<ResourceColor>.None)
        count = count + 1
        rectNone.radiusWidth(Option<Length>.None)
        count = count + 1
        rectNone.radiusHeight(Option<Length>.None)
        count = count + 1
        rectNone.radius(Option<Length>.None)
        count = count + 1
        @Expect(count, 16)
    }
}
