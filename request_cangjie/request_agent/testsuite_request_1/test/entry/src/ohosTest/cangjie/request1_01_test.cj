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

import std.unittest.testmacro.*
import ohos.arkui.state_macro_manage.r
import std.unittest.*
import std.unittest.common.*
import kit.BasicServicesKit.Filter as RFilter
import kit.BasicServicesKit.*
import ohos.file.fs.*
import ohos.business_exception.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class NewTestRuqestUPLOAD {
    let fileURL = "https://img0.baidu.com/it/u=285032715,784861620&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=800"
    let token = "correctToken"
    let fileName = "test.txt"
    let filePath = "/data/storage/el2/base/haps/"

    public func afterEach(): Unit {
        sleepFor(2.second)
    }

    public func beforeAll(): Unit {
        try {
            let file = FileIo.open(
                filePath + fileName,
                mode: (OpenMode.READ_WRITE | OpenMode.CREATE)
            )
            let str = "hello, world"
            let writeLen = FileIo.write(file.fd, str)
            FileIo.close(file)
        } catch (e: Exception) {
            Hilog.error(0, "cangjietest", "beforeAll error: ${e.message}")
        }
    }

    let fileSpec = FileSpec("/data/storage/el2/base/haps/test.txt", filename: "test.txt")

    let dataForm = ConfigData.FormItems(
        [
            FormItem(
                "createTest",
                FormItemValue.FileItem(fileSpec)
            )
        ]
    )

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_0100
     * @tc.name      : test_getTask01
     * @tc.desc      : test Request test_getTask01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask01() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(5.second)
        let gettask = getTask(getAbilityContext(), task.tid, token: token)
        @Expect(gettask.tid==task.tid)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_0200
     * @tc.name      : test_getTask02
     * @tc.desc      : test Request test_getTask02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask02() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            getTask(getAbilityContext(), "", token: token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_0300
     * @tc.name      : test_getTask03
     * @tc.desc      : test Request test_getTask03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask03() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            getTask(getAbilityContext(), "$%^!@&*", token: token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_0500
     * @tc.name      : test_getTask05
     * @tc.desc      : test Request test_getTask05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask05() {
        let config = Config(Action.Upload, fileURL, overwrite: true, data: dataForm, token: "123456789",
            mode: Mode.Background)
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            getTask(getAbilityContext(), task.tid, token: "12345678910")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_0700
     * @tc.name      : test_show01
     * @tc.desc      : test Request test_show01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_show01() {
        let config = Config(Action.Upload, fileURL, data: dataForm, overwrite: true, mode: Mode.Background)
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        let taskInfo = show(task.tid)
        @Expect(taskInfo.tid==task.tid)
        @Expect(taskInfo.url==fileURL)
        @Expect(taskInfo.title,"upload")
        @Expect(Action.Upload.toString(),"Action.Upload")
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1200
     * @tc.name      : test_touch01
     * @tc.desc      : test Request test_touch01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch01() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        let taskInfo = touch(task.tid, token)
        @Expect(taskInfo.tid==task.tid)
        @Expect(taskInfo.url==fileURL)
        @Expect(taskInfo.title=="upload")
        @Expect(Action.Upload.toString(),"Action.Upload")
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1400
     * @tc.name      : test_touch04
     * @tc.desc      : test Request test_touch04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch04() {
        let token1 = ""
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            let taskInfo = touch(task.tid, token1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==401)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1500
     * @tc.name      : test_touch05
     * @tc.desc      : test Request test_touch05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch05() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            let taskInfo = touch("", token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1600
     * @tc.name      : test_touch06
     * @tc.desc      : test Request test_touch06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch06() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            let taskInfo = touch("$%^!@&*", token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1700
     * @tc.name      : test_touch07
     * @tc.desc      : test Request test_touch07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch07() {
        let id = """
            multiline
            string
            """
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        try {
            let taskInfo = touch(id, token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1800
     * @tc.name      : test_search01
     * @tc.desc      : test Request test_search01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_search01() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Background
        )
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        let arr = search()
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_1900
     * @tc.name      : test_search02
     * @tc.desc      : test Request test_search02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_search02() {
        let config = Config(Action.Upload, fileURL, data: dataForm, overwrite: true, mode: Mode.Background)
        let task = create(getAbilityContext(), config)
        task.start()
        sleepFor(0.5.second)
        let arr = search()
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_2000
     * @tc.name      : test_search03
     * @tc.desc      : test Request test_search03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_search03() {
        let config = Config(
            Action.Upload,
            fileURL,
            data: dataForm,
            overwrite: true,
            token: token,
            mode: Mode.Foreground
        )
        let task = create(getAbilityContext(), config)
        let createOnCallback = MyCallBack(touch(task.tid, token).progress)
        task.on(EventCallbackType.Completed, createOnCallback)
        task.start()
        sleepFor(3.second)
        let arr = search(filter: RFilter(action: Action.Upload))
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_NewTestRuqestUPLOAD_2100
     * @tc.name      : test_search04
     * @tc.desc      : test Request test_search04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_search04() {
        let config = Config(
            Action.Upload,
            fileURL,
            overwrite: true,
            data: dataForm,
            token: token,
            mode: Mode.Foreground
        )
        let task = create(getAbilityContext(), config)
        let createOnCallback = MyCallBack(touch(task.tid, token).progress)
        task.on(EventCallbackType.Completed, createOnCallback)
        task.start()
        sleepFor(3.second)
        let arr = search(filter: RFilter(action: Action.Download))
        @Expect(!arr.contains(task.tid))
        remove(task.tid)
    }
}
