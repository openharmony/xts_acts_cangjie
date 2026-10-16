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

export declare class PersonClass {
    name: string;
    age: number;
    static build(): PersonClass;
    static buildFromSeason(season: Season): PersonClass;
    constructor();
}

export declare class ClassThatBothInheritsAnotherClassAndImplementsInterfaces {
    constructor();
}

export declare class ClassThatImplementsInterfaces {
    constructor();
}

export declare class ClassThatInheritsAnotherClass {
    constructor();
}

export declare class NormalClass {
    mutableVariableThatHasNoInitialization: number;
    mutableVariableThatHasInitialization: number;
    immutableVariableThatHasNoInitialization: string | undefined;
    immutableVariableThatHasInitialization: ArrayBuffer;
    instanceMemberFunction(): void;
    immutableInstanceMemberProperty: number;
    mutableInstanceMemberProperty: string;
    constructor(mutableVariableThatHasNoInitialization: number);
}

export declare class AbnormalClass {
    constructor();
}

export declare class CJNativeClass {
    constructor();
}

export declare function f(p: Array<string>, p1: Array<string>, p2: Map<string, string>): void;
export declare function f(p: Array<string>, p1: Array<string>, _: Map<string, string>): void;

export declare function testLoadAbc00(): void;

export declare function testArray01<T>(array: Array<T>): void;
export declare function testArray02(): Array<number | boolean>;

export declare function testArrayBuffer00(arrayBuffer: ArrayBuffer): void;
export declare function testArrayBuffer01(arrayBuffer: ArrayBuffer): void;
export declare function testArrayBuffer02(): ArrayBuffer;
export declare function testArrayBuffer03(): ArrayBuffer;
export declare function testArrayBuffer04(): ArrayBuffer;
export declare function testArrayBuffer05(arrayBuffer: ArrayBuffer): void;
export declare function testArrayBuffer06(arrayBuffer: ArrayBuffer): void;

export declare function testBigInt00(bigInt: bigint): void;
export declare function testBigInt01(): bigint;
export declare function testBigInt02(bigInt: bigint): void;
export declare function testBigInt03(bigInt: bigint): void;
export declare function testBigInt04(bigInt: bigint): void;
export declare function testBigInt05(bigInt: bigint): void;
export declare function testBigInt06(): bigint;
export declare function testBigInt07(): bigint;
export declare function testBigInt08(): bigint;
export declare function testBigInt09(): bigint;
export declare function testBigInt10(): bigint;
export declare function testBigInt11(): bigint;
export declare function testBigInt12(): bigint;
export declare function testBigInt13(): bigint;
export declare function testBigInt13(bigInt: bigint): void;
export declare function testBigInt14(bigInt: bigint): void;
export declare function testBigInt15(bigInt: bigint): void;
export declare function testBigInt16(bigInt: bigint): void;
export declare function testBigInt17(bigInt: bigint): void;
export declare function testBigInt18(bigInt: bigint): void;
export declare function testBigInt19(bigInt: bigint): void;
export declare function testBigInt20(bigInt: bigint): void;
export declare function testBigInt21(bigInt: bigint): void;
export declare function testBigInt22(bigInt: bigint): void;
export declare function testBigInt23(bigInt: bigint): void;
export declare function testBigInt24(bigInt: bigint): void;
export declare function testBigInt25(bigInt: bigint): void;
export declare function testBigInt26(bigInt: bigint): void;
export declare function testBigInt27(bigInt: bigint): void;
export declare function testBigInt28(bigInt: bigint): void;
export declare function testBigInt29(bigInt: bigint): void;
export declare function testBigInt30(bigInt: bigint): void;
export declare function testBigInt31(bigInt: bigint): void;
export declare function testBigInt32(bigInt: bigint): void;
export declare function testBigInt33(bigInt: bigint): void;
export declare function testBigInt34(bigInt: bigint): void;
export declare function testBigInt35(bigInt: bigint): void;
export declare function testBigInt36(bigInt: bigint): void;
export declare function testBigInt37(bigInt: bigint): void;
export declare function testBigInt38(bigInt: bigint): void;
export declare function testBigInt39(bigInt: bigint): void;

export declare function testException00(): void;
export declare function testException01(f: () => void): void;

export declare function testExternal00(o: MyObject_test_external_00): void;
declare class MyObject_test_external_00 {
    constructor(name: string, age: number, grade: number);
    name: string;
    age: number;
    grade: number;
}

export declare function testFunction00(f: (a: number) => number): void;
export declare function testFunction01(f: (a: number) => number): void;
export declare function testFunction02(f: (a: number) => number): void;
export declare function testFunction03(f: (a: number) => number): void;
export declare function testFunction04(f: (a: number) => number): void;
export declare function testFunction05(f: (a: number) => number): void;
export declare function testFunction06(): (a: number) => number;

type MyClass_test_instanceof_01 = new () => MyClass_test_instanceof_01;
type MyClass_test_instanceof_02 = new () => MyClass_test_instanceof_02;
type MyClass_test_instanceof_03 = new () => MyClass_test_instanceof_03;
export declare function testInstanceOf00(): void;
export declare function testInstanceOf01(
    myObject: MyClass_test_instanceof_01,
    constructor: new () => MyClass_test_instanceof_01
): void;
export declare function testInstanceOf02(myObject: MyClass_test_instanceof_02): void;
export declare function testInstanceOf03(student: MyClass_test_instanceof_03): void;

export declare function testJSArrayRangeMismatchException00(): void;
export declare function testJSThreadMismatchException00(f: () => void): void;

export declare function testPostJSTask00(): void;
export declare function testPostJSTask01(
    a: number,
    b: number,
    f: (a: number, b: number) => number
): Promise<number>;

export declare function testPromise00(promise: Promise<number>): void;
export declare function testPromise01(promise: Promise<number>): void;
export declare function testPromise02(): Promise<string>;
export declare function testPromise03(): Promise<string>;
export declare function testPromise04(): Promise<string>;
export declare function testPromise05(): Promise<number>;

export declare function testRegisterAfterStaticInit00(): void;
export declare function testRegisterAfterStaticInit00_00(): void;

export declare function testRegisterFunc00(): string;
export declare function testRegisterFunc01(): string;

export declare function testRegisterClass00(): new (name: string, age: number) => IPerson;
export declare interface IPerson {
    name: string;
    age: number;
}

export declare function testRegisterOverride00(): () => number;
export declare function testRegisterOverride01(): number;

export declare function testString00(s: string): void;
export declare function testEndsWith(): boolean;

export declare interface LibTest {
    "if": number;
    "var": number;
    $myName: boolean;
    _myName: number;
    my$Name: string;
    "我的名字": number;
    my名字: boolean;
    "myUnicodeame": number;
}

export declare const testRegisterModule00: undefined;
export declare const testRegisterModule01: null;
export declare const testRegisterModule02: boolean;
export declare const testRegisterModule03: number;
export declare const testRegisterModule04: string;
export declare const testRegisterModule05: (a: number, b: number) => number;
export declare const testRegisterModule06: new (name: string, age: number) => IPerson;
export declare const testRegisterModule07: Symbol;
export declare const testRegisterModule08: Array<number | boolean>;
export declare const testRegisterModule09: object;
export declare const testRegisterModule10: bigint;
export declare const testRegisterModule11: ArrayBuffer;

interface Lib {
    testRegisterModule00: undefined;
    testRegisterModule01: null;
    testRegisterModule02: boolean;
    testRegisterModule03: number;
    testRegisterModule04: string;
    testRegisterModule05: (a: number, b: number) => number;
    testRegisterModule06: new (name: string, age: number) => IPerson;
    testRegisterModule07: Symbol;
    testRegisterModule08: Array<number | boolean>;
    testRegisterModule09: object;
    testRegisterModule10: bigint;
    testRegisterModule11: ArrayBuffer;
}

export interface IPerson {
    name: string;
}

export declare const enum Season {
    Spring = 0,
    Summer = 1,
    Autumn = 2,
    Winter = 3
}

export declare function getDefaultSeason(): Season;
export declare function rotateSeason(current: Season): Season;
export declare function isHotSeason(current: Season): boolean;
export declare function seasonFromOrdinal(index: number): Season | undefined;

export function testNewScope0(): Promise<void>;
export function testNewScope1(): Promise<void>;
export function testNewScope2(): boolean;
export function testNewScopeNested(): Promise<void>;

export declare function testRequireArkModulePubSys(): boolean;
export declare function testRequireArkModuleHmsNapi(): boolean;
export declare function testRequireArkModuleHmsHsp(): boolean;
export declare function testRequireArkModulePubSysKit(): boolean;
export declare function testRequireArkModuleLoadFail(specifier: string): boolean;

export declare let globalLetValue: number;
export declare let globalVarValue: number;
export declare const globalConstValue: number;

export declare function testCreateUIAbilityContextFromJSValue(context: Object): void;
export declare function testCreateAbilityStageContextFromJSValue(context: Object): void;
export declare function testCreateApplicationContextFromJSValue(context: Object): void;
export declare function testCreateContextFromJSValue(context: Object): void;
