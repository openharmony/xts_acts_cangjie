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
import ohos.arkui.state_macro_manage.rawfile
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
        try {
            task.pause()
        } catch (e: BusinessException) {
            if (e.code == 21900007) {
                throw IllegalStateException("Current state is ${show(task.tid).progress.state.toString()}")
            }
        }
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
     * @tc.name      : test_request_02
     * @tc.desc      : test Request test_request_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_02() {
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
        try {
            task.pause()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,21900007)
            @Expect(e.message,"Operation with wrong task state")
        } finally {
            remove(task.tid)
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
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0500
     * @tc.name      : test_request_04
     * @tc.desc      : test Request test_request_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_04() {
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
            task.resume()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,21900007)
            @Expect(e.message,"Operation with wrong task state")
        } finally {
            remove(task.tid)
        }
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
            @Expect(e.message,"Operation with wrong task state")
        } finally {
            remove(task.tid)
            FileIo.unlink(filePath)
            @Expect(FileIo.access(filePath),false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_0800
     * @tc.name      : test_request_07
     * @tc.desc      : test Request test_request_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_07() {
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
            task.stop()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,21900007)
            @Expect(e.message,"Operation with wrong task state")
        } finally {
            remove(task.tid)
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
        @Expect(FileIo.access(filePath))
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
            } catch (e: BusinessException) {
                if (e.code == 21900007) {
                    throw IllegalStateException("Current state is ${show(task.tid).progress.state.toString()}")
                }
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
                @Expect(e.message,"Operation with wrong task state")
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
            @Expect(e.message,"Operation with wrong task state")
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
     * @tc.name      : test_request_012
     * @tc.desc      : test Request test_request_012
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_012() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true,
            begins: 9655322160
        )

        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)
        task.start()
        sleepFor(3.second)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1400
     * @tc.name      : test_request_013
     * @tc.desc      : test Request test_request_013
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_013() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true,
            begins: 0
        )

        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)
        task.start()
        sleepFor(1.5.second)
        @Expect(show(task.tid).progress.processed<=965533335)

        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1500
     * @tc.name      : test_request_014
     * @tc.desc      : test Request test_request_014
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_014() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            saveas: fileName,
            overwrite: true,
            begins: -1
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)

        task.start()
        sleepFor(1.5.second)
        @Expect(show(task.tid).progress.processed<=965533335)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1600
     * @tc.name      : test_request_015
     * @tc.desc      : test Request test_request_015
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_015() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            ends: -2,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)

        task.start()
        sleepFor(1.5.second)
        @Expect(show(task.tid).progress.processed<=965533335)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1700
     * @tc.name      : test_request_016
     * @tc.desc      : test Request test_request_016
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_016() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            ends: 10000000000,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)

        task.start()
        sleepFor(3.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1800
     * @tc.name      : test_request_017
     * @tc.desc      : test Request test_request_017
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_017() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            ends: -1,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)

        task.start()
        sleepFor(1.5.second)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_1900
     * @tc.name      : test_request_018
     * @tc.desc      : test Request test_request_018
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_018() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            gauge: false,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(4.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2000
     * @tc.name      : test_request_019
     * @tc.desc      : test Request test_request_019
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_019() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            gauge: true,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        task.start()
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2100
     * @tc.name      : test_request_020
     * @tc.desc      : test Request test_request_020
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_020() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            begins: 965532216,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)
        task.start()
        sleepFor(4.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2200
     * @tc.name      : test_request_021
     * @tc.desc      : test Request test_request_021
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_021() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            zipURL,
            overwrite: true,
            ends: 500000,
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)
        let callback = MyCallBack(show(task.tid).progress)
        task.on(EventCallbackType.Progress, callback)

        task.start()
        sleepFor(4.second)
        remove(task.tid)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
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
     * @tc.name      : test_request_027
     * @tc.desc      : test Request test_request_027
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_027() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            token: "1234567",
            saveas: fileName
        )
        try {
            let task = create(getAbilityContext(), config)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter verification failed, the length of token should between 8 and 2048 bytes")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_2900
     * @tc.name      : test_request_029
     * @tc.desc      : test Request test_request_029
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_029() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let config = Config(
            Action.Download,
            fileURL,
            token: "12345678",
            saveas: fileName
        )
        let task = create(getAbilityContext(), config)

        task.start()
        sleepFor(5.second)
        remove(task.tid)
        @Expect(FileIo.stat(filePath).size>0)
        FileIo.unlink(filePath)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3000
     * @tc.name      : test_request_030
     * @tc.desc      : test Request test_request_030
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_030() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let str = StringBuilder(r'a', 2048)
        let token = str.toString()
        let config = Config(
            Action.Download,
            fileURL,
            token: token,
            saveas: fileName
        )

        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(5.second)
        @Expect(FileIo.stat(filePath).size>0)
        FileIo.unlink(filePath)
        remove(task.tid)
        @Expect(FileIo.access(filePath),false)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRequest_3100
     * @tc.name      : test_request_031
     * @tc.desc      : test Request test_request_031
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_request_031() {
        let now = DateTime.now()
        let fileName = "test_${now.month}_${now.dayOfMonth}_${now.hour}_${now.minute}_${now.second}_${now.nanosecond}.txt"
        let filePath = "${DefaultSandBoxCache}/${fileName}"
        let str = StringBuilder(r'a', 2049)
        let token = str.toString()
        let config = Config(
            Action.Download,
            fileURL,
            token: token,
            saveas: fileName
        )
        try {
            let task = create(getAbilityContext(), config)
            task.start()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter verification failed, the length of token should between 8 and 2048 bytes")
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
            @Expect(e.message, "Operation with wrong task state")
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
