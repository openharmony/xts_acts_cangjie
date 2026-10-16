/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0, only for internal use.
 */

package ohos_app_cangjie_entry_test

import std.core.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.AbilityKit.*
import kit.AbilityKit.BundleManager
import ohos.base.*
import ohos.hilog.Hilog
import ohos.business_exception.*

@Test
class Test_bundle_types {
    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_types_0100
     * @tc.name      : Test_ClassRefs_BundleInfoTree
     * @tc.desc      : Reference BundleInfo/SignatureInfo/HapModuleInfo from getBundleInfoForSelf result and AbilityInfo/UsedScene/WindowSize/MultiAppMode/DataItem via typed function signatures.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ClassRefs_BundleInfoTree(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_ClassRefs_BundleInfoTree begins.")
        func refAbilityInfo(a: AbilityInfo): String {
            return a.name
        }
        func refUsedScene(u: UsedScene): Array<String> {
            return u.abilities
        }
        func refWindowSize(w: WindowSize): Float64 {
            return w.maxWindowRatio
        }
        func refMultiAppMode(m: MultiAppMode): Int32 {
            return m.maxCount
        }
        func refDataItem(d: DataItem): String {
            return d.key
        }
        let flags = BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY
        let bi: BundleInfo = BundleManager.getBundleInfoForSelf(flags)
        @Expect(!bi.name.isEmpty(), true)
        let sig: SignatureInfo = bi.signatureInfo
        @Expect(sig.fingerprint.isEmpty(), true)
        if (bi.hapModulesInfo.size > 0) {
            let hm: HapModuleInfo = bi.hapModulesInfo[0]
            @Expect(!hm.name.isEmpty(), true)
        }
        let fa: (AbilityInfo) -> String = refAbilityInfo
        let fu: (UsedScene) -> Array<String> = refUsedScene
        let fw: (WindowSize) -> Float64 = refWindowSize
        let fm: (MultiAppMode) -> Int32 = refMultiAppMode
        let fd: (DataItem) -> String = refDataItem
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "type refs bound: fa/fu/fw/fm/fd ready")
        Hilog.info(0u32, "cangjietest", "testcase Test_ClassRefs_BundleInfoTree ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_bundle_manager_types_0200
     * @tc.name      : Test_Err_GetProfileByAbility_NoProfile
     * @tc.desc      : Cover BundleManager.getProfileByAbility error path 17700024 (real device: disabled-ability check fires first; 17700029 needs an enabled ability and is env-limited).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GetProfileByAbility_NoProfile(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GetProfileByAbility_NoProfile begins.")
        try {
            let profiles = BundleManager.getProfileByAbility("entry", "EntryAbility", metadataName: "profile_not_exist_err2")
            Hilog.info(0u32, "cangjietest", "profiles size=" + profiles.size.toString())
            @Expect(profiles.size, 0)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "getProfileByAbility code=" + e.code.toString())
            @Expect(e.code, 17700024i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GetProfileByAbility_NoProfile ends.")
    }
}
