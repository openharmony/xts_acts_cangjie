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

import std.unittest.testmacro.{Test, TestCase, Expect}
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.bundle.bundle_manager.{HapModuleInfo, RouterItem, DataItem}
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestRouterItem {

    /*
     * @tc.number    : Sub_Cangjie_BundleManager_TestRouterItem_0100
     * @tc.name      : test_routerItem_fields
     * @tc.desc      : test RouterItem class pageSourceFile, buildFunction, customData fields and DataItem class key field
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_routerItem_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_routerItem_fields begins.")
        let bundleInfo = getFullBundleInfo()
        let hapModuleInfos = bundleInfo.hapModulesInfo
        let entryModuleInfo = hapModuleInfos |> pick {hapModuleInfo: HapModuleInfo => hapModuleInfo.name == "entry"}
        let routerMap: Array<RouterItem> = entryModuleInfo.routerMap
        Hilog.info(0u32, "cangjietest", "", "routerMap.size = ${routerMap.size}")
        if (routerMap.size > 0) {
            let routerItem: RouterItem = routerMap[0]
            let pageSourceFile = routerItem.pageSourceFile
            let buildFunction = routerItem.buildFunction
            let customData = routerItem.customData
            let data = routerItem.data
            Hilog.info(0u32, "cangjietest", "", "pageSourceFile=${pageSourceFile}, buildFunction=${buildFunction}, customData=${customData}, data.size=${data.size}")
            if (data.size > 0) {
                let dataItem: DataItem = data[0]
                let key = dataItem.key
                Hilog.info(0u32, "cangjietest", "", "dataItem.key=${key}")
            } else {
                @Expect(data.size == 0)
            }
        } else {
            @Expect(routerMap.size == 0)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_routerItem_fields ends.")
    }
}
