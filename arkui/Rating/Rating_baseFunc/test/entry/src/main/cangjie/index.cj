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

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.custom_component.ViewBuilder
import ohos.arkui.state_management.*
import ohos.base.*
public var modtestSuiteText: ObservedArrayList<String> =  ObservedArrayList<String>([""])
public var modtestCaseText: ObservedArrayList<String> =  ObservedArrayList<String>([""])
public var modtestView: ObservedArrayList<(CustomView)-> CustomView> = ObservedArrayList<(CustomView)-> CustomView>([{_ => cjtest(Option<CustomView>.None)}])
@Entry
@Component
class EntryView {
    @State
    var testSuiteText: ObservedArrayList<String> =  ObservedArrayList<String>([""])
    @State
    var testCaseText: ObservedArrayList<String> =  ObservedArrayList<String>([""])
    @State 
    var testView: ObservedArrayList<(CustomView)-> CustomView> = ObservedArrayList<(CustomView)-> CustomView>([{_ => cjtest(Option<CustomView>.None)}])
    @State
    var TestFlag = true

    public func aboutToAppear(){
       modtestSuiteText = this.testSuiteText 
       modtestCaseText = this.testCaseText
       modtestView = this.testView
    }

    func build() {
        Column() {
            Column(){
                TextArea(text: testSuiteText[0]).id("testSuiteText").onChange({
                    value:String =>
                            TestFlag = false
                })
                TextArea(text: testCaseText[0]).id("testSuiteCase").onChange({
                    value:String =>
                            TestFlag = false
                })

                Button('TestButton').id('testButton').onClick({
                    e=>
                        TestFlag = true
                })
            }

            if(TestFlag){
                Column(){
                    testView[0]()
                }
            }
        }
    }    
}

@Component
class cjtest{
    func build(){}
}
