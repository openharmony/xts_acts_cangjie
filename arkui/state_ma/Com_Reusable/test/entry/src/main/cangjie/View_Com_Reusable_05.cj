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
import ohos.arkui.state_management.*
import kit.LocalizationKit.*
import std.collection.ArrayList

class MyDataSourceMt1 <: IDataSource<String>{
    public MyDataSourceMt1(){}
    private var dataArray:ArrayList<String> = ArrayList<String>()
    private var listenerOp: Option<DataChangeListener> = None

    public func totalCount(): Int64 {
        return dataArray.size
    }

    public func getData(index: Int64):String {
        return dataArray[index]
    }

    public func pushData(data:String):Unit{
        dataArray.add(data)
    }

    public func registerDataChangeListener(listener:DataChangeListener):Unit{
        listenerOp = listener
    }
    public func unregisterDataChangeListener(listener:DataChangeListener):Unit{
        listenerOp = None
    }
}

@Entry 
@Component
public class View_Com_Reusable_05 {
    let data: MyDataSourceMt = MyDataSourceMt()
    let scroller: Scroller = Scroller()

    protected override func aboutToAppear(){
        for(i in 0..20){
            data.pushData("${i}")
        }
    }
    @Builder
    func itemBuilderOne(item:String){
        Column(){
            ChildComponentA(item:item)
            ChildComponentB(item:item)
            ChildComponentC(item:item)
        }
    }

    @Builder
    func itemBuilderTwo(item:String){
        Column(){
            ChildComponentA(item:item)
            ChildComponentC(item:item)
            ChildComponentD(item:item)
        }
    }
    @Builder
    func itemBuilderThree(item:String){
        Column(){
            ChildComponentE(item:item)
            ChildComponentF(item:item)
            ChildComponentH(item:item)
        }
    }
    public func build(){
        Column(){
            Button("Scroller").id("reuse_mul_scroller")
            .onClick({
                e: ClickEvent => this.scroller.scrollEdge(Edge.Bottom)
            })
            List(space:40,scroller:scroller){
                LazyForEach(
                    data,
                    itemGeneratorFunc:{item:String,index:Int64 =>
                        ListItem(){
                            itemBuilderThree(item)
                        }
                        .backgroundColor(0xFFCCCCCC)
                        .width(100.percent)
                        .onAppear({
                            => Hilog.info(0u32,"Sample_ReusableComponent", "ListItem ${index} onAppear")
                        })

                    }
                )
            }
            .width(100.percent)
            .height(100.percent)
            .cachedCount(0)
        }
    }
}

@Reusable
@Component
class ChildComponentE{
    @State var item:String = ""
    protected override func aboutToReuse(params:ReuseParams){
        Hilog.info(0u32,"Sample_ReusableComponent", "ChildComponentA Reuse")
        if (let Some(value) <- params.get<String>("item")){
            item = value
        }        
    }
    protected override func aboutToRecycle(){
        Hilog.info(0u32,"Sample_ReusableComponent", "ChildComponentA Recycle")
    }

    func build(){
        Column(){
        Text("Item ${item} Child Component A")
            .fontSize(20)
            .margin(left:10)
            .fontColor(Color.Blue)
        .id("compA_${item}")    
        Grid(){
            ForEach([1,2,3,4,5,6,7,8,9],itemGeneratorFunc:{item:Int64,index:Int64 =>
                GridItem(){
                    Image(@r(app.media.startIcon)).height(20)
                }})
        }  
        .columnsTemplate("1fr 1fr 1fr 1fr 1fr") 
        .rowsTemplate("1fr 1fr 1fr 1fr")
        .columnsGap(10)
        .width(90.percent)
        .height(160)
    }
    .margin(left:10,right:10)
    .backgroundColor(0xFAEEE0)
}}

@Reusable
@Component
class ChildComponentF{
    @State var item: String = ""

    protected override func aboutToReuse(params:ReuseParams){
        if (let Some(value) <- params.get<String>("item")){
            item = value
        }        
    }

    func build(){
        Row(){
            Text("Item ${item} Child Component B")
                .fontSize(20)
                .fontColor(Color.Red)
                .margin(left:10)
        }
        .margin(left:10,right:10)
    }
}   

@Reusable
@Component
class ChildComponentG{
    @State var item: String = ""

    protected override func aboutToReuse(params:ReuseParams){
        if (let Some(value) <- params.get<String>("item")){
            item = value
        }        
    }

    func build(){
        Row(){
            Text("Item ${item} Child Component C")
                .fontSize(20)
                .fontColor(Color.Red)
                .margin(left:10)
        }
        .margin(left:10,right:10)
    }
} 


@Reusable
@Component
class ChildComponentH{
    @State var item: String = ""

    protected override func aboutToReuse(params:ReuseParams){
        if (let Some(value) <- params.get<String>("item")){
            item = value
        }        
    }

    func build(){
        Row(){
            Text("Item ${item} Child Component D")
                .fontSize(20)
                .fontColor(Color.Red)
                .margin(left:10)
        }
        .margin(left:10,right:10)
    }
} 