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

package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import ohos.data.relational_store.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos_app_cangjie_entry.Global

@Test
class TestRdbStore_on_off_1 {
    /*
     * @tc.number    : TestRdbStore_on_off_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : "dy32@!" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("dy32@!", true, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("dy32@!", true)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("dy32@!")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_on_off_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : "PRINT" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S2, name: "valid name", encrypt: false, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: false, allowRebuild: false,
                    isReadOnly: false, pluginLibs: ["", "pluginLibs"], cryptoParam: CryptoParam(), vector: false,
                    tokenizer: Tokenizer.NoneTokenizer, persist: false, enableSemanticIndex: false))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("PRINT", false, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("PRINT", false)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("PRINT")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_on_off_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : "sjwskSA@*&%" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S3, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("sjwskSA@*&%", true, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("sjwskSA@*&%", true)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("sjwskSA@*&%")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_on_off_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : "#!$@$23" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S4, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("#!$@$23", true, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("#!$@$23", true)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("#!$@$23")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_on_off_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : "reason" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("reason", true, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("reason", true)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("reason")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestRdbStore_on_off_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : "1234567890" rdbStore Notify the inter-process or intra-process listening events registered through on.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        try {
            Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 begins.")
            Hilog.info(0u32, "cangjietest", "", "define local variable rdbStore")
            let rdbStore = getRdbStore(Global.getAbilityContext(),
                StoreConfig(RelationalStoreSecurityLevel.S1, name: "valid name", encrypt: true, dataGroupId: "valid createTime",
                    customDir: "valid modifyTime", rootDir: "rootDir", autoCleanDirtyData: true, allowRebuild: true,
                    isReadOnly: true, pluginLibs: [], cryptoParam: CryptoParam(), vector: true,
                    tokenizer: Tokenizer.NoneTokenizer, persist: true, enableSemanticIndex: true))
            Hilog.info(0u32, "cangjietest", "", "define local variable testCallback")
            let testCallback = TestCallback0()
            Hilog.info(0u32, "cangjietest", "", "on")
            rdbStore.on("1234567890", true, testCallback)
            Hilog.info(0u32, "cangjietest", "", "off")
            rdbStore.off("1234567890", true)
            Hilog.info(0u32, "cangjietest", "", "emit")
            rdbStore.emit("1234567890")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 14801002i32)
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }
}
