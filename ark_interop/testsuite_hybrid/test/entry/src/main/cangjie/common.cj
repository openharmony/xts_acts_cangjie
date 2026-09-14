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


import std.collection.{forEach}
import std.math.{MathExtension, abs}
import std.convert.Formattable

const numberValue = 114514
const booleanValue = true

func functionThatReturnsUnit() {
    ()
}

const int64Value = 114514i64
const uint64Value = 114514u64
const float64Value = 114.514f64
const stringValue = "hello world"
let arrayBufferValue: Array<Byte> = [1, 2, 3, 4, 5]

type complexFunctionType = (((((Unit) -> Bool) -> Int64) -> Float64) -> Option<Float16>) -> Array<Byte>
