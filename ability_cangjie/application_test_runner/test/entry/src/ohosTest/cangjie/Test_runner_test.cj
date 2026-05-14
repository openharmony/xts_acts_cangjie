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

internal import kit.PerformanceAnalysisKit.*
internal import ohos.base.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.application.test_runner.*
import ohos.business_exception.BusinessException

public class MyTestRunner <: TestRunner {
    public func onRun() {
        Hilog.info(0,"cangjieTest","Cangjie TestRunner OnRun")
    }

    public func onPrepare() {
        Hilog.info(0, "cangjietest","CJTestRunner onPrepare")
    }
}

@Test
class Test_runner {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_runner_registerCreator
     * @tc.name      : Test_runner_registerCreator
     * @tc.desc      : test runner registerCreator
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_runner_registerCreator() {
        Hilog.info(0, "cangjietest","test runner registerCreator beigins")
        try {
            let _ = TestRunner.registerCreator("MyTestRunner") {MyTestRunner()}
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest","test runner registerCreator failed")
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","test runner registerCreator ends")
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_runner_registerCreator
     * @tc.name      : Test_runner_onRun
     * @tc.desc      : test runner registerCreator
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_runner_onRun() {
        Hilog.info(0, "cangjietest","test runner onrun beigins")
        try {
            let myTestRunner = MyTestRunner()
            myTestRunner.onRun()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest","test runner onrun failed")
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","test runner onrun ends")
    }

    /*
     * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_runner_onPrepare
     * @tc.name      : Test_runner_onPrepare
     * @tc.desc      : test runner onPrepare
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_runner_onPrepare() {
        Hilog.info(0, "cangjietest","test runner onPrepare beigins")
        try {
            let myTestRunner = MyTestRunner()
            myTestRunner.onPrepare()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest","test runner onPrepare failed")
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","test runner onPrepare ends")
    }
}
