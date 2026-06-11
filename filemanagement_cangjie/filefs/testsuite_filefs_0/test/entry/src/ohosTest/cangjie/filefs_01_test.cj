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
import kit.CoreFileKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testFileIo_access_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_access_0100
     * @tc.name      : TestCase_2
     * @tc.desc      : testFileIo_access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","start testFileIo_access")
        let fpath = "/data/storage/el2/base/files/test_access_02"
        FileIo.open(fpath, mode: OpenMode.CREATE)
        FileIo.access(fpath)
        @Expect(FileIo.access(fpath), true)
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_access_0200
     * @tc.name      : TestCase_3
     * @tc.desc      : testFileIo_access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","start testFileIo_access")
        let fpath = "/data/storage/el2/base/files/test_access_03"
        FileIo.open(fpath, mode: OpenMode.CREATE)
        FileIo.access(fpath)
        @Expect(FileIo.access(fpath), true)
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }
}
