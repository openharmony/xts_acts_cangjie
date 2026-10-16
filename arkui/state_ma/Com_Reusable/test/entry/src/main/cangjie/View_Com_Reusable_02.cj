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

import ohos.arkui.state_macro_manage.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkUI.*

public class Message2{
    public var value:String
    public init(val: String){
        value = val
    }
}

@Entry
@Component
public class View_Com_Reusable_02 {
    @State
    var switch: Bool = true
    public func build(){
        Column(){
            Button("Hello").fontSize(30).fontWeight(FontWeight.Bold).onClick({
                e: ClickEvent => switch = !switch
            })
            .id("comreusable")

            if(switch){
                Child2(message: Message("Child"))
            }
        }.height(100.percent).width(100.percent)
    }
}

@Reusable
@Component
class Child2 {
    @State var str:String = ""
    @State var str1:String = ""
    @State
    var message: Message = Message("about to reruse")
    
    protected override func aboutToReuse(params:ReuseParams){
        if(let Some(value) <- params.get<Message>("message")){
            message = value
            Hilog.info(0u32,"cangjietest","Recycle Child") 
            str = "abouttoreuse"
        }
    }

    protected override func aboutToRecycle(){
        Hilog.info(0u32,"cangjietest","aboutToRecycle")
        str1 = "abouttorecycle"
    }

    func build(){
        Column(){
            Text(this.message.value).id("comreusable1")
            Text(this.str).id("comreusable2")
            Text(this.str1).id("comreusable3")
        }.borderWidth(1).height(100)
    }

}
