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
class testFileIo_truncate02_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_truncate02_0100
     * @tc.name    : test_testcase_42
     * @tc.desc      : testFileIo_truncate02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_testcase_42(): Unit {
        let filePath = "/data/storage/el2/base/files/test.txt"
        let res = FileIo.access(filePath)
        if(res){
            FileIo.unlink(filePath)
        }
        let file = FileIo.open(filePath,mode:(OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.truncate(file.fd, len: 1i64)
        @Expect(file.getParent().isEmpty(), false)
        FileIo.close(file)
        FileIo.unlink(filePath)
    }
}
