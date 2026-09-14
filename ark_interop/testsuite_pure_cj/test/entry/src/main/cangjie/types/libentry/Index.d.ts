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

export function testArray00<T>(array: Array<T>): void;
export function testArray01<T>(array: Array<T>): void;
export function testArray02(): Array<number | boolean>;

export function testException00(): void;
export function testException01(f: () => void): void;

export function testFunction00(f: (a: number) => number): void;
export function testFunction01(f: (a: number) => number): void;
export function testFunction02(f: (a: number) => number): void;
export function testFunction03(f: (a: number) => number): void;
export function testFunction04(f: (a: number) => number): void;
export function testFunction05(f: (a: number) => number): void;
export function testFunction06(): (a: number) => number;

export function testPostJSTask00(): void;
export function testPostJSTask01(a: number, b: number, f: (a: number, b: number) => number): Promise<number>;

export function testString00(s: string): void;
export function testPromise00(promise: Promise<number>): void;
export function testPromise01(promise: Promise<number>): void;
export function testPromise02(): Promise<string>;
export function testPromise03(): Promise<string>;
export function testPromise04(): Promise<string>;
export function testPromise05(src: Promise<void>): Promise<number>;

export function testPromise10(promise: Promise<number>): void;
export function testPromise11(promise: Promise<number>): void;
export function testPromise12(): Promise<string>;
export function testPromise13(): Promise<string>;
export function testPromise14(): Promise<string>;
export function testPromise15(src: Promise<void>): Promise<number>;
export function testPromise16(src: Promise<void>): Promise<number>;

export function testBigInt00(bigInt: bigint): void;
export function testBigInt01(): bigint;
export function testBigInt02(bigInt: bigint): void;
export function testBigInt03(bigInt: bigint): void;
export function testBigInt04(bigInt: bigint): void;
export function testBigInt05(bigInt: bigint): void;
export function testBigInt06(): bigint;
export function testBigInt07(): bigint;
export function testBigInt08(): bigint;
export function testBigInt09(): bigint;
export function testBigInt10(): bigint;
export function testBigInt11(): bigint;
export function testBigInt12(): bigint;
export function testBigInt13(bigInt: bigint): bigint;
export function testBigInt14(bigInt: bigint): void;
export function testBigInt15(bigInt: bigint): void;
export function testBigInt16(bigInt: bigint): void;
export function testBigInt17(bigInt: bigint): void;
export function testBigInt18(bigInt: bigint): void;
export function testBigInt19(bigInt: bigint): void;
export function testBigInt20(bigInt: bigint): void;
export function testBigInt21(bigInt: bigint): void;
export function testBigInt22(bigInt: bigint): void;
export function testBigInt23(bigInt: bigint): void;
export function testBigInt24(bigInt: bigint): void;
export function testBigInt25(bigInt: bigint): void;
export function testBigInt26(bigInt: bigint): void;
export function testBigInt27(bigInt: bigint): void;
export function testBigInt28(bigInt: bigint): void;
export function testBigInt29(bigInt: bigint): void;
export function testBigInt30(bigInt: bigint): void;
export function testBigInt31(bigInt: bigint): void;
export function testBigInt32(bigInt: bigint): void;
export function testBigInt33(bigInt: bigint): void;
export function testBigInt34(bigInt: bigint): void;
export function testBigInt35(bigInt: bigint): void;
export function testBigInt36(bigInt: bigint): void;
export function testBigInt37(bigInt: bigint): void;
export function testBigInt38(bigInt: bigint): void;
export function testBigInt39(bigInt: bigint): void;

export function testExternal00(o: MyObject_test_external_00): void;
export class MyObject_test_external_00 {
    name: string;
    age: number;
    grade: number;

    constructor(name: string, age: number, grade: number)
}
export function gcov_dump(): void
export function testRuntime(): void
export function testRegisterAfterStaticInit00(): void;
export function testRegisterAfterStaticInit00_00(): void;

export interface IPerson {
    name: string;
    age: number;
}
export class testRegisterClass00 {
    name: string;
    age: number;
    constructor(name: string, age: number);
}

export function testRegisterFunc00(): string;
export function testRegisterFunc01(): string;

export const testRegisterModule00: undefined;
export const testRegisterModule01: null;
export const testRegisterModule02: boolean;
export const testRegisterModule03: number;
export const testRegisterModule04: string;
export const testRegisterModule05: (a: number, b: number) => number;
export class testRegisterModule06 {
    name: string;
    constructor(name: string, age: number);
}
export const testRegisterModule07: Symbol;
export const testRegisterModule08: Array<number | boolean>
export const testRegisterModule09: object;
export const testRegisterModule10: bigint;
export const testRegisterModule11: ArrayBuffer;

export function testRegisterOverride00(): () => number;
export function testRegisterOverride01(): number;

export function test_types_00(a: number): void;
export function test_types_01(): void;
export function test_types_02(): void;
export function test_types_03(): void;
export function test_types_04(b: boolean): void;
export function test_types_05(c: string): void;
export function test_types_06(c: undefined): void;
export function test_types_07(c: null): void;
export function test_types_bigint_08(bigInt: bigint): void;
export function test_types_09(a: Array<string>): void;
export function test_types_10(c: string): void;
export function test_types_11(a: number): void;
export function test_types_12(): void;
export function test_types_13(c: string): void;
export function test_jsCurrent_14(c: string): void;
export function test_jsStringEx_15(c: string): void;
export function test_jsHashMap_16(c: string): void;
export function requireArkModule(src: string): Object;