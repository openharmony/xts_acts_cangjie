/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue}

func testArrayBuffer00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isArrayBuffer())
    let arrayBuffer = jsCallInfo[0].asArrayBuffer()
    Assert.equals(arrayBuffer.byteLength, 10)
    Assert.equals(arrayBuffer.readBytes(), Array(10, repeat: 0u8))
    jsContext.undefined().toJSValue()
}

func testArrayBuffer01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isArrayBuffer())
    let arrayBuffer = jsCallInfo[0].asArrayBuffer()
    Assert.equals(arrayBuffer.byteLength, 10)
    jsContext.undefined().toJSValue()
}

func testArrayBuffer02(jsContext: JSContext, _: JSCallInfo): JSValue {
    let arrayBuffer = jsContext.arrayBuffer(16)
    arrayBuffer.toJSValue()
}

func testArrayBuffer03(jsContext: JSContext, _: JSCallInfo): JSValue {
    let array = Array<UInt8>(16, repeat: 0)
    let arrayBuffer = jsContext.arrayBuffer(array)
    arrayBuffer.toJSValue()
}

func testArrayBuffer04(jsContext: JSContext, _: JSCallInfo): JSValue {
    let numberOfBytes: Int32 = 16
    let arrayBuffer = unsafe {
        let p1 = CPointer<Byte>(malloc(UIntNative(numberOfBytes)))
        for (index in 0..numberOfBytes) {
            (p1 + Int64(index)).write(0)
        }
        jsContext.arrayBuffer(p1, numberOfBytes, {p: CPointer<UInt8> => free(CPointer<Unit>(p))})
    }
    arrayBuffer.toJSValue()
}

func testArrayBuffer05(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    let arrayBuffer = jsCallInfo[0].asArrayBuffer()
    Assert.equals(arrayBuffer.byteLength, 30)
    Assert.equals(
        arrayBuffer.readBytes().toString(),
        "[92, 160, 229, 96, 65, 137, 55, 65, 241, 99, 204, 221, 209, 132, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 11]"
    )
    jsContext.undefined().toJSValue()
}

func testArrayBuffer06(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    let arrayBuffer = jsCallInfo[0].asArrayBuffer()
    Assert.equals(arrayBuffer.byteLength, 32)
    Assert.equals(
        arrayBuffer.readBytes().toString(),
        "[64, 92, 160, 229, 96, 65, 137, 55, 65, 241, 99, 204, 221, 209, 132, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 11, 0]"
    )
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testArrayBuffer00"] = jsContext.function(testArrayBuffer00).toJSValue()
    jsObject["testArrayBuffer01"] = jsContext.function(testArrayBuffer01).toJSValue()
    jsObject["testArrayBuffer02"] = jsContext.function(testArrayBuffer02).toJSValue()
    jsObject["testArrayBuffer03"] = jsContext.function(testArrayBuffer03).toJSValue()
    jsObject["testArrayBuffer04"] = jsContext.function(testArrayBuffer04).toJSValue()
    jsObject["testArrayBuffer05"] = jsContext.function(testArrayBuffer05).toJSValue()
    jsObject["testArrayBuffer06"] = jsContext.function(testArrayBuffer06).toJSValue()
}
