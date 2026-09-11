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
public enum Season {
    | Spring
    | Summer
    | Autumn
    | Winter
}

@Interop[ArkTS]
public func getDefaultSeason(): Season {
    Season.Spring
}

@Interop[ArkTS]
public func rotateSeason(current: Season): Season {
    match (current) {
        case Season.Spring => Season.Summer
        case Season.Summer => Season.Autumn
        case Season.Autumn => Season.Winter
        case Season.Winter => Season.Spring
    }
}

@Interop[ArkTS]
public func isHotSeason(current: Season): Bool {
    match (current) {
        case Season.Summer => true
        case _ => false
    }
}

@Interop[ArkTS]
public func seasonFromOrdinal(index: Int32): Option<Season> {
    match (index) {
        case 0 => Some(Season.Spring)
        case 1 => Some(Season.Summer)
        case 2 => Some(Season.Autumn)
        case 3 => Some(Season.Winter)
        case _ => None
    }
}
