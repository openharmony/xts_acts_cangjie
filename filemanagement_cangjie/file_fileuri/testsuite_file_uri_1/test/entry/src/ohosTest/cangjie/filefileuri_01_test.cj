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

internal import ohos.base.*
internal import ohos.base.*
import kit.CoreFileKit.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.file.fileuri.*
import ohos.business_exception.*

@Test
class Test_fileUri {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
    * @tc.number    : Sub_Cangjie_CoreFileKit_Test_fileUri_0100
    * @tc.name      : test_fileUri
    * @tc.desc      : test CoreFileKit FileUri
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fileUri() {
        let fPath = "/data/storage/el1/base/test_fileUri.txt"
        let file = FileIo.open(fPath, mode: OpenMode.CREATE)
        FileIo.close(file)
        let fUri = FileUri(fPath)
        let name = fUri.name
        @Expect(name, "test_fileUri.txt")
        let path = fUri.path
        @Expect(path, fPath)
        try {
            let fUri_exception = FileUri("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        Hilog.info(0, "cangjietest", "${fUri.toString()}")
    }
}
