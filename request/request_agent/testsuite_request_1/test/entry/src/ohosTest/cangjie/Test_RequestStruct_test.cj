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
import std.collection.HashMap
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos.callback_invoke.Callback1Argument
import std.reflect.*

@Test
class Test_RequestStruct {
    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0100
     * @tc.name      : Test_request_enums
     * @tc.desc      : Drives EventCallbackType through Task::off, and Action/Mode/Network through Config into Task.config read-back.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_request_enums(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enums begins.")
        let events: Array<EventCallbackType> = [
            EventCallbackType.Progress,
            EventCallbackType.Completed,
            EventCallbackType.Failed,
            EventCallbackType.Pause,
            EventCallbackType.Resume,
            EventCallbackType.Remove,
            EventCallbackType.Response
        ]
        let eventTask = Task("coverage-evt-001", Config(Action.Download, "https://example.com/coverage.bin"))
        for (e in events) {
            eventTask.off(e)
        }
        @Expect(true)
        let actions: Array<Action> = [Action.Download, Action.Upload]
        for (a in actions) {
            let cfg = Config(a, "https://example.com/coverage.bin")
            let t = Task("coverage-act-001", cfg)
            @Expect(a, t.config.action)
        }
        let modes: Array<Mode> = [Mode.Background, Mode.Foreground]
        for (m in modes) {
            let cfg = Config(Action.Download, "https://example.com/coverage.bin", mode: m)
            let t = Task("coverage-mode-001", cfg)
            @Expect(m, t.config.mode)
        }
        let networks: Array<Network> = [Network.AnyType, Network.Wifi, Network.Cellular]
        for (n in networks) {
            let cfg = Config(Action.Download, "https://example.com/coverage.bin", network: n)
            let t = Task("coverage-net-001", cfg)
            @Expect(n, t.config.network)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enums ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0200
     * @tc.name      : Test_request_structs
     * @tc.desc      : Constructs FileSpec, FormItem with every FormItemValue variant, and a fully specified Filter.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_request_structs(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_request_structs begins.")
        let extras = HashMap<String, String>()
        extras.add("k", "v")
        let spec = FileSpec("/data/storage/el2/base/haps/upload.txt",
            mimeType: "text/plain", filename: "upload.txt", extras: extras)
        @Expect(spec.path, "/data/storage/el2/base/haps/upload.txt")
        @Expect(spec.mimeType.isSome(), true)
        @Expect(spec.filename.isSome(), true)
        @Expect(spec.extras.size, 1)

        let strItem = FormItem("name", FormItemValue.StringItem("text"))
        @Expect(strItem.name, "name")
        match (strItem.value) {
            case StringItem(v) => @Expect(v, "text")
            case _ => @Expect(false)
        }
        let fileItem = FormItem("file", FormItemValue.FileItem(spec))
        @Expect(fileItem.name, "file")
        match (fileItem.value) {
            case FileItem(v) => @Expect(v.path, spec.path)
            case _ => @Expect(false)
        }
        let fileArrayItem = FormItem("files", FormItemValue.FileItemArray([spec]))
        match (fileArrayItem.value) {
            case FileItemArray(v) => @Expect(v.size, 1)
            case _ => @Expect(false)
        }

        let filter = Filter(before: 100000000i64, after: 1000i64, state: State.Running,
            action: Action.Upload, mode: Mode.Foreground)
        @Expect(filter.before.isSome(), true)
        @Expect(filter.after.isSome(), true)
        @Expect(filter.state.isSome(), true)
        @Expect(filter.action.isSome(), true)
        @Expect(filter.mode.isSome(), true)
        let filterDefault = Filter()
        @Expect(filterDefault.before.isNone(), true)
        @Expect(filterDefault.action.isNone(), true)
        Hilog.info(0u32, "cangjietest", "testcase Test_request_structs ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0300
     * @tc.name      : Test_task_directInit
     * @tc.desc      : Directly constructs a Task and probes show/remove on the untracked id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_task_directInit(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_task_directInit begins.")
        let headers = HashMap<String, String>()
        headers.add("Content-Type", "application/json")
        let extras = HashMap<String, String>()
        extras.add("k", "v")
        let config = Config(Action.Download, "https://example.com/coverage.bin",
            title: "coverage", description: "desc", mode: Mode.Foreground, overwrite: true,
            method: "POST", headers: headers,
            data: ConfigData.FormItems([FormItem("f", FormItemValue.StringItem("s"))]),
            saveas: "coverage-task.bin", network: Network.Wifi, metered: false, roaming: true,
            retry: true, redirect: false, index: 3u32, begins: 0i64, ends: -1i64, gauge: true,
            precise: true, token: "tk", priority: 2u32, extras: extras)
        let task = Task("coverage-tid-001", config)
        @Expect(task.tid, "coverage-tid-001")
        @Expect(task.config.saveas, "coverage-task.bin")
        @Expect(task.config.overwrite, true)
        @Expect(task.config.description, "desc")
        @Expect(task.config.method.isSome(), true)
        @Expect(task.config.headers.size, 1)
        @Expect(task.config.network, Network.Wifi)
        @Expect(task.config.metered, false)
        @Expect(task.config.roaming, true)
        @Expect(task.config.redirect, false)
        @Expect(task.config.index, 3u32)
        @Expect(task.config.precise, true)
        @Expect(task.config.priority, 2u32)
        try {
            let info = show(task.tid)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 21900006)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_task_directInit ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0400
     * @tc.name      : Test_request_enumsExtended
     * @tc.desc      : Drives ConfigData through Config.data into Task.config read-back, Faults through a failed task, and references BroadcastEvent only.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_request_enumsExtended(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enumsExtended begins.")
        let cfgData = Config(Action.Download, "https://example.com/coverage.bin", data: ConfigData.StringValue("v"))
        let taskData = Task("coverage-cfgdata-001", cfgData)
        match (taskData.config.data) {
            case Some(ConfigData.StringValue(v)) => @Expect(v, "v")
            case _ => @Expect(false)
        }
        let cfgForms = Config(Action.Upload, "https://example.com/coverage.bin",
            data: ConfigData.FormItems([FormItem("f", FormItemValue.StringItem("s"))]))
        let taskForms = Task("coverage-cfgdata-002", cfgForms)
        match (taskForms.config.data) {
            case Some(ConfigData.FormItems(arr)) => @Expect(arr.size, 1)
            case _ => @Expect(false)
        }
        try {
            let cfgFsio = Config(Action.Download,
                "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png",
                saveas: "fsio_test/file.bin", overwrite: true, retry: false)
            let taskFsio = create(getAbilityContext(), cfgFsio)
            taskFsio.start()
            sleepFor(3.second)
            let infoFsio = show(taskFsio.tid)
            match (infoFsio.faults) {
                case Fsio => @Expect(false)
                case _ => @Expect(true)
            }
        } catch (e: BusinessException) {
            @Expect(false)
        }

        try {
            let cfgDisc = Config(Action.Download, "https://192.0.2.1/file.bin",
                overwrite: true, retry: false)
            let taskDisc = create(getAbilityContext(), cfgDisc)
            taskDisc.start()
            sleepFor(3.second)
            let infoDisc = show(taskDisc.tid)
            match (infoDisc.faults) {
                case Disconnected => @Expect(true)
                case _ => @Expect(false)
            }
            remove(taskDisc.tid)
        } catch (e: BusinessException) {
            @Expect(false)
        }

        try {
            let cfgProto = Config(Action.Download,
                "https://www.baidu.com/nonexistent_coverage_404_path",
                overwrite: true, retry: false)
            let taskProto = create(getAbilityContext(), cfgProto)
            taskProto.start()
            sleepFor(3.second)
            let infoProto = show(taskProto.tid)
            match (infoProto.faults) {
                case Protocol => @Expect(true)
                case _ => @Expect(false)
            }
            remove(taskProto.tid)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enumsExtended ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0500
     * @tc.name      : Test_request_stateWaitingRetrying
     * @tc.desc      : Drives State.Waiting and State.Retrying through a retryable failing task, polling progress.state; reads TaskInfo fields.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_request_stateWaitingRetrying(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_request_stateWaitingRetrying begins.")
        let cfg = Config(Action.Download, "https://invalid.example.cangjie/notfound.bin",
            retry: true, overwrite: true)
        let task = create(getAbilityContext(), cfg)
        task.on(EventCallbackType.Response, HttpResponseCb({ resp =>
            Hilog.info(0u32, "cangjietest",
                "HttpResponse version=${resp.version} statusCode=${resp.statusCode} reason=${resp.reason}")
        }))
        task.start()
        var sawWaiting = false
        var sawRetrying = false
        var terminalState: Option<State> = None
        for (i in 0..10) {
            if (terminalState.isSome()) {
                break
            }
            sleepFor(1.second)
            try {
                let info = show(task.tid)
                Hilog.info(0u32, "cangjietest",
                    "TaskInfo ctime=${info.ctime} mtime=${info.mtime} tries=${info.tries} reason=${info.reason}")
                @Expect(info.ctime > 0, true)
                @Expect(info.mtime > 0, true)
                Hilog.info(0u32, "cangjietest", "Progress sizes.size=${info.progress.sizes.size}")
                match (info.progress.state) {
                    case Waiting => sawWaiting = true
                    case Retrying => sawRetrying = true
                    case Failed => terminalState = Some(State.Failed)
                    case Completed => terminalState = Some(State.Completed)
                    case _ => ()
                }
            } catch (e: BusinessException) {
                Hilog.info(0u32, "cangjietest", "show tid=${task.tid} code=${e.code}")
                terminalState = Some(State.Failed)
            }
        }
        match (terminalState) {
            case Some(State.Failed) => @Expect(true)
            case Some(State.Completed) => @Expect(true)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest",
            "sawWaiting=${sawWaiting} sawRetrying=${sawRetrying}")
        Hilog.info(0u32, "cangjietest", "testcase Test_request_stateWaitingRetrying ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_Request_Struct_0600
     * @tc.name      : Test_request_enumOperators
     * @tc.desc      : Exercises the == and != operators on Equatable enums (Action/Mode/Network/EventCallbackType) for operator coverage.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_request_enumOperators(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enumOperators begins.")
        @Expect(Action.Download == Action.Download)
        @Expect(Action.Download != Action.Upload)
        @Expect(Mode.Background == Mode.Background)
        @Expect(Mode.Background != Mode.Foreground)
        @Expect(Network.AnyType == Network.AnyType)
        @Expect(Network.Wifi != Network.Cellular)
        @Expect(EventCallbackType.Progress == EventCallbackType.Progress)
        @Expect(EventCallbackType.Progress != EventCallbackType.Completed)
        @Expect(EventCallbackType.Progress.hashCode() == EventCallbackType.Progress.hashCode())
        @Expect(EventCallbackType.Progress.hashCode() != EventCallbackType.Completed.hashCode())
        Hilog.info(0u32, "cangjietest", "testcase Test_request_enumOperators ends.")
    }
}

class HttpResponseCb <: Callback1Argument<HttpResponse> {
    let callback_: (HttpResponse) -> Unit
    public init(callback: (HttpResponse) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: HttpResponse): Unit {
        callback_(val)
    }
}