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

import ohos.ark_interop_macro.*
import ohos.ark_interop.*

@Interop[ArkTS]
public class PersonClass {
    public var name: String = ""
    public var age: Int32 = 0

    public init() {}

    public static func build(): PersonClass {
        return PersonClass()
    }

    public static func buildFromSeason(season: Season): PersonClass {
        let person = PersonClass()
        match (season) {
            case Season.Spring =>
                person.name = "breeze"
                person.age = 1
            case Season.Summer =>
                person.name = "sun"
                person.age = 2
            case Season.Autumn =>
                person.name = "harvest"
                person.age = 3
            case Season.Winter =>
                person.name = "ember"
                person.age = 4
        }
        return person
    }
}
