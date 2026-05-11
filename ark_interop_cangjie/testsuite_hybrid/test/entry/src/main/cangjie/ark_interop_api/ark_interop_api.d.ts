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

import { Season } from "libohos_app_cangjie_entry.so"

export declare class PersonClass {
    name: string
    age: number
    static build(): PersonClass
    static buildFromSeason(season: Season): PersonClass
}

export declare class ClassThatBothInheritsAnotherClassAndImplementsInterfaces {
}

export declare class ClassThatImplementsInterfaces {
}

export declare class ClassThatInheritsAnotherClass {
}

export declare class NormalClass {
    mutableVariableThatHasNoInitialization: number
    mutableVariableThatHasInitialization: number
    immutableVariableThatHasNoInitialization: string | undefined
    immutableVariableThatHasInitialization: ArrayBuffer
    instanceMemberFunction(): void
    immutableInstanceMemberProperty: number
    mutableInstanceMemberProperty: string
}

export declare class AbnormalClass {
}

export declare class CJNativeClass {
}

export declare interface CustomLib {
    CJNativeClass: {new (): CJNativeClass}
    AbnormalClass: {new (): AbnormalClass}
    NormalClass: {new (mutableVariableThatHasNoInitialization: number): NormalClass}
    ClassThatInheritsAnotherClass: {new (): ClassThatInheritsAnotherClass}
    ClassThatImplementsInterfaces: {new (): ClassThatImplementsInterfaces}
    ClassThatBothInheritsAnotherClassAndImplementsInterfaces: {new (): ClassThatBothInheritsAnotherClassAndImplementsInterfaces}
    getDefaultSeason(): Season
    rotateSeason(current: Season): Season
    isHotSeason(current: Season): boolean
    seasonFromOrdinal(index: number): Season | undefined
    PersonClass: { new(): PersonClass}
}