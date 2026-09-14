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

import kit.BasicServicesKit.*
import ohos.base.*
import std.collection.HashMap
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.sync.*
import ohos.ui_test.*
import std.sync.{AtomicBool, Monitor}
import ohos.file.fs.*
import ohos.file.fileuri.*
import std.collection.{ArrayList}
import ohos.callback_invoke.*
import ohos.business_exception.*
import std.time.*

public class MyCallBack <: Callback1Argument<Progress> {
    public MyCallBack(let callBack: Progress) {}
    public func invoke(err: ?BusinessException, progress: Progress): Unit {
        MyCallBack(progress)
    }
}

enum InvalidOpBeforeStart {
    | Pause | Resume | Stop
}

let invalidOpBeforeStartCases: Array<InvalidOpBeforeStart> = [
    InvalidOpBeforeStart.Pause,
    InvalidOpBeforeStart.Resume,
    InvalidOpBeforeStart.Stop
]

struct DownloadConfigParam {
    let begins: ?Int64
    let ends: ?Int64
    let gauge: ?Bool
    let checkProcessed: Bool

    public init(begins!: ?Int64 = None, ends!: ?Int64 = None, gauge!: ?Bool = None, checkProcessed!: Bool = false) {
        this.begins = begins
        this.ends = ends
        this.gauge = gauge
        this.checkProcessed = checkProcessed
    }
}

let downloadConfigCases: Array<DownloadConfigParam> = [
    DownloadConfigParam(begins: 9655322160),
    DownloadConfigParam(begins: 0, checkProcessed: true),
    DownloadConfigParam(begins: -1, checkProcessed: true),
    DownloadConfigParam(ends: -2, checkProcessed: true),
    DownloadConfigParam(ends: 10000000000),
    DownloadConfigParam(ends: -1),
    DownloadConfigParam(gauge: false),
    DownloadConfigParam(gauge: true),
    DownloadConfigParam(begins: 965532216),
    DownloadConfigParam(ends: 500000)
]

struct TokenParam {
    let token: String
    let expectFail: Bool

    public init(token: String, expectFail!: Bool) {
        this.token = token
        this.expectFail = expectFail
    }
}

let tokenCases: Array<TokenParam> = [
    TokenParam("1234567", expectFail: true),
    TokenParam("12345678", expectFail: false),
    TokenParam(StringBuilder(r'a', 2048).toString(), expectFail: false),
    TokenParam(StringBuilder(r'a', 2049).toString(), expectFail: true)
]

