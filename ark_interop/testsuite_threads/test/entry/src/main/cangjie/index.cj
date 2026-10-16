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
package ohos_app_cangjie_entry

import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.base.*
import ohos.ark_interop.JSRuntime
import std.collection.*
import kit.AbilityKit.Want
import std.time.DateTime
import std.sync.*
import ohos.hilog.Hilog

@Entry
@Component
class EntryView {
    @State
    var currentStage:String="None"

    func build() {
        Row {
            Column {
                Button("onClick mainThread")
                    .onClick({
                        evt => createJSRuntimeAndCheck("onClick mainThread")
                    })
                    .fontSize(30)
                    .height(80)
                Button("waitForEventWithName")
                    .onClick({
                        evt => waitForEventWithName("onWindowStageCreate MainThread") {evt => this.currentStage=evt.name}
                    })
                    .fontSize(30)
                    .height(80)
                Text("${this.currentStage}").id("currentStage")
            }.width(100.percent)
        }.height(100.percent)
    }
}

public func createJSRuntimeAndCheck(id: String): Unit {
    let jsRuntime = JSRuntime()
    let jsContext = jsRuntime.mainContext
    let jsNumber = jsContext.number(114.514)
    EventBuilder(id).yield()
}

public class Event {
    public Event(public let timeStamp: DateTime, public let name: String, public let content: String) {}
}

public class LogManager {
    public let eventSequence: ArrayList<Event> = ArrayList<Event>()
    public let eventMap: HashMap<String, Event> = HashMap<String, Event>()
    private let mutex = Mutex()

    public func appendEvent(event: Event): Unit {
        synchronized(this.mutex) {
            this.eventSequence.add(event)
            this.eventMap.add(event.name, event)
        }
    }

    public func findEventWithName(eventName: String): Option<Event> {
        synchronized(this.mutex) {
            this.eventMap.get(eventName)
        }
    }
}

public let logManager: LogManager = LogManager()

public func logEvent(eventName: String, eventContent: String): Unit {
    let event = Event(DateTime.now(), eventName, eventContent)
    logManager.appendEvent(event)
    Hilog.info(0, "CangjieTest", "[${eventName}]: ${eventContent}")
}

public class EventBuilder {
    public EventBuilder(private let eventName: String) {}
    public let properties: HashMap<String, String> = HashMap<String, String>()

    public func add(propertyName: String, propertyValue: String): EventBuilder {
        this.properties.add(propertyName, propertyValue)
        this
    }

    public func add(propertyName: String, propertyValue: Bool): EventBuilder {
        this.properties.add(propertyName, propertyValue.toString())
        this
    }

    public func add(propertyName: String, propertyValue: Int64): EventBuilder {
        this.properties.add(propertyName, propertyValue.toString())
        this
    }

    public func add(propertyName: String, want: Want): EventBuilder {
        let wantStr = "Want{bundleName=${want.bundleName}, moduleName=${want.moduleName}, abilityName=${want.abilityName}}"
        this.properties.add(propertyName, wantStr)
        this
    }

    public func yield(): Unit {
        let content = String.join(
            properties |> map { kv => "${kv[0]}=${kv[1]}" } |> collectArray,
            delimiter: ", "
        )
        logEvent(eventName, content)
    }
}

public func waitForEventWithName(eventName: String, timeOut!: Duration = Duration.Max, processor!: (Event) -> Unit): Unit {
    let monitor = Monitor()
    let result = Box(None<Event>)
    let checker = Timer.repeat(Duration.Zero, Duration.millisecond * 1, {
        => match (logManager.findEventWithName(eventName)) {
            case None => ()
            case Some(event) =>
                result.value = event
                synchronized(monitor) { monitor.notify() }
        }
    })
    synchronized(monitor) { monitor.wait(timeout: timeOut) }
    checker.cancel()
    match (result.value) {
        case None => throw Exception("waitForEventWithName 超时: ${timeOut}")
        case Some(event) => processor(event)
    }
}



