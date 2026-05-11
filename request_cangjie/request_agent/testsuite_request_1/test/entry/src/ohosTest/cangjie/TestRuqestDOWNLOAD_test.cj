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
import std.unittest.*
import std.unittest.common.*
import kit.BasicServicesKit.Filter as RFilter
import kit.BasicServicesKit.*
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestRuqestDOWNLOAD {
    let fileURL = "https://img0.baidu.com/it/u=2637988091,3139593769&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=667"
    let token = "correctToken"

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0100
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()
        let gettask = getTask(getAbilityContext(), task.tid, token: token)
        @Expect(gettask.tid==task.tid)
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0200
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0300
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0400
     * @tc.name      : test_getTask04
     * @tc.desc      : test Request test_getTask04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask04() {
        let id = """
        multiline
            string
       """
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

        try {
            getTask(getAbilityContext(), id, token: token)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==21900006)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0500
     * @tc.name      : test_getTask06
     * @tc.desc      : test Request test_getTask06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask06() {
        let token2 = """
            multiline
                string
            """
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            token: token2
        )
        Hilog.info(0, "cangjietest", "test_getTask07: ${token2.size}")
        let task = create(getAbilityContext(), config)
        task.start()

        try {
            getTask(getAbilityContext(), task.tid, token: "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==401)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0600
     * @tc.name      : test_getTask05
     * @tc.desc      : test Request test_getTask05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTask05() {
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            token: "123456789"
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_0800
     * @tc.name      : test_show01
     * @tc.desc      : test Request test_show01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_show01() {
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        let taskInfo = show(task.tid)
        @Expect(taskInfo.tid==task.tid)
        @Expect(taskInfo.url==fileURL)
        @Expect(taskInfo.title=="download")
        @Expect(Action.Download.toString(),"Action.Download")
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1300
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()
        let taskInfo = touch(task.tid, token)
        @Expect(taskInfo.tid==task.tid)
        @Expect(taskInfo.url==fileURL)
        @Expect(taskInfo.title=="download")
        @Expect(Action.Download.toString(),"Action.Download")
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1500
     * @tc.name      : test_touch04
     * @tc.desc      : test Request test_touch04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_touch04() {
        let token2 = ""
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

        try {
            let taskInfo = touch(task.tid, token2)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code==401)
        } finally {
            remove(task.tid)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1600
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1700
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1800
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()

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
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_1900
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token
        )
        let task = create(getAbilityContext(), config)
        task.start()
        let arr = search()
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_2000
     * @tc.name      : test_search02
     * @tc.desc      : test Request test_search02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_search02() {
        let config = Config(
            Action.Download,
            fileURL,
            overwrite: true
        )
        let task = create(getAbilityContext(), config)
        task.start()
        let arr = search()
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_2100
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token,
            mode: Mode.Foreground
        )
        let task = create(getAbilityContext(), config)
        let createOnCallback = MyCallBack(touch(task.tid, token).progress)
        task.on(EventCallbackType.Completed, createOnCallback)
        task.start()
        let arr = search(filter: RFilter(mode: Mode.Foreground))
        @Expect(arr.contains(task.tid))
        remove(task.tid)
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_TestRuqestDOWNLOAD_2200
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
            Action.Download,
            fileURL,
            overwrite: true,
            token: token,
            mode: Mode.Foreground
        )
        let task = create(getAbilityContext(), config)
        let createOnCallback = MyCallBack(touch(task.tid, token).progress)
        task.on(EventCallbackType.Completed, createOnCallback)
        task.start()
        let arr = search(filter: RFilter(action: Action.Upload))
        @Expect(!arr.contains(task.tid))
        remove(task.tid)
    }
}
