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

export declare class ClassThatBothInheritsAnotherClassAndImplementsInterfaces {
    constructor ()
}

export declare class ClassThatImplementsInterfaces {
    constructor ()
}

export declare class ClassThatInheritsAnotherClass {
    constructor ()
}

export declare class NormalClass {
    mutableVariableThatHasNoInitialization: number
    mutableVariableThatHasInitialization: number
    immutableVariableThatHasNoInitialization: string | undefined
    immutableVariableThatHasInitialization: ArrayBuffer
    instanceMemberFunction(): void
    immutableInstanceMemberProperty: number
    mutableInstanceMemberProperty: string
    constructor (mutableVariableThatHasNoInitialization: number)
}

export declare class AbnormalClass {
    constructor ()
}

export declare class CJNativeClass {
    constructor ()
}


export declare function f(p: Array<string>, p1: Array<string>, p2: Map<string, string>): void

export declare function testCJ(): number