@Test
class TestRequest {
    let DefaultSandBoxCache = "/data/storage/el2/base/haps/entry/cache"
    let zipURL = "https://gitee.com/openharmony/docs/repository/archive/OpenHarmony-6.0-Release.zip"
    let fileURL = "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png"
    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0100
     * @tc.name      : download
     * @tc.desc      : test Request download
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func download(): Unit {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.on(EventCallbackType.Progress, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Pause, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Resume, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Completed, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Remove, MyCallBack(show(task.tid).progress))
        @Expect(show(task.tid).progress.state.toString(),"State.Initialized")
        task.start()
        @Expect(show(task.tid).progress.state.toString(),"State.Running")
        task.pause()
        @Expect(show(task.tid).progress.state.toString(),"State.Paused")
        sleepFor(1.second)
        task.resume()
        @Expect(show(task.tid).progress.state.toString(),"State.Running")
        sleepFor(1.second)
        if (show(task.tid).progress.state.toString() == "State.Running") {
            task.stop()
            @Expect(show(task.tid).progress.state.toString(),"State.Stopped")
            task.resume()
            sleepFor(5.second)
            @Expect(show(task.tid).progress.state.toString(),"State.Completed")
        }
        remove(task.tid)
        @Expect(show(task.tid).progress.state.toString(),"State.Removed")
        FileIo.unlink(filePath)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0200
     * @tc.name      : test_request_01
     * @tc.desc      : test Request test_request_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_01() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(5.second)
        @Expect(FileIo.access(filePath),true)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0300
     * @tc.name      : test_request_invalid_op_before_start
     * @tc.desc      : merged from 0300/0500/0800: call pause/resume/stop before task.start(), expect BusinessException code 21900007
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_invalid_op_before_start() {
        for (op in invalidOpBeforeStartCases) {
            let now = DateTime.now()
            let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
            let config = Config(
                Action.Download,
                fileURL,
                saveas: fileName,
                overwrite: true
            )
            let task = create(getAbilityContext(), config)
            try {
                match (op) {
                    case Pause => task.pause()
                    case Resume => task.resume()
                    case Stop => task.stop()
                }
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 21900007)
            } finally {
                remove(task.tid)
            }
        }
        try {
            remove("nonexistent_task_id")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900006)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0400
     * @tc.name      : test_request_03
     * @tc.desc      : test Request test_request_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_03() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        task.pause()
        @Expect(show(task.tid).progress.state.toString() == "State.Paused")
        let stat1 = FileIo.stat(filePath)
        let size1 = stat1.size
        sleepFor(5.second)
        let stat2 = FileIo.stat(filePath)
        let size2 = stat2.size
        @Expect(size1,size2)
        @Expect(FileIo.access(filePath),true)
        remove(task.tid)
        FileIo.unlink(filePath)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0600
     * @tc.name      : test_request_05
     * @tc.desc      : test Request test_request_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_05() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        try {
            task.start()
            sleepFor(5.second)
            if (show(task.tid).progress.state.toString() == "State.Completed") {
                task.resume()
                @Expect(false)
            }
        } catch (e: BusinessException) {
            @Expect(e.code,21900007)
        } finally {
            remove(task.tid)
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath),false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0900
     * @tc.name      : test_request_08
     * @tc.desc      : test Request test_request_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_08() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.on(EventCallbackType.Progress, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Pause, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Resume, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Completed, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Remove, MyCallBack(show(task.tid).progress))
        task.start()
        @Expect(FileIo.access(filePath), true)
        if (show(task.tid).progress.state.toString() == "State.Running") {
            task.stop()
            let stat1 = FileIo.stat(filePath)
            let size1 = stat1.size
            sleepFor(5.second)
            let stat2 = FileIo.stat(filePath)
            let size2 = stat2.size
            @Expect(size1,size2)
        }
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1000
     * @tc.name      : test_request_09
     * @tc.desc      : test Request test_request_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_09() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.on(EventCallbackType.Progress, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Pause, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Resume, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Completed, MyCallBack(show(task.tid).progress))
        task.on(EventCallbackType.Remove, MyCallBack(show(task.tid).progress))
        task.start()
        sleepFor(1.second)
        if (show(task.tid).progress.state.toString() == "State.Running") {
            try {
                task.pause()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code == 21900007)
            }
            sleepFor(1.second)
            task.resume()
            sleepFor(5.second)
        }
        if (show(task.tid).progress.state.toString() == "State.Paused") {
            try {
                task.stop()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code,21900007)
            }
        }
        remove(task.tid)
        @Expect(FileIo.access(filePath),true)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1100
     * @tc.name      : test_request_010
     * @tc.desc      : test Request test_request_010
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_010() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(2.second)
        try {
            task.start()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,21900007)
        } finally {
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath),false)
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1200
     * @tc.name      : test_request_011
     * @tc.desc      : test Request test_request_011
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_011() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        task.pause()
        task.resume()
        task.stop()
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1300
     * @tc.name      : test_request_download_configs
     * @tc.desc      : merged from 1300-2200: download with various begins/ends/gauge config combinations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_download_configs() {
        for (param in downloadConfigCases) {
            let now = DateTime.now()
            let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
            let filePath = "${DefaultSandBoxCache}/${fileName}"
            let config = if (let Some(b) <- param.begins) {
                Config(Action.Download, zipURL, overwrite: true, begins: b, saveas: fileName)
            } else if (let Some(en) <- param.ends) {
                Config(Action.Download, zipURL, overwrite: true, ends: en, saveas: fileName)
            } else if (let Some(g) <- param.gauge) {
                Config(Action.Download, zipURL, overwrite: true, gauge: g, saveas: fileName)
            } else {
                Config(Action.Download, zipURL, overwrite: true, saveas: fileName)
            }
            let task = create(getAbilityContext(), config)
            task.start()
            sleepFor(3.second)
            remove(task.tid)
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath), false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2300
     * @tc.name      : test_request_022
     * @tc.desc      : test Request test_request_022
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_022() {
        let now = DateTime.now()
        let fileName1 = "test1_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath1 = "${DefaultSandBoxCache}/${fileName1}"
        let fileName2 = "test2_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath2 = "${DefaultSandBoxCache}/${fileName2}"
        let config1 = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            saveas: fileName1,
            priority: 1
        )
        let config2 = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            saveas: fileName2,
            priority: 10
        )
        let task1 = create(getAbilityContext(), config1)
        let task2 = create(getAbilityContext(), config2)
        let callback1 = MyCallBack(show(task1.tid).progress)
        let callback2 = MyCallBack(show(task2.tid).progress)
        task2.on(EventCallbackType.Completed, callback2)
        task1.on(EventCallbackType.Completed, callback1)
        task2.start()
        task1.start()
        sleepFor(4.second)
        remove(task1.tid)
        remove(task2.tid)
        FileIo.unlink(filePath1)
        FileIo.unlink(filePath2)
        @Expect(FileIo.access(filePath1),false)
        @Expect(FileIo.access(filePath2),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2400
     * @tc.name      : test_request_023
     * @tc.desc      : test Request test_request_023
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_023() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Completed, callback)
        task.start()
        sleepFor(5.second)
        @Expect(show(task.tid).progress.processed>0)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2500
     * @tc.name      : test_request_024
     * @tc.desc      : test Request test_request_024
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_024() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            retry: false,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let pauseCallback = MyCallBack(show(task.tid).progress)
        let resumeCallback = MyCallBack(show(task.tid).progress)
        let removeCallback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Pause, pauseCallback)
        task.on(EventCallbackType.Resume, resumeCallback)
        task.on(EventCallbackType.Remove, removeCallback)
        if (show(task.tid).progress.state.toString() == "State.Initialized") {
            task.start()
            if (show(task.tid).progress.state.toString() == "State.Running") {
                task.pause()
            }
            if (show(task.tid).progress.state.toString() == "State.Paused") {
                task.resume()
            }
            remove(task.tid)
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath),false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2600
     * @tc.name      : test_request_025
     * @tc.desc      : test Request test_request_025
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_025() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Failed, callback)
        task.start()
        sleepFor(3.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2700
     * @tc.name      : test_request_026
     * @tc.desc      : test Request test_request_026
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_026() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let myCallBack = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, myCallBack)
        task.off(EventCallbackType.Progress, callback: myCallBack)
        task.start()
        sleepFor(3.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2800
     * @tc.name      : test_request_token
     * @tc.desc      : merged from 2800/2900/3000/3100: download with token of various lengths, expect 401 for out-of-range [8,2048]
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_token() {
        for (param in tokenCases) {
            let now = DateTime.now()
            let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
            let filePath = "${DefaultSandBoxCache}/${fileName}"
            let config = Config(Action.Download, fileURL, overwrite: true, token: param.token, saveas: fileName)
            if (param.expectFail) {
                try {
                    let task = create(getAbilityContext(), config)
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 401)
                }
            } else {
                let task = create(getAbilityContext(), config)
                task.start()
                sleepFor(5.second)
                @Expect(FileIo.stat(filePath).size>0)
                remove(task.tid)
                FileIo.unlink(filePath)
                @Expect(FileIo.access(filePath),false)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3200
     * @tc.name      : test_request_032
     * @tc.desc      : test Request test_request_032
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_032() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let p = HashMap<String, String>()
        p.add("1", "a")
        let config = Config(
            Action.Download,
            fileURL,
            extras: p,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(5.second)
        remove(task.tid)
        @Expect(FileIo.stat(filePath).size>0)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        try {
            remove(task.tid)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900006)
        }
        try {
            getTask(getAbilityContext(), "nonexistent_task_id")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900006)
        }
        try {
            touch("nonexistent_task_id", "nonexistent_token")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900006)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3300
     * @tc.name      : test_request_033
     * @tc.desc      : test Request test_request_033
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_033() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Failed, callback)
        task.off(EventCallbackType.Failed)
        task.start()
        sleepFor(5.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3400
     * @tc.name      : test_request_034
     * @tc.desc      : test Request test_request_034
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_034() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(5.second)
        let stat1 = FileIo.stat(filePath)
        let size1 = stat1.size
        @Expect(size1>0)
        try {
            task.pause()
            sleepFor(5.second)
            let stat2 = FileIo.stat(filePath)
            let stat3 = FileIo.stat(filePath)
            let size2 = stat2.size
            let size3 = stat3.size
            @Expect(size3,size2)
            task.start()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900007)
        } finally {
            remove(task.tid)
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath),false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3500
     * @tc.name      : test_request_035
     * @tc.desc      : test Request test_request_035
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_035() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)
        task.off(EventCallbackType.Progress)
        task.start()
        sleepFor(5.second)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        remove(task.tid)
    }
}
