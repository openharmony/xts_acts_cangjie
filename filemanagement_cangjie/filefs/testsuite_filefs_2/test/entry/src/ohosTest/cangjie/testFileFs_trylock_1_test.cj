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
import ohos.business_exception.*

@Test
class testFileFs_trylock_1 {
  /**
     * @tc.number: test_fs.write_01
     * @tc.name: test_trylock_01.write_01
   * @tc.desc    : Test
     * Open the file in read-write mode, default write from current offset.
   * @tc.size    : MEDIUM
   * @tc.type    : Functoin
   * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_trylock_01() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        f.tryLock(exclusive: true)  
        f.unlock()
        FileIo.close(f)     
    }

    /**
     * @tc.number: test_fs.write_02
     * @tc.name: test_trylock_02.write_02
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_trylock_02() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        f.tryLock(exclusive: false)  
        f.unlock()
        FileIo.close(f)     
    } 
} 

