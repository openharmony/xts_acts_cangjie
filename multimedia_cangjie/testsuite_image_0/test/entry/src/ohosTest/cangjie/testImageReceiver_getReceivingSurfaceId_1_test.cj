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
import kit.PerformanceAnalysisKit.Hilog
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.multimedia.image.*
import std.convert.*

@Test
class testImageReceiver_getReceivingSurfaceId_1 {

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 2i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 2i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 2i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 3i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 3i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(1i32, 3i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 1i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 1i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 1i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(2i32, 2i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 1i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 1i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Expect(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 1i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 2i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 2i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 2i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 3i32), ImageFormat.Jpeg, 1i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 3i32), ImageFormat.Jpeg, 2i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testImageReceiver_getReceivingSurfaceId_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : Obtain a surface ID. ImageFormat: "ImageFormat.Jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest", "define local variable imageReceiver")
        let imageReceiver = createImageReceiver(Size(3i32, 3i32), ImageFormat.Jpeg, 3i32)
        Hilog.info(0, "cangjietest", "define local variable id")
        let id = imageReceiver.getReceivingSurfaceId()
        @Assert(true, Int64.tryParse(id).isSome())
        Hilog.info(0, "cangjietest", "testcase TestCase_54 ends.")
    }
}
