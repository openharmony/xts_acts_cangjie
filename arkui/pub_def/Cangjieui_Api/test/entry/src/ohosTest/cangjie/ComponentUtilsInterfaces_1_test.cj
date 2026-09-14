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
import ohos.arkui.component_utils.*

@Test
class ComponentUtilsInterfaces_1_test {
    /*
     * @tc.number    : TestComponentUtils_Size_0100
     * @tc.name      : TestCase_Size_1
     * @tc.desc      : construct Size and validate width/height, then modify and validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Size_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Size_1 begins.")
        let size = Size(100.0, 200.0)
        @Expect(size.width, 100.0)
        @Expect(size.height, 200.0)
        size.width = 150.0
        size.height = 250.0
        @Expect(size.width, 150.0)
        @Expect(size.height, 250.0)
        Hilog.info(0u32, "CangjieTest", "testcase Size_1 ends.")
    }
    /*
     * @tc.number    : TestComponentUtils_Size_0200
     * @tc.name      : TestCase_Size_2
     * @tc.desc      : construct Size with zero and negative values, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Size_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Size_2 begins.")
        let size1 = Size(0.0, 0.0)
        @Expect(size1.width, 0.0)
        @Expect(size1.height, 0.0)
        let size2 = Size(-1.0, -1.0)
        @Expect(size2.width, -1.0)
        @Expect(size2.height, -1.0)
        let size3 = Size(3.14, 2.71)
        @Expect(size3.width, 3.14)
        @Expect(size3.height, 2.71)
        Hilog.info(0u32, "CangjieTest", "testcase Size_2 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_Offset_0100
     * @tc.name      : TestCase_Offset_1
     * @tc.desc      : construct Offset and validate x/y, then modify and validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Offset_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Offset_1 begins.")
        let offset = Offset(10.0, 20.0)
        @Expect(offset.x, 10.0)
        @Expect(offset.y, 20.0)
        offset.x = 30.0
        offset.y = 40.0
        @Expect(offset.x, 30.0)
        @Expect(offset.y, 40.0)
        let offset2 = Offset(-5.0, -15.0)
        @Expect(offset2.x, -5.0)
        @Expect(offset2.y, -15.0)
        Hilog.info(0u32, "CangjieTest", "testcase Offset_1 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_TranslateResult_0100
     * @tc.name      : TestCase_TranslateResult_1
     * @tc.desc      : construct TranslateResult and validate x/y/z, then modify and validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_TranslateResult_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TranslateResult_1 begins.")
        let translate = TranslateResult(1.0, 2.0, 3.0)
        @Expect(translate.x, 1.0)
        @Expect(translate.y, 2.0)
        @Expect(translate.z, 3.0)
        translate.x = 10.0
        translate.y = 20.0
        translate.z = 30.0
        @Expect(translate.x, 10.0)
        @Expect(translate.y, 20.0)
        @Expect(translate.z, 30.0)
        Hilog.info(0u32, "CangjieTest", "testcase TranslateResult_1 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_ScaleResult_0100
     * @tc.name      : TestCase_ScaleResult_1
     * @tc.desc      : construct ScaleResult and validate x/y/z/centerX/centerY, then modify and validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ScaleResult_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ScaleResult_1 begins.")
        let scale = ScaleResult(2.0, 3.0, 4.0, 5.0, 6.0)
        @Expect(scale.x, 2.0)
        @Expect(scale.y, 3.0)
        @Expect(scale.z, 4.0)
        @Expect(scale.centerX, 5.0)
        @Expect(scale.centerY, 6.0)
        scale.x = 1.5
        scale.y = 2.5
        scale.z = 3.5
        scale.centerX = 50.0
        scale.centerY = 60.0
        @Expect(scale.x, 1.5)
        @Expect(scale.y, 2.5)
        @Expect(scale.z, 3.5)
        @Expect(scale.centerX, 50.0)
        @Expect(scale.centerY, 60.0)
        Hilog.info(0u32, "CangjieTest", "testcase ScaleResult_1 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_RotateResult_0100
     * @tc.name      : TestCase_RotateResult_1
     * @tc.desc      : construct RotateResult and validate x/y/z/centerX/centerY/angle, then modify and validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_RotateResult_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase RotateResult_1 begins.")
        let rotate = RotateResult(1.0, 0.0, 0.0, 50.0, 50.0, 90.0)
        @Expect(rotate.x, 1.0)
        @Expect(rotate.y, 0.0)
        @Expect(rotate.z, 0.0)
        @Expect(rotate.centerX, 50.0)
        @Expect(rotate.centerY, 50.0)
        @Expect(rotate.angle, 90.0)
        rotate.x = 0.0
        rotate.y = 1.0
        rotate.z = 0.0
        rotate.centerX = 100.0
        rotate.centerY = 200.0
        rotate.angle = 180.0
        @Expect(rotate.x, 0.0)
        @Expect(rotate.y, 1.0)
        @Expect(rotate.z, 0.0)
        @Expect(rotate.centerX, 100.0)
        @Expect(rotate.centerY, 200.0)
        @Expect(rotate.angle, 180.0)
        Hilog.info(0u32, "CangjieTest", "testcase RotateResult_1 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_ComponentInfo_0100
     * @tc.name      : TestCase_ComponentInfo_1
     * @tc.desc      : construct ComponentInfo with all sub-objects and validate every property
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ComponentInfo_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ComponentInfo_1 begins.")
        let size = Size(100.0, 200.0)
        let localOffset = Offset(10.0, 20.0)
        let windowOffset = Offset(30.0, 40.0)
        let screenOffset = Offset(50.0, 60.0)
        let translate = TranslateResult(1.0, 2.0, 3.0)
        let scale = ScaleResult(2.0, 3.0, 4.0, 5.0, 6.0)
        let rotate = RotateResult(1.0, 0.0, 0.0, 50.0, 50.0, 90.0)
        let transform: Matrix4Result = VArray<Float64, $16>({ _ => 0.0 })
        let info = ComponentInfo(size, localOffset, windowOffset, screenOffset,
            translate, scale, rotate, transform)
        @Expect(info.size.width, 100.0)
        @Expect(info.size.height, 200.0)
        @Expect(info.localOffset.x, 10.0)
        @Expect(info.localOffset.y, 20.0)
        @Expect(info.windowOffset.x, 30.0)
        @Expect(info.windowOffset.y, 40.0)
        @Expect(info.screenOffset.x, 50.0)
        @Expect(info.screenOffset.y, 60.0)
        @Expect(info.translate.x, 1.0)
        @Expect(info.translate.y, 2.0)
        @Expect(info.translate.z, 3.0)
        @Expect(info.scale.x, 2.0)
        @Expect(info.scale.y, 3.0)
        @Expect(info.scale.z, 4.0)
        @Expect(info.scale.centerX, 5.0)
        @Expect(info.scale.centerY, 6.0)
        @Expect(info.rotate.x, 1.0)
        @Expect(info.rotate.y, 0.0)
        @Expect(info.rotate.z, 0.0)
        @Expect(info.rotate.centerX, 50.0)
        @Expect(info.rotate.centerY, 50.0)
        @Expect(info.rotate.angle, 90.0)
        @Expect(info.transform[0], 0.0)
        @Expect(info.transform[5], 0.0)
        @Expect(info.transform[15], 0.0)
        Hilog.info(0u32, "CangjieTest", "testcase ComponentInfo_1 ends.")
    }
    /*
     * @tc.number    : TestComponentUtils_ComponentInfo_0200
     * @tc.name      : TestCase_ComponentInfo_2
     * @tc.desc      : modify ComponentInfo sub-object properties and transform, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ComponentInfo_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ComponentInfo_2 begins.")
        let size = Size(0.0, 0.0)
        let localOffset = Offset(0.0, 0.0)
        let windowOffset = Offset(0.0, 0.0)
        let screenOffset = Offset(0.0, 0.0)
        let translate = TranslateResult(0.0, 0.0, 0.0)
        let scale = ScaleResult(0.0, 0.0, 0.0, 0.0, 0.0)
        let rotate = RotateResult(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        let transform: Matrix4Result = VArray<Float64, $16>({ _ => 0.0 })
        let info = ComponentInfo(size, localOffset, windowOffset, screenOffset,
            translate, scale, rotate, transform)
        info.size = Size(300.0, 400.0)
        @Expect(info.size.width, 300.0)
        @Expect(info.size.height, 400.0)
        info.localOffset = Offset(15.0, 25.0)
        @Expect(info.localOffset.x, 15.0)
        @Expect(info.localOffset.y, 25.0)
        info.windowOffset = Offset(35.0, 45.0)
        @Expect(info.windowOffset.x, 35.0)
        @Expect(info.windowOffset.y, 45.0)
        info.screenOffset = Offset(55.0, 65.0)
        @Expect(info.screenOffset.x, 55.0)
        @Expect(info.screenOffset.y, 65.0)
        info.translate = TranslateResult(11.0, 22.0, 33.0)
        @Expect(info.translate.x, 11.0)
        @Expect(info.translate.y, 22.0)
        @Expect(info.translate.z, 33.0)
        info.scale = ScaleResult(1.5, 2.5, 3.5, 55.0, 65.0)
        @Expect(info.scale.x, 1.5)
        @Expect(info.scale.y, 2.5)
        @Expect(info.scale.z, 3.5)
        @Expect(info.scale.centerX, 55.0)
        @Expect(info.scale.centerY, 65.0)
        info.rotate = RotateResult(0.0, 1.0, 0.0, 100.0, 200.0, 45.0)
        @Expect(info.rotate.x, 0.0)
        @Expect(info.rotate.y, 1.0)
        @Expect(info.rotate.z, 0.0)
        @Expect(info.rotate.centerX, 100.0)
        @Expect(info.rotate.centerY, 200.0)
        @Expect(info.rotate.angle, 45.0)
        let newTransform: Matrix4Result = VArray<Float64, $16>({ i => Float64(i) })
        info.transform = newTransform
        @Expect(info.transform[0], 0.0)
        @Expect(info.transform[1], 1.0)
        @Expect(info.transform[7], 7.0)
        @Expect(info.transform[15], 15.0)
        Hilog.info(0u32, "CangjieTest", "testcase ComponentInfo_2 ends.")
    }

    /*
     * @tc.number    : TestComponentUtils_ComponentUtils_0100
     * @tc.name      : TestCase_ComponentUtils_1
     * @tc.desc      : call ComponentUtils.getRectangleById static method, validate returned ComponentInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ComponentUtils_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ComponentUtils_1 begins.")
        var callStatus = 0
        var returnedWidth = -1.0
        var returnedHeight = -1.0
        let info = ComponentUtils.getRectangleById("testComponentId")
        callStatus = 1
        returnedWidth = info.size.width
        returnedHeight = info.size.height
        @Expect(callStatus, 1)
        @Expect(returnedWidth, 0.0)
        @Expect(returnedHeight, 0.0)
        Hilog.info(0u32, "CangjieTest", "testcase ComponentUtils_1 ends.")
    }
}
