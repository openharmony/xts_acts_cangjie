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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.ImageKit.*

@Test
class Test_readPixelMap_02 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0100
     * @tc.name      : test_readPixelMap_01
     * @tc.desc      : test Image test_readPixelMap_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_01(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Bgra8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.readPixelsToBuffer(read_color)
        @Expect(read_color.toString(), Read_Buf.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0200
     * @tc.name      : test_readPixelMap_02
     * @tc.desc      : test Image test_readPixelMap_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_02(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Bgra8888)
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.readPixelsToBuffer(read_color)
        @Expect(read_color.toString(), Read_Buf2.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0300
     * @tc.name      : test_readPixelMap_03
     * @tc.desc      : test Image test_readPixelMap_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_03(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(8, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(read_color, 0, 8, Region(Size(1, 2), 0, 0))
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.readPixels(area)
        @Expect(area.pixels.toString(), Read_Buf3.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0400
     * @tc.name      : test_readPixelMap_04
     * @tc.desc      : test Image test_readPixelMap_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_04(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(Array<UInt8>(8, repeat: 0), 0, 8, Region(Size(1, 2), -1, -1))
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.readPixels(area)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Invalid image parameter.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0500
     * @tc.name      : test_readPixelMap_05
     * @tc.desc      : test Image test_readPixelMap_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_05(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(Array<UInt8>(0, repeat: 0), 0, 8, Region(Size(1, 2), 0, 0))
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.readPixels(area)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Invalid image parameter.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0600
     * @tc.name      : test_readPixelMap_06
     * @tc.desc      : test Image test_readPixelMap_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_06(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(Array<UInt8>(20, repeat: 0), 21, 8, Region(Size(1, 2), 0, 0))
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.readPixels(area)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Invalid image parameter.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0700
     * @tc.name      : test_readPixelMap_07
     * @tc.desc      : test Image test_readPixelMap_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readPixelMap_07(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(Array<UInt8>(20, repeat: 0), 0, 8, Region(Size(-1, -2), 0, 0))
        try {
            globalPixelMap = createPixelMap(color, opts)
            globalPixelMap.readPixels(area)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Invalid image parameter.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0800
     * @tc.name      : test_writePixelMap_08
     * @tc.desc      : test Image test_writePixelMap_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writePixelMap_08(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_arr: Array<UInt8> = Array<UInt8>(8, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let area = PositionArea(Array<UInt8>(8) {index: Int64 => UInt8(index + 1)}, 0, 8, Region(Size(1, 2), 0, 0))
        let read_area = PositionArea(read_arr, 0, 8, Region(Size(1, 2), 0, 0))
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.writePixels(area)
        globalPixelMap.readPixels(read_area)
        @Expect(read_area.pixels.toString(), Read_Buf3.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_0900
     * @tc.name      : test_writePixelMap_09
     * @tc.desc      : test Image test_writePixelMap_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writePixelMap_09(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var read_arr: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let write_color = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.writeBufferToPixels(write_color)
        globalPixelMap.readPixelsToBuffer(read_arr)
        @Expect(read_arr.toString(), Read_Buf4.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_readPixelMap_02_1000
     * @tc.name      : test_writePixelMap_10
     * @tc.desc      : test Image test_writePixelMap_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_writePixelMap_10(): Unit {
        var globalPixelMap: PixelMap
        var color: Array<UInt8> = Array<UInt8>(96) {index: Int64 => UInt8(index + 1)}
        var read_arr: Array<UInt8> = Array<UInt8>(96, repeat: 1)
        var opts = InitializationOptions(Size(4, 6), editable: true, pixelFormat: PixelMapFormat.Rgba8888)
        let write_color = Array<UInt8>(96, repeat: 0)
        globalPixelMap = createPixelMap(color, opts)
        globalPixelMap.writeBufferToPixels(write_color)
        globalPixelMap.readPixelsToBuffer(read_arr)
        @Expect(read_arr.toString(), Read_Buf5.toString())
    }
}
