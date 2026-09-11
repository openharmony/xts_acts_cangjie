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
import ohos.callback_invoke.Callback0Argument
import ohos.business_exception.BusinessException

class ImageArrivalCb <: Callback0Argument {
    public init() {}
    public func invoke(err: ?BusinessException): Unit {
        Hilog.info(0, "cangjietest", "", "image arrival callback invoked")
    }
}

@Test
class Test_ImageReceiverOps {
    /*
     * @tc.number    : Sub_Cangjie_Test_ImageReceiverOps_readLatestImage_0100
     * @tc.name      : TestCase_readLatestImage
     * @tc.desc      : ImageReceiver.readLatestImage throws 62980104 without camera feed
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_readLatestImage(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_readLatestImage begins.")
        let receiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 1i32)
        try {
            let img: Image = receiver.readLatestImage()
            let comp: Component = img.getComponent(ComponentType.Jpeg)
            let cr = img.clipRect
            let ct = comp.componentType
            let rs = comp.rowStride
            let ps = comp.pixelStride
            let bb = comp.byteBuffer
            Hilog.info(0, "cangjietest", "", "img+comp refs: rs=${rs} ps=${ps} bb.size=${bb.size} cr.x=${cr.x} cr.y=${cr.y}")
            @Expect(rs >= 0i32 && ps >= 0i32, true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        receiver.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_readLatestImage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageReceiverOps_readNextImage_0200
     * @tc.name      : TestCase_readNextImage
     * @tc.desc      : ImageReceiver.readNextImage throws 62980104 without camera feed
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_readNextImage(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_readNextImage begins.")
        let receiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 1i32)
        try {
            let img = receiver.readNextImage()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 62980104i32)
        }
        receiver.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_readNextImage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_ImageReceiverOps_on_off_0300
     * @tc.name      : TestCase_on_off
     * @tc.desc      : ImageReceiver.on/off register and unregister ImageArrival callback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_on_off(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_on_off begins.")
        let receiver = createImageReceiver(Size(1i32, 1i32), ImageFormat.Jpeg, 1i32)
        try {
            @Expect(receiver.size.width, 1i32)
            let cb = ImageArrivalCb()
            receiver.on(ReceiveType.ImageArrival, cb)
            receiver.off(ReceiveType.ImageArrival)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        receiver.release()
        Hilog.info(0, "cangjietest", "testcase TestCase_on_off ends.")
    }
}
