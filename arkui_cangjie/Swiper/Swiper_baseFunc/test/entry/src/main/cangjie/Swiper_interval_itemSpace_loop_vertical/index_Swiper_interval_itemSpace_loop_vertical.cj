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

package ohos_app_cangjie_entry.Swiper_interval_itemSpace_loop_vertical

import kit.ArkUI.LengthProp
import kit.ArkUI.Column
import kit.ArkUI.Row
import kit.ArkUI.Text
import kit.ArkUI.CustomView
import kit.ArkUI.CJEntry
import kit.ArkUI.loadNativeView
import kit.ArkUI.FontWeight
import kit.ArkUI.SubscriberManager
import kit.ArkUI.ObservedProperty
import kit.ArkUI.LocalStorage
import ohos.arkui.state_macro_manage.Entry
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.State
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkUI.Scroll
import kit.ArkUI.ClickEvent
import kit.ArkUI.ForEach
import kit.ArkUI.Button

@Entry
@Component
class index_Swiper_interval_itemSpace_loop_vertical {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Swiper_interval_itemSpace_loop_vertical1", "View_Swiper_interval_itemSpace_loop_vertical2", "View_Swiper_interval_itemSpace_loop_vertical3", "View_Swiper_interval_itemSpace_loop_vertical4", "View_Swiper_interval_itemSpace_loop_vertical5",
  "View_Swiper_interval_itemSpace_loop_vertical6", "View_Swiper_interval_itemSpace_loop_vertical7", "View_Swiper_interval_itemSpace_loop_vertical8", "View_Swiper_interval_itemSpace_loop_vertical9", "View_Swiper_interval_itemSpace_loop_vertical10",
  "View_Swiper_interval_itemSpace_loop_vertical11", "View_Swiper_interval_itemSpace_loop_vertical12", "View_Swiper_interval_itemSpace_loop_vertical13", "View_Swiper_interval_itemSpace_loop_vertical14", "View_Swiper_interval_itemSpace_loop_vertical15",
  "View_Swiper_interval_itemSpace_loop_vertical16", "View_Swiper_interval_itemSpace_loop_vertical17", "View_Swiper_interval_itemSpace_loop_vertical18", "View_Swiper_interval_itemSpace_loop_vertical19", "View_Swiper_interval_itemSpace_loop_vertical20",
  "View_Swiper_interval_itemSpace_loop_vertical21", "View_Swiper_interval_itemSpace_loop_vertical22", "View_Swiper_interval_itemSpace_loop_vertical23", "View_Swiper_interval_itemSpace_loop_vertical24", "View_Swiper_interval_itemSpace_loop_vertical25",
  "View_Swiper_interval_itemSpace_loop_vertical26", "View_Swiper_interval_itemSpace_loop_vertical27", "View_Swiper_interval_itemSpace_loop_vertical28", "View_Swiper_interval_itemSpace_loop_vertical29", "View_Swiper_interval_itemSpace_loop_vertical30",
  "View_Swiper_interval_itemSpace_loop_vertical31", "View_Swiper_interval_itemSpace_loop_vertical32", "View_Swiper_interval_itemSpace_loop_vertical33", "View_Swiper_interval_itemSpace_loop_vertical34", "View_Swiper_interval_itemSpace_loop_vertical35",
  "View_Swiper_interval_itemSpace_loop_vertical36", "View_Swiper_interval_itemSpace_loop_vertical37", "View_Swiper_interval_itemSpace_loop_vertical38", "View_Swiper_interval_itemSpace_loop_vertical39", "View_Swiper_interval_itemSpace_loop_vertical40",
  "View_Swiper_interval_itemSpace_loop_vertical41", "View_Swiper_interval_itemSpace_loop_vertical42", "View_Swiper_interval_itemSpace_loop_vertical43", "View_Swiper_interval_itemSpace_loop_vertical44", "View_Swiper_interval_itemSpace_loop_vertical45",
  "View_Swiper_interval_itemSpace_loop_vertical46", "View_Swiper_interval_itemSpace_loop_vertical47", "View_Swiper_interval_itemSpace_loop_vertical48", "View_Swiper_interval_itemSpace_loop_vertical49", "View_Swiper_interval_itemSpace_loop_vertical50",
  "View_Swiper_interval_itemSpace_loop_vertical51", "View_Swiper_interval_itemSpace_loop_vertical52", "View_Swiper_interval_itemSpace_loop_vertical53", "View_Swiper_interval_itemSpace_loop_vertical54", "View_Swiper_interval_itemSpace_loop_vertical55",
  "View_Swiper_interval_itemSpace_loop_vertical56", "View_Swiper_interval_itemSpace_loop_vertical57", "View_Swiper_interval_itemSpace_loop_vertical58", "View_Swiper_interval_itemSpace_loop_vertical59", "View_Swiper_interval_itemSpace_loop_vertical60",
  "View_Swiper_interval_itemSpace_loop_vertical61", "View_Swiper_interval_itemSpace_loop_vertical62", "View_Swiper_interval_itemSpace_loop_vertical63", "View_Swiper_interval_itemSpace_loop_vertical64", "View_Swiper_interval_itemSpace_loop_vertical65",
  "View_Swiper_interval_itemSpace_loop_vertical66", "View_Swiper_interval_itemSpace_loop_vertical67", "View_Swiper_interval_itemSpace_loop_vertical68", "View_Swiper_interval_itemSpace_loop_vertical69", "View_Swiper_interval_itemSpace_loop_vertical70",
  "View_Swiper_interval_itemSpace_loop_vertical71", "View_Swiper_interval_itemSpace_loop_vertical72", "View_Swiper_interval_itemSpace_loop_vertical73", "View_Swiper_interval_itemSpace_loop_vertical74", "View_Swiper_interval_itemSpace_loop_vertical75",
  "View_Swiper_interval_itemSpace_loop_vertical76", "View_Swiper_interval_itemSpace_loop_vertical77", "View_Swiper_interval_itemSpace_loop_vertical78", "View_Swiper_interval_itemSpace_loop_vertical79", "View_Swiper_interval_itemSpace_loop_vertical80",
  "View_Swiper_interval_itemSpace_loop_vertical81", "View_Swiper_interval_itemSpace_loop_vertical82", "View_Swiper_interval_itemSpace_loop_vertical83", "View_Swiper_interval_itemSpace_loop_vertical84", "View_Swiper_interval_itemSpace_loop_vertical85",
  "View_Swiper_interval_itemSpace_loop_vertical86", "View_Swiper_interval_itemSpace_loop_vertical87", "View_Swiper_interval_itemSpace_loop_vertical88", "View_Swiper_interval_itemSpace_loop_vertical89", "View_Swiper_interval_itemSpace_loop_vertical90",
  "View_Swiper_interval_itemSpace_loop_vertical91", "View_Swiper_interval_itemSpace_loop_vertical92", "View_Swiper_interval_itemSpace_loop_vertical93", "View_Swiper_interval_itemSpace_loop_vertical94", "View_Swiper_interval_itemSpace_loop_vertical95",
  "View_Swiper_interval_itemSpace_loop_vertical96", "View_Swiper_interval_itemSpace_loop_vertical97", "View_Swiper_interval_itemSpace_loop_vertical98", "View_Swiper_interval_itemSpace_loop_vertical99", "View_Swiper_interval_itemSpace_loop_vertical100",
  "View_Swiper_interval_itemSpace_loop_vertical101", "View_Swiper_interval_itemSpace_loop_vertical102", "View_Swiper_interval_itemSpace_loop_vertical103", "View_Swiper_interval_itemSpace_loop_vertical104", "View_Swiper_interval_itemSpace_loop_vertical105",
  "View_Swiper_interval_itemSpace_loop_vertical106", "View_Swiper_interval_itemSpace_loop_vertical107", "View_Swiper_interval_itemSpace_loop_vertical108", "View_Swiper_interval_itemSpace_loop_vertical109", "View_Swiper_interval_itemSpace_loop_vertical110",
  "View_Swiper_interval_itemSpace_loop_vertical111", "View_Swiper_interval_itemSpace_loop_vertical112", "View_Swiper_interval_itemSpace_loop_vertical113", "View_Swiper_interval_itemSpace_loop_vertical114", "View_Swiper_interval_itemSpace_loop_vertical115",
  "View_Swiper_interval_itemSpace_loop_vertical116", "View_Swiper_interval_itemSpace_loop_vertical117", "View_Swiper_interval_itemSpace_loop_vertical118", "View_Swiper_interval_itemSpace_loop_vertical119", "View_Swiper_interval_itemSpace_loop_vertical120",
  "View_Swiper_interval_itemSpace_loop_vertical121", "View_Swiper_interval_itemSpace_loop_vertical122", "View_Swiper_interval_itemSpace_loop_vertical123", "View_Swiper_interval_itemSpace_loop_vertical124", "View_Swiper_interval_itemSpace_loop_vertical125",
  "View_Swiper_interval_itemSpace_loop_vertical126", "View_Swiper_interval_itemSpace_loop_vertical127", "View_Swiper_interval_itemSpace_loop_vertical128", "View_Swiper_interval_itemSpace_loop_vertical129", "View_Swiper_interval_itemSpace_loop_vertical130",
  "View_Swiper_interval_itemSpace_loop_vertical131", "View_Swiper_interval_itemSpace_loop_vertical132", "View_Swiper_interval_itemSpace_loop_vertical133", "View_Swiper_interval_itemSpace_loop_vertical134", "View_Swiper_interval_itemSpace_loop_vertical135",
  "View_Swiper_interval_itemSpace_loop_vertical136", "View_Swiper_interval_itemSpace_loop_vertical137", "View_Swiper_interval_itemSpace_loop_vertical138", "View_Swiper_interval_itemSpace_loop_vertical139", "View_Swiper_interval_itemSpace_loop_vertical140",
  "View_Swiper_interval_itemSpace_loop_vertical141", "View_Swiper_interval_itemSpace_loop_vertical142", "View_Swiper_interval_itemSpace_loop_vertical143", "View_Swiper_interval_itemSpace_loop_vertical144", "View_Swiper_interval_itemSpace_loop_vertical145",
  "View_Swiper_interval_itemSpace_loop_vertical146", "View_Swiper_interval_itemSpace_loop_vertical147", "View_Swiper_interval_itemSpace_loop_vertical148", "View_Swiper_interval_itemSpace_loop_vertical149", "View_Swiper_interval_itemSpace_loop_vertical150",
  "View_Swiper_interval_itemSpace_loop_vertical151", "View_Swiper_interval_itemSpace_loop_vertical152", "View_Swiper_interval_itemSpace_loop_vertical153", "View_Swiper_interval_itemSpace_loop_vertical154", "View_Swiper_interval_itemSpace_loop_vertical155",
  "View_Swiper_interval_itemSpace_loop_vertical156", "View_Swiper_interval_itemSpace_loop_vertical157", "View_Swiper_interval_itemSpace_loop_vertical158", "View_Swiper_interval_itemSpace_loop_vertical159", "View_Swiper_interval_itemSpace_loop_vertical160",
  "View_Swiper_interval_itemSpace_loop_vertical161", "View_Swiper_interval_itemSpace_loop_vertical162", "View_Swiper_interval_itemSpace_loop_vertical163", "View_Swiper_interval_itemSpace_loop_vertical164", "View_Swiper_interval_itemSpace_loop_vertical165",
  "View_Swiper_interval_itemSpace_loop_vertical166", "View_Swiper_interval_itemSpace_loop_vertical167", "View_Swiper_interval_itemSpace_loop_vertical168", "View_Swiper_interval_itemSpace_loop_vertical169", "View_Swiper_interval_itemSpace_loop_vertical170",
  "View_Swiper_interval_itemSpace_loop_vertical171", "View_Swiper_interval_itemSpace_loop_vertical172", "View_Swiper_interval_itemSpace_loop_vertical173", "View_Swiper_interval_itemSpace_loop_vertical174", "View_Swiper_interval_itemSpace_loop_vertical175",
  "View_Swiper_interval_itemSpace_loop_vertical176", "View_Swiper_interval_itemSpace_loop_vertical177", "View_Swiper_interval_itemSpace_loop_vertical178", "View_Swiper_interval_itemSpace_loop_vertical179", "View_Swiper_interval_itemSpace_loop_vertical180",
  "View_Swiper_interval_itemSpace_loop_vertical181", "View_Swiper_interval_itemSpace_loop_vertical182", "View_Swiper_interval_itemSpace_loop_vertical183", "View_Swiper_interval_itemSpace_loop_vertical184", "View_Swiper_interval_itemSpace_loop_vertical185",
  "View_Swiper_interval_itemSpace_loop_vertical186", "View_Swiper_interval_itemSpace_loop_vertical187", "View_Swiper_interval_itemSpace_loop_vertical188", "View_Swiper_interval_itemSpace_loop_vertical189", "View_Swiper_interval_itemSpace_loop_vertical190",
  "View_Swiper_interval_itemSpace_loop_vertical191", "View_Swiper_interval_itemSpace_loop_vertical192", "View_Swiper_interval_itemSpace_loop_vertical193", "View_Swiper_interval_itemSpace_loop_vertical194", "View_Swiper_interval_itemSpace_loop_vertical195",
  "View_Swiper_interval_itemSpace_loop_vertical196", "View_Swiper_interval_itemSpace_loop_vertical197", "View_Swiper_interval_itemSpace_loop_vertical198", "View_Swiper_interval_itemSpace_loop_vertical199", "View_Swiper_interval_itemSpace_loop_vertical200",
  "View_Swiper_interval_itemSpace_loop_vertical201", "View_Swiper_interval_itemSpace_loop_vertical202", "View_Swiper_interval_itemSpace_loop_vertical203", "View_Swiper_interval_itemSpace_loop_vertical204", "View_Swiper_interval_itemSpace_loop_vertical205",
  "View_Swiper_interval_itemSpace_loop_vertical206", "View_Swiper_interval_itemSpace_loop_vertical207", "View_Swiper_interval_itemSpace_loop_vertical208", "View_Swiper_interval_itemSpace_loop_vertical209", "View_Swiper_interval_itemSpace_loop_vertical210",
  "View_Swiper_interval_itemSpace_loop_vertical211", "View_Swiper_interval_itemSpace_loop_vertical212", "View_Swiper_interval_itemSpace_loop_vertical213", "View_Swiper_interval_itemSpace_loop_vertical214", "View_Swiper_interval_itemSpace_loop_vertical215",
  "View_Swiper_interval_itemSpace_loop_vertical216", "View_Swiper_interval_itemSpace_loop_vertical217", "View_Swiper_interval_itemSpace_loop_vertical218", "View_Swiper_interval_itemSpace_loop_vertical219", "View_Swiper_interval_itemSpace_loop_vertical220",
  "View_Swiper_interval_itemSpace_loop_vertical221", "View_Swiper_interval_itemSpace_loop_vertical222", "View_Swiper_interval_itemSpace_loop_vertical223", "View_Swiper_interval_itemSpace_loop_vertical224", "View_Swiper_interval_itemSpace_loop_vertical225",
  "View_Swiper_interval_itemSpace_loop_vertical226", "View_Swiper_interval_itemSpace_loop_vertical227", "View_Swiper_interval_itemSpace_loop_vertical228", "View_Swiper_interval_itemSpace_loop_vertical229", "View_Swiper_interval_itemSpace_loop_vertical230",
  "View_Swiper_interval_itemSpace_loop_vertical231", "View_Swiper_interval_itemSpace_loop_vertical232", "View_Swiper_interval_itemSpace_loop_vertical233", "View_Swiper_interval_itemSpace_loop_vertical234", "View_Swiper_interval_itemSpace_loop_vertical235",
  "View_Swiper_interval_itemSpace_loop_vertical236", "View_Swiper_interval_itemSpace_loop_vertical237", "View_Swiper_interval_itemSpace_loop_vertical238", "View_Swiper_interval_itemSpace_loop_vertical239", "View_Swiper_interval_itemSpace_loop_vertical240",
  "View_Swiper_interval_itemSpace_loop_vertical241", "View_Swiper_interval_itemSpace_loop_vertical242", "View_Swiper_interval_itemSpace_loop_vertical243", "View_Swiper_interval_itemSpace_loop_vertical244", "View_Swiper_interval_itemSpace_loop_vertical245",
  "View_Swiper_interval_itemSpace_loop_vertical246", "View_Swiper_interval_itemSpace_loop_vertical247", "View_Swiper_interval_itemSpace_loop_vertical248", "View_Swiper_interval_itemSpace_loop_vertical249", "View_Swiper_interval_itemSpace_loop_vertical250",
  "View_Swiper_interval_itemSpace_loop_vertical251", "View_Swiper_interval_itemSpace_loop_vertical252", "View_Swiper_interval_itemSpace_loop_vertical253", "View_Swiper_interval_itemSpace_loop_vertical254", "View_Swiper_interval_itemSpace_loop_vertical255",
  "View_Swiper_interval_itemSpace_loop_vertical256", "View_Swiper_interval_itemSpace_loop_vertical257", "View_Swiper_interval_itemSpace_loop_vertical258", "View_Swiper_interval_itemSpace_loop_vertical259", "View_Swiper_interval_itemSpace_loop_vertical260",
  "View_Swiper_interval_itemSpace_loop_vertical261", "View_Swiper_interval_itemSpace_loop_vertical262", "View_Swiper_interval_itemSpace_loop_vertical263", "View_Swiper_interval_itemSpace_loop_vertical264", "View_Swiper_interval_itemSpace_loop_vertical265",
  "View_Swiper_interval_itemSpace_loop_vertical266", "View_Swiper_interval_itemSpace_loop_vertical267", "View_Swiper_interval_itemSpace_loop_vertical268", "View_Swiper_interval_itemSpace_loop_vertical269", "View_Swiper_interval_itemSpace_loop_vertical270",
  "View_Swiper_interval_itemSpace_loop_vertical271", "View_Swiper_interval_itemSpace_loop_vertical272", "View_Swiper_interval_itemSpace_loop_vertical273", "View_Swiper_interval_itemSpace_loop_vertical274", "View_Swiper_interval_itemSpace_loop_vertical275",
  "View_Swiper_interval_itemSpace_loop_vertical276", "View_Swiper_interval_itemSpace_loop_vertical277", "View_Swiper_interval_itemSpace_loop_vertical278", "View_Swiper_interval_itemSpace_loop_vertical279", "View_Swiper_interval_itemSpace_loop_vertical280",
  "View_Swiper_interval_itemSpace_loop_vertical281", "View_Swiper_interval_itemSpace_loop_vertical282", "View_Swiper_interval_itemSpace_loop_vertical283", "View_Swiper_interval_itemSpace_loop_vertical284", "View_Swiper_interval_itemSpace_loop_vertical285",
  "View_Swiper_interval_itemSpace_loop_vertical286", "View_Swiper_interval_itemSpace_loop_vertical287", "View_Swiper_interval_itemSpace_loop_vertical288", "View_Swiper_interval_itemSpace_loop_vertical289", "View_Swiper_interval_itemSpace_loop_vertical290",
  "View_Swiper_interval_itemSpace_loop_vertical291", "View_Swiper_interval_itemSpace_loop_vertical292", "View_Swiper_interval_itemSpace_loop_vertical293", "View_Swiper_interval_itemSpace_loop_vertical294", "View_Swiper_interval_itemSpace_loop_vertical295",
  "View_Swiper_interval_itemSpace_loop_vertical296", "View_Swiper_interval_itemSpace_loop_vertical297", "View_Swiper_interval_itemSpace_loop_vertical298", "View_Swiper_interval_itemSpace_loop_vertical299", "View_Swiper_interval_itemSpace_loop_vertical300",
  "View_Swiper_interval_itemSpace_loop_vertical301", "View_Swiper_interval_itemSpace_loop_vertical302", "View_Swiper_interval_itemSpace_loop_vertical303", "View_Swiper_interval_itemSpace_loop_vertical304", "View_Swiper_interval_itemSpace_loop_vertical305",
  "View_Swiper_interval_itemSpace_loop_vertical306", "View_Swiper_interval_itemSpace_loop_vertical307", "View_Swiper_interval_itemSpace_loop_vertical308", "View_Swiper_interval_itemSpace_loop_vertical309", "View_Swiper_interval_itemSpace_loop_vertical310",
  "View_Swiper_interval_itemSpace_loop_vertical311", "View_Swiper_interval_itemSpace_loop_vertical312", "View_Swiper_interval_itemSpace_loop_vertical313", "View_Swiper_interval_itemSpace_loop_vertical314", "View_Swiper_interval_itemSpace_loop_vertical315",
  "View_Swiper_interval_itemSpace_loop_vertical316", "View_Swiper_interval_itemSpace_loop_vertical317", "View_Swiper_interval_itemSpace_loop_vertical318", "View_Swiper_interval_itemSpace_loop_vertical319", "View_Swiper_interval_itemSpace_loop_vertical320",
  "View_Swiper_interval_itemSpace_loop_vertical321", "View_Swiper_interval_itemSpace_loop_vertical322", "View_Swiper_interval_itemSpace_loop_vertical323", "View_Swiper_interval_itemSpace_loop_vertical324", "View_Swiper_interval_itemSpace_loop_vertical325",
  "View_Swiper_interval_itemSpace_loop_vertical326", "View_Swiper_interval_itemSpace_loop_vertical327", "View_Swiper_interval_itemSpace_loop_vertical328", "View_Swiper_interval_itemSpace_loop_vertical329", "View_Swiper_interval_itemSpace_loop_vertical330",
  "View_Swiper_interval_itemSpace_loop_vertical331", "View_Swiper_interval_itemSpace_loop_vertical332", "View_Swiper_interval_itemSpace_loop_vertical333", "View_Swiper_interval_itemSpace_loop_vertical334", "View_Swiper_interval_itemSpace_loop_vertical335",
  "View_Swiper_interval_itemSpace_loop_vertical336", "View_Swiper_interval_itemSpace_loop_vertical337", "View_Swiper_interval_itemSpace_loop_vertical338", "View_Swiper_interval_itemSpace_loop_vertical339", "View_Swiper_interval_itemSpace_loop_vertical340",
  "View_Swiper_interval_itemSpace_loop_vertical341", "View_Swiper_interval_itemSpace_loop_vertical342", "View_Swiper_interval_itemSpace_loop_vertical343", "View_Swiper_interval_itemSpace_loop_vertical344", "View_Swiper_interval_itemSpace_loop_vertical345",
  "View_Swiper_interval_itemSpace_loop_vertical346", "View_Swiper_interval_itemSpace_loop_vertical347", "View_Swiper_interval_itemSpace_loop_vertical348", "View_Swiper_interval_itemSpace_loop_vertical349", "View_Swiper_interval_itemSpace_loop_vertical350",
  "View_Swiper_interval_itemSpace_loop_vertical351", "View_Swiper_interval_itemSpace_loop_vertical352", "View_Swiper_interval_itemSpace_loop_vertical353", "View_Swiper_interval_itemSpace_loop_vertical354", "View_Swiper_interval_itemSpace_loop_vertical355",
  "View_Swiper_interval_itemSpace_loop_vertical356", "View_Swiper_interval_itemSpace_loop_vertical357", "View_Swiper_interval_itemSpace_loop_vertical358", "View_Swiper_interval_itemSpace_loop_vertical359", "View_Swiper_interval_itemSpace_loop_vertical360",
  "View_Swiper_interval_itemSpace_loop_vertical361", "View_Swiper_interval_itemSpace_loop_vertical362", "View_Swiper_interval_itemSpace_loop_vertical363", "View_Swiper_interval_itemSpace_loop_vertical364", "View_Swiper_interval_itemSpace_loop_vertical365",
  "View_Swiper_interval_itemSpace_loop_vertical366", "View_Swiper_interval_itemSpace_loop_vertical367", "View_Swiper_interval_itemSpace_loop_vertical368", "View_Swiper_interval_itemSpace_loop_vertical369", "View_Swiper_interval_itemSpace_loop_vertical370",
  "View_Swiper_interval_itemSpace_loop_vertical371", "View_Swiper_interval_itemSpace_loop_vertical372", "View_Swiper_interval_itemSpace_loop_vertical373", "View_Swiper_interval_itemSpace_loop_vertical374", "View_Swiper_interval_itemSpace_loop_vertical375",
  "View_Swiper_interval_itemSpace_loop_vertical376", "View_Swiper_interval_itemSpace_loop_vertical377", "View_Swiper_interval_itemSpace_loop_vertical378", "View_Swiper_interval_itemSpace_loop_vertical379", "View_Swiper_interval_itemSpace_loop_vertical380",
  "View_Swiper_interval_itemSpace_loop_vertical381", "View_Swiper_interval_itemSpace_loop_vertical382", "View_Swiper_interval_itemSpace_loop_vertical383", "View_Swiper_interval_itemSpace_loop_vertical384", "View_Swiper_interval_itemSpace_loop_vertical385",
  "View_Swiper_interval_itemSpace_loop_vertical386", "View_Swiper_interval_itemSpace_loop_vertical387", "View_Swiper_interval_itemSpace_loop_vertical388", "View_Swiper_interval_itemSpace_loop_vertical389", "View_Swiper_interval_itemSpace_loop_vertical390",
  "View_Swiper_interval_itemSpace_loop_vertical391", "View_Swiper_interval_itemSpace_loop_vertical392", "View_Swiper_interval_itemSpace_loop_vertical393", "View_Swiper_interval_itemSpace_loop_vertical394", "View_Swiper_interval_itemSpace_loop_vertical395",
  "View_Swiper_interval_itemSpace_loop_vertical396", "View_Swiper_interval_itemSpace_loop_vertical397", "View_Swiper_interval_itemSpace_loop_vertical398", "View_Swiper_interval_itemSpace_loop_vertical399", "View_Swiper_interval_itemSpace_loop_vertical400",
  "View_Swiper_interval_itemSpace_loop_vertical401", "View_Swiper_interval_itemSpace_loop_vertical402", "View_Swiper_interval_itemSpace_loop_vertical403", "View_Swiper_interval_itemSpace_loop_vertical404", "View_Swiper_interval_itemSpace_loop_vertical405",
  "View_Swiper_interval_itemSpace_loop_vertical406", "View_Swiper_interval_itemSpace_loop_vertical407", "View_Swiper_interval_itemSpace_loop_vertical408", "View_Swiper_interval_itemSpace_loop_vertical409", "View_Swiper_interval_itemSpace_loop_vertical410",
  "View_Swiper_interval_itemSpace_loop_vertical411", "View_Swiper_interval_itemSpace_loop_vertical412", "View_Swiper_interval_itemSpace_loop_vertical413", "View_Swiper_interval_itemSpace_loop_vertical414", "View_Swiper_interval_itemSpace_loop_vertical415",
  "View_Swiper_interval_itemSpace_loop_vertical416", "View_Swiper_interval_itemSpace_loop_vertical417", "View_Swiper_interval_itemSpace_loop_vertical418", "View_Swiper_interval_itemSpace_loop_vertical419", "View_Swiper_interval_itemSpace_loop_vertical420",
  "View_Swiper_interval_itemSpace_loop_vertical421", "View_Swiper_interval_itemSpace_loop_vertical422", "View_Swiper_interval_itemSpace_loop_vertical423", "View_Swiper_interval_itemSpace_loop_vertical424", "View_Swiper_interval_itemSpace_loop_vertical425",
  "View_Swiper_interval_itemSpace_loop_vertical426", "View_Swiper_interval_itemSpace_loop_vertical427", "View_Swiper_interval_itemSpace_loop_vertical428", "View_Swiper_interval_itemSpace_loop_vertical429", "View_Swiper_interval_itemSpace_loop_vertical430",
  "View_Swiper_interval_itemSpace_loop_vertical431", "View_Swiper_interval_itemSpace_loop_vertical432", "View_Swiper_interval_itemSpace_loop_vertical433", "View_Swiper_interval_itemSpace_loop_vertical434", "View_Swiper_interval_itemSpace_loop_vertical435",
  "View_Swiper_interval_itemSpace_loop_vertical436", "View_Swiper_interval_itemSpace_loop_vertical437", "View_Swiper_interval_itemSpace_loop_vertical438", "View_Swiper_interval_itemSpace_loop_vertical439", "View_Swiper_interval_itemSpace_loop_vertical440",
  "View_Swiper_interval_itemSpace_loop_vertical441", "View_Swiper_interval_itemSpace_loop_vertical442", "View_Swiper_interval_itemSpace_loop_vertical443", "View_Swiper_interval_itemSpace_loop_vertical444", "View_Swiper_interval_itemSpace_loop_vertical445",
  "View_Swiper_interval_itemSpace_loop_vertical446", "View_Swiper_interval_itemSpace_loop_vertical447", "View_Swiper_interval_itemSpace_loop_vertical448", "View_Swiper_interval_itemSpace_loop_vertical449", "View_Swiper_interval_itemSpace_loop_vertical450",
  "View_Swiper_interval_itemSpace_loop_vertical451", "View_Swiper_interval_itemSpace_loop_vertical452", "View_Swiper_interval_itemSpace_loop_vertical453", "View_Swiper_interval_itemSpace_loop_vertical454", "View_Swiper_interval_itemSpace_loop_vertical455",
  "View_Swiper_interval_itemSpace_loop_vertical456", "View_Swiper_interval_itemSpace_loop_vertical457", "View_Swiper_interval_itemSpace_loop_vertical458", "View_Swiper_interval_itemSpace_loop_vertical459", "View_Swiper_interval_itemSpace_loop_vertical460",
  "View_Swiper_interval_itemSpace_loop_vertical461", "View_Swiper_interval_itemSpace_loop_vertical462", "View_Swiper_interval_itemSpace_loop_vertical463", "View_Swiper_interval_itemSpace_loop_vertical464", "View_Swiper_interval_itemSpace_loop_vertical465",
  "View_Swiper_interval_itemSpace_loop_vertical466", "View_Swiper_interval_itemSpace_loop_vertical467", "View_Swiper_interval_itemSpace_loop_vertical468", "View_Swiper_interval_itemSpace_loop_vertical469", "View_Swiper_interval_itemSpace_loop_vertical470",
  "View_Swiper_interval_itemSpace_loop_vertical471", "View_Swiper_interval_itemSpace_loop_vertical472", "View_Swiper_interval_itemSpace_loop_vertical473", "View_Swiper_interval_itemSpace_loop_vertical474", "View_Swiper_interval_itemSpace_loop_vertical475",
  "View_Swiper_interval_itemSpace_loop_vertical476", "View_Swiper_interval_itemSpace_loop_vertical477", "View_Swiper_interval_itemSpace_loop_vertical478", "View_Swiper_interval_itemSpace_loop_vertical479", "View_Swiper_interval_itemSpace_loop_vertical480",
  "View_Swiper_interval_itemSpace_loop_vertical481", "View_Swiper_interval_itemSpace_loop_vertical482", "View_Swiper_interval_itemSpace_loop_vertical483", "View_Swiper_interval_itemSpace_loop_vertical484", "View_Swiper_interval_itemSpace_loop_vertical485",
  "View_Swiper_interval_itemSpace_loop_vertical486", "View_Swiper_interval_itemSpace_loop_vertical487", "View_Swiper_interval_itemSpace_loop_vertical488", "View_Swiper_interval_itemSpace_loop_vertical489", "View_Swiper_interval_itemSpace_loop_vertical490",
  "View_Swiper_interval_itemSpace_loop_vertical491", "View_Swiper_interval_itemSpace_loop_vertical492", "View_Swiper_interval_itemSpace_loop_vertical493", "View_Swiper_interval_itemSpace_loop_vertical494", "View_Swiper_interval_itemSpace_loop_vertical495",
  "View_Swiper_interval_itemSpace_loop_vertical496", "View_Swiper_interval_itemSpace_loop_vertical497", "View_Swiper_interval_itemSpace_loop_vertical498", "View_Swiper_interval_itemSpace_loop_vertical499", "View_Swiper_interval_itemSpace_loop_vertical500",
  "View_Swiper_interval_itemSpace_loop_vertical501", "View_Swiper_interval_itemSpace_loop_vertical502", "View_Swiper_interval_itemSpace_loop_vertical503", "View_Swiper_interval_itemSpace_loop_vertical504", "View_Swiper_interval_itemSpace_loop_vertical505",
  "View_Swiper_interval_itemSpace_loop_vertical506", "View_Swiper_interval_itemSpace_loop_vertical507", "View_Swiper_interval_itemSpace_loop_vertical508", "View_Swiper_interval_itemSpace_loop_vertical509", "View_Swiper_interval_itemSpace_loop_vertical510",
  "View_Swiper_interval_itemSpace_loop_vertical511", "View_Swiper_interval_itemSpace_loop_vertical512" ],
                            itemGeneratorFunc: {
                                viewName: String, _: Int64 => Button(viewName)
                                    .fontSize(16i64)
                                    .width(100i64.percent)
                                    .height(15i64)
                                    .id(viewName)
                                    .borderRadius(10i64)
                                    .onClick(
                                        {
                                            clickEvent: ClickEvent => getUIContext().getRouter().pushUrl(url: viewName)
                                        })
                            })
                    }).width(100i64.percent).margin(top: 5i64)
            }).id("scroller")
    }
}
