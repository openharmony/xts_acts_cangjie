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
class Test_ImageSource_creatPixelMap_04 {

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0100
     * @tc.name      : test_ImageSource_creatPixelMap_01
     * @tc.desc      : test Image test_ImageSource_creatPixelMap_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_creatPixelMap_01(): Unit {
        var globalImageSource: ImageSource
        var globalPixelMap: PixelMap
        try {
            globalImageSource = createImageSource("/data/storage/el1/base/test.jpg")
            globalPixelMap = globalImageSource.createPixelMap()
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code,62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0200
     * @tc.name      : test_ImageSource_creatPixelMap_02
     * @tc.desc      : test Image test_ImageSource_creatPixelMap_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_creatPixelMap_02(): Unit {
        var globalImageSource: ImageSource
        var globalPixelMap: PixelMap
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: false,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(6, 8), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgb565,
            index: 0,
            fitDensity: 20
        )
        var region = Region(Size(3, 3), 1, 1)
        try {
            globalImageSource = createImageSource(JPG_Buf)
            globalPixelMap = globalImageSource.createPixelMap(options: opts)
            globalPixelMap.crop(region)
            @Expect(false)
        } catch (e: Exception) {
            @Expect(e.message, "Cropping exceptions.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0300
     * @tc.name      : test_creatImageSource_03
     * @tc.desc      : test Image test_creatImageSource_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_creatImageSource_03(): Unit {
        var globalImageSource: ImageSource
        var globalPixelMap: PixelMap
        var buf: Array<UInt8> = Array<UInt8>(96, repeat: 0)
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: true,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(3, 4), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgba8888,
            index: 0,
            fitDensity: 20
        )
        try {
            globalImageSource = createImageSource("/data/storage/el1/base/test.gif")
            globalPixelMap = globalImageSource.createPixelMap(options: opts)
            var density = globalPixelMap.getDensity()
            @Expect(density, 20)
        } catch (e: BusinessException) {
            @Expect(e.code,62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0400
     * @tc.name      : test_ImageSource_creatPixelMap_04
     * @tc.desc      : test Image test_ImageSource_creatPixelMap_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_creatPixelMap_04(): Unit {
        var globalImageSource: ImageSource
        var globalPixelMapList: Array<PixelMap>
        var globalPixelMapList_2: Array<PixelMap>
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: false,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(6, 8), 0, 0),
            desiredPixelFormat: PixelMapFormat.Rgba8888,
            index: 0,
            fitDensity: 20
        )
        var region = Region(Size(3, 3), 1, 1)
        try {
            globalImageSource = createImageSource(JPG_Buf)
            globalPixelMapList = globalImageSource.createPixelMapList(options: opts)
            globalPixelMapList_2 = globalImageSource.createPixelMapList()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0500
     * @tc.name      : test_ImageSource_creatPixelMap_05
     * @tc.desc      : test Image test_ImageSource_creatPixelMap_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_creatPixelMap_05(): Unit {
        var globalImageSource: ImageSource
        var globalPixelMapList: Array<PixelMap>
        var globalPixelMapList_2: Array<PixelMap>
        var opts = DecodingOptions(
            sampleSize: 1,
            rotate: 10,
            editable: false,
            desiredSize: Size(3, 4),
            desiredRegion: Region(Size(6, 8), 0, 0),
            desiredPixelFormat: PixelMapFormat.Unknown,
            index: 0,
            fitDensity: 20
        )
        try {
            globalImageSource = createImageSource(JPG_Buf)
            globalPixelMapList = globalImageSource.createPixelMapList(options: opts)
            globalPixelMapList_2 = globalImageSource.createPixelMapList()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0600
     * @tc.name      : test_ImageSource_getFrameCount_06
     * @tc.desc      : test Image test_ImageSource_getFrameCount_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getFrameCount_06(): Unit {
        var globalImageSource: ImageSource
        var FrameCount: UInt32
        try {
            globalImageSource = createImageSource(JPG_Buf)
            FrameCount = globalImageSource.getFrameCount()
            @Expect(FrameCount, 1)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0700
     * @tc.name      : test_ImageSource_getFrameCount_07
     * @tc.desc      : test Image test_ImageSource_getFrameCount_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getFrameCount_07(): Unit {
        var globalImageSource: ImageSource
        var FrameCount: UInt32
        try {
            globalImageSource = createImageSource("/data/storage/el1/base/test.gif")
            FrameCount = globalImageSource.getFrameCount()
            @Expect(FrameCount, 81)
        } catch (e: BusinessException) {
            @Expect(e.code,62980110)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Image_Test_ImageSource_creatPixelMap_04_0800
     * @tc.name      : test_ImageSource_getDelayTimeList_08
     * @tc.desc      : test Image test_ImageSource_getDelayTimeList_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ImageSource_getDelayTimeList_08(): Unit {
        var globalImageSource: ImageSource
        var delayList: Array<Int32>
        try {
            globalImageSource = createImageSource("/data/storage/el1/base/test.gif")
            delayList = globalImageSource.getDelayTimeList()
            @Expect(delayList.toString(), DelayTime.toString())
        } catch (e: BusinessException) {
            @Expect(e.code,62980110)
        }
    }
}
