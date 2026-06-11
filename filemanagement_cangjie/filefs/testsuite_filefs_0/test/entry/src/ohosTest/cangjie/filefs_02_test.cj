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
class testFileIo_close_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_close_0100
     * @tc.name      : TestCase_8
     * @tc.desc      : testFileIo_close
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","start testFileIo_close")
        let fpath = "/data/storage/el2/base/files/TestCase_8"
        let file = FileIo.open(fpath, mode: OpenMode.CREATE)
        FileIo.close(file)
        Hilog.info(0, "cangjietest","start testFileIo_close")
        let file_1 = FileIo.open(fpath, mode: OpenMode.CREATE)
        FileIo.close(file_1.fd)
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

}
