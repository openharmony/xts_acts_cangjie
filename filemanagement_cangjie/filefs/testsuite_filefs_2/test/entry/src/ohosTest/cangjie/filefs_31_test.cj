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
class testFileFs_readlines_1 {

    /**
     * @tc.number: test_fs.write_03
     * @tc.name: test_readline_03.write_03
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_03() {
        let fpath = "/data/storage/el2/base/files/test_readline_03"
        try{
        let options: Options = Options(encoding: "utf-8")
        let readerIterator = FileIo.readLines(fpath, options: options)
        @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }
    /**
     * @tc.number: test_fs.write_04
     * @tc.name: test_readline_04.write_04
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_04() {
        try{
            let options: Options = Options(encoding: "utf-8")
            let readerIterator = FileIo.readLines("", options: options)
            @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }
    /**
     * @tc.number: test_fs.write_05
     * @tc.name: test_readline_05.write_05
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_05() {
        try{
            let options: Options = Options(encoding: "utf-8")
            let readerIterator = FileIo.readLines("/0", options: options)
            @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number: test_fs.write_06
     * @tc.name: test_readline_06.write_06
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_06() {
        try{
            let options: Options = Options(encoding: "utf-8")
            let readerIterator = FileIo.readLines("/n", options: options)
            @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }
    /**
     * @tc.number: test_fs.write_07
     * @tc.name: test_readline_07.write_07
     * @tc.desc    : Test
     * Write with invalid "length" option.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_07() {
        try{
            let options: Options = Options(encoding: "utf-8")
            let readerIterator = FileIo.readLines("/n", options: options)
            @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number: test_fs.write_08
     * @tc.name: test_readline_08.write_08
     * @tc.desc    : Test
     * Write with invalid fd parameters.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
     @TestCase
    func test_readline_08() {
        try{
            let string1 = StringBuilder(r'a', 10165).toString()
            let readerIterator = FileIo.readLines(string1)
            @Expect(false)
        }catch(e: BusinessException) {
            @Expect(e.code, 13900030)
        }
    }

}
