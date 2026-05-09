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

@Test
class testFileIo_statclass_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_statclass_0100
     * @tc.name      : TestCase_4
     * @tc.desc      : testFileIo_statclass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let filePath = "/data/storage/el2/base/files/test.txt"
        let res = FileIo.access(filePath)
        if(res) {
            FileIo.unlink(filePath)
        }
        let file = FileIo.open(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.stat(filePath)
        @Assert(FileIo.stat(filePath).isFile(), true)
        @Assert(FileIo.stat(filePath).isBlockDevice(), false)
        @Assert(FileIo.stat(filePath).isCharacterDevice(), false)
        @Assert(FileIo.stat(filePath).isDirectory(), false)
        @Assert(FileIo.stat(filePath).isFifo(), false)
        @Assert(FileIo.stat(filePath).isSocket(), false)
        @Assert(FileIo.stat(filePath).isSymbolicLink(), false)
        FileIo.close(file)
        FileIo.unlink(filePath)
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_statclass_0200
     * @tc.name      : TestCase_5
     * @tc.desc      : testFileIo_statclass
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let filePath = "/data/storage/el2/base/files/test.md"
        let res = FileIo.access(filePath)
        if(res) {
            FileIo.unlink(filePath)
        }
        let file = FileIo.open(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.stat(filePath)
        @Assert(FileIo.stat(filePath).isFile(), true)
        @Assert(FileIo.stat(filePath).isBlockDevice(), false)
        @Assert(FileIo.stat(filePath).isCharacterDevice(), false)
        @Assert(FileIo.stat(filePath).isDirectory(), false)
        @Assert(FileIo.stat(filePath).isFifo(), false)
        @Assert(FileIo.stat(filePath).isSocket(), false)
        @Assert(FileIo.stat(filePath).isSymbolicLink(), false)
        FileIo.close(file)
        FileIo.unlink(filePath)
    }
}
