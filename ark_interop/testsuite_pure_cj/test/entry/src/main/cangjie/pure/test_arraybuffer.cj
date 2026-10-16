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

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import ohos.ark_interop.*

@Test
class TestArrayBuffer {
    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToUInt8Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt8> = [0, 255, 128, 64, 32]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt8Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToInt8Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int8> = [-128, -64, 0, 64, 127]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt8Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToUInt16Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt16> = [0, 65535, 32768, 12345]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt16Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToInt16Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int16> = [-32768, -12345, 0, 12345, 32767]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt16Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToInt32Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int32> = [-2147483648, -1000000000, 0, 1000000000, 2147483647]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt32Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToUInt32Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt32> = [0, 4294967295, 2147483648, 1234567890]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt32Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToFloat32Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Float32> = [0.0, 3.14, -1.23, 1.23, 99999.999]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toFloat32Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToUInt64Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt64> = [0, 1000000000000000, UInt64.Max]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt64Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToInt64Array() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int64> = [-9223372036854775808, -1000000000, 9223372036854775807, 1234567890123456]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt64Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToFloat64() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Float64> = [-9223372036854775808.0, -1000000000.0, 9223372036854775807.0, 1234567890123456.0]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toFloat64Array()}
            @Expect(await(jsContext){buffer.toJSValue().isArrayBuffer()}, true)
            @Expect(result.size, data.size)
            for (i in 0..result.size) {
                @Expect(result[i], data[i])
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToArrayBuffer() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt8> = [0, 255, 128, 64, 32]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toArrayBufferJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "ArrayBuffer"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToUInt8ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt8> = [0, 255, 128, 64, 32]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt8ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Uint8Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToUInt8ClampedArray() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt8> = [0, 255, 128, 64, 32]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt8ClampedArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Uint8ClampedArray"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToInt8ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int8> = [-128, -64, 0, 64, 127]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt8ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Int8Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToUInt16ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt16> = [0, 65535, 32768, 12345]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt16ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Uint16Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToInt16ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int16> = [-32768, -12345, 0, 12345, 32767]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt16ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Int16Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToInt32ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int32> = [-2147483648, -1000000000, 0, 1000000000, 2147483647]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt32ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Int32Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToUInt32ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt32> = [0, 4294967295, 2147483648, 1234567890]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt32ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Uint32Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToFloat32ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Float32> = [0.0, 3.14, -1.23, 1.23, 99999.999]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toFloat32ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Float32Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToFloat64ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Float64> = [0.0, 3.1415926535, -123456.789, 9999999.888]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toFloat64ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "Float64Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToInt64ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<Int64> = [-223372036854775808, 1000000000, 9223372036854775807, -1234567890123456]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toInt64ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "BigInt64Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToUInt64ArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt64> = [9223372036854775808, 1000000000, 9223372036854775807, 1234567890123456]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            let result = await(jsContext) {buffer.toUInt64ArrayJSValue()}
            @Expect(await(jsContext){result.isArrayBuffer()}, true)
            @Expect(isInstanceOf(jsContext, result, "BigUint64Array"))
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferLength() {
        let jsContext = getJSContext()
        await(jsContext) {
            let length: Int32 = 10
            let buffer = jsContext.arrayBuffer(length)
            @Expect(buffer.toJSValue().isArrayBuffer(), true)
            @Expect(buffer.byteLength, length)
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testArrayBufferBytes() {
        let jsContext = getJSContext()
        await(jsContext) {
            let source: Array<Byte> = [0, 1, 2, 3, 4]
            let buffer = await(jsContext) {jsContext.arrayBuffer(source)}
            @Expect(Int64(await(jsContext){buffer.byteLength}), source.size)
            @Expect(Int64(await(jsContext){buffer.byteLength}), source.size)
            let received = await(jsContext) {buffer.readBytes()}
            await(jsContext) {buffer.readBytes()}
            @Expect(source, received)
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testArrayBufferUnsafe() {
        let jsContext = getJSContext()
        await(jsContext) {
            let source: CPointer<Byte> = unsafe {
                let result = LibC.malloc<Byte>(count: 100)
                for (i in 0..100) {
                    unsafe { result.write(i, UInt8(i)) }
                }
                result
            }
            let buffer = await(jsContext) {
                unsafe {
                    jsContext.arrayBuffer(source, 100, {
                        ptr => LibC.free(ptr)
                    })
                }
            }
            @Expect(withException<Exception> {
            await(jsContext) {
                unsafe {
                    jsContext.arrayBuffer(source, 0, {
                        ptr => LibC.free(ptr)
                    })
                }
            }
        })
            @Expect(await(jsContext){buffer.byteLength}, 100)
            let data = await(jsContext) {buffer.readBytes()}
            for (i in 0..100) {
                @Expect(data[i], UInt8(i))
            }
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testJSArrayBufferToArrayException() {
        let jsContext = getJSContext()
        await(jsContext) {
            let data: Array<UInt8> = [0]
            let buffer = await(jsContext) {jsContext.arrayBuffer(data)}
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toUInt16Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toInt16Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toUInt32Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toInt32Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toUInt64Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toInt64Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toFloat32Array()
            }
        })
            @Expect(withException<Exception> {
            await(jsContext){
                buffer.toFloat64Array()
            }
        })
        }
    }

    @TestCase
    @Tag[APILevel23, TestLevel0]
    func testToArrayJSValueHandler() {
        let jsContext = getJSContext()
        await(jsContext) {
            jsContext.arrayBuffer(16).toInt8ArrayJSValue().asArrayBuffer().toInt8ArrayJSValue()
            jsContext.arrayBuffer(16).toUInt8ArrayJSValue().asArrayBuffer().toUInt8ArrayJSValue()
            jsContext.arrayBuffer(16).toUInt8ClampedArrayJSValue().asArrayBuffer().toUInt8ClampedArrayJSValue()
            jsContext.arrayBuffer(16).toUInt16ArrayJSValue().asArrayBuffer().toUInt16ArrayJSValue()
            jsContext.arrayBuffer(16).toInt16ArrayJSValue().asArrayBuffer().toInt16ArrayJSValue()
            jsContext.arrayBuffer(16).toUInt32ArrayJSValue().asArrayBuffer().toUInt32ArrayJSValue()
            jsContext.arrayBuffer(16).toInt32ArrayJSValue().asArrayBuffer().toInt32ArrayJSValue()
            jsContext.arrayBuffer(16).toUInt64ArrayJSValue().asArrayBuffer().toUInt64ArrayJSValue()
            jsContext.arrayBuffer(16).toInt64ArrayJSValue().asArrayBuffer().toInt64ArrayJSValue()
            jsContext.arrayBuffer(16).toFloat32ArrayJSValue().asArrayBuffer().toFloat32ArrayJSValue()
            jsContext.arrayBuffer(16).toFloat64ArrayJSValue().asArrayBuffer().toFloat64ArrayJSValue()
        }
    }
}

func isInstanceOf(jsContext: JSContext, value: JSValue, className: String): Bool {
    if (await(jsContext) {!value.isObject()}) {
        println("target is not object")
        return false
    }
    let object = await(jsContext) {value.asObject()}
    let classValue = await(jsContext) {jsContext.global[className]}
    if (!await(jsContext) {classValue.isClass()}) {
        println("target class not exist: '${className}'")
        return false
    }
    await(jsContext) {object.instanceOf(classValue.asClass())}
}

func withException<E>(callback: () -> Unit): Bool where E <: Exception {
    try {
        callback()
        false
    } catch (_: E) {
        true
    }
}
