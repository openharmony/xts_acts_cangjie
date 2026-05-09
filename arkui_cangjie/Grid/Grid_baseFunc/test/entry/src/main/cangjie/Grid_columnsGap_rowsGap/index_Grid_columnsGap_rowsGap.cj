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

package ohos_app_cangjie_entry.Grid_columnsGap_rowsGap

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
class index_Grid_columnsGap_rowsGap {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Grid_ColumnsGap_rowsGap1", "View_Grid_ColumnsGap_rowsGap2", "View_Grid_ColumnsGap_rowsGap3", "View_Grid_ColumnsGap_rowsGap4", "View_Grid_ColumnsGap_rowsGap5",
  "View_Grid_ColumnsGap_rowsGap6", "View_Grid_ColumnsGap_rowsGap7", "View_Grid_ColumnsGap_rowsGap8", "View_Grid_ColumnsGap_rowsGap9", "View_Grid_ColumnsGap_rowsGap10",
  "View_Grid_ColumnsGap_rowsGap11", "View_Grid_ColumnsGap_rowsGap12", "View_Grid_ColumnsGap_rowsGap13", "View_Grid_ColumnsGap_rowsGap14", "View_Grid_ColumnsGap_rowsGap15",
  "View_Grid_ColumnsGap_rowsGap16", "View_Grid_ColumnsGap_rowsGap17", "View_Grid_ColumnsGap_rowsGap18", "View_Grid_ColumnsGap_rowsGap19", "View_Grid_ColumnsGap_rowsGap20",
  "View_Grid_ColumnsGap_rowsGap21", "View_Grid_ColumnsGap_rowsGap22", "View_Grid_ColumnsGap_rowsGap23", "View_Grid_ColumnsGap_rowsGap24", "View_Grid_ColumnsGap_rowsGap25",
  "View_Grid_ColumnsGap_rowsGap26", "View_Grid_ColumnsGap_rowsGap27", "View_Grid_ColumnsGap_rowsGap28", "View_Grid_ColumnsGap_rowsGap29", "View_Grid_ColumnsGap_rowsGap30",
  "View_Grid_ColumnsGap_rowsGap31", "View_Grid_ColumnsGap_rowsGap32", "View_Grid_ColumnsGap_rowsGap33", "View_Grid_ColumnsGap_rowsGap34", "View_Grid_ColumnsGap_rowsGap35",
  "View_Grid_ColumnsGap_rowsGap36", "View_Grid_ColumnsGap_rowsGap37", "View_Grid_ColumnsGap_rowsGap38", "View_Grid_ColumnsGap_rowsGap39", "View_Grid_ColumnsGap_rowsGap40",
  "View_Grid_ColumnsGap_rowsGap41", "View_Grid_ColumnsGap_rowsGap42", "View_Grid_ColumnsGap_rowsGap43", "View_Grid_ColumnsGap_rowsGap44", "View_Grid_ColumnsGap_rowsGap45",
  "View_Grid_ColumnsGap_rowsGap46", "View_Grid_ColumnsGap_rowsGap47", "View_Grid_ColumnsGap_rowsGap48", "View_Grid_ColumnsGap_rowsGap49", "View_Grid_ColumnsGap_rowsGap50",
  "View_Grid_ColumnsGap_rowsGap51", "View_Grid_ColumnsGap_rowsGap52", "View_Grid_ColumnsGap_rowsGap53", "View_Grid_ColumnsGap_rowsGap54", "View_Grid_ColumnsGap_rowsGap55",
  "View_Grid_ColumnsGap_rowsGap56", "View_Grid_ColumnsGap_rowsGap57", "View_Grid_ColumnsGap_rowsGap58", "View_Grid_ColumnsGap_rowsGap59", "View_Grid_ColumnsGap_rowsGap60",
  "View_Grid_ColumnsGap_rowsGap61", "View_Grid_ColumnsGap_rowsGap62", "View_Grid_ColumnsGap_rowsGap63", "View_Grid_ColumnsGap_rowsGap64", "View_Grid_ColumnsGap_rowsGap65",
  "View_Grid_ColumnsGap_rowsGap66", "View_Grid_ColumnsGap_rowsGap67", "View_Grid_ColumnsGap_rowsGap68", "View_Grid_ColumnsGap_rowsGap69", "View_Grid_ColumnsGap_rowsGap70",
  "View_Grid_ColumnsGap_rowsGap71", "View_Grid_ColumnsGap_rowsGap72", "View_Grid_ColumnsGap_rowsGap73", "View_Grid_ColumnsGap_rowsGap74", "View_Grid_ColumnsGap_rowsGap75",
  "View_Grid_ColumnsGap_rowsGap76", "View_Grid_ColumnsGap_rowsGap77", "View_Grid_ColumnsGap_rowsGap78", "View_Grid_ColumnsGap_rowsGap79", "View_Grid_ColumnsGap_rowsGap80",
  "View_Grid_ColumnsGap_rowsGap81", "View_Grid_ColumnsGap_rowsGap82", "View_Grid_ColumnsGap_rowsGap83", "View_Grid_ColumnsGap_rowsGap84", "View_Grid_ColumnsGap_rowsGap85",
  "View_Grid_ColumnsGap_rowsGap86", "View_Grid_ColumnsGap_rowsGap87", "View_Grid_ColumnsGap_rowsGap88", "View_Grid_ColumnsGap_rowsGap89", "View_Grid_ColumnsGap_rowsGap90",
  "View_Grid_ColumnsGap_rowsGap91", "View_Grid_ColumnsGap_rowsGap92", "View_Grid_ColumnsGap_rowsGap93", "View_Grid_ColumnsGap_rowsGap94", "View_Grid_ColumnsGap_rowsGap95",
  "View_Grid_ColumnsGap_rowsGap96", "View_Grid_ColumnsGap_rowsGap97", "View_Grid_ColumnsGap_rowsGap98", "View_Grid_ColumnsGap_rowsGap99", "View_Grid_ColumnsGap_rowsGap100",
  "View_Grid_ColumnsGap_rowsGap101", "View_Grid_ColumnsGap_rowsGap102", "View_Grid_ColumnsGap_rowsGap103", "View_Grid_ColumnsGap_rowsGap104", "View_Grid_ColumnsGap_rowsGap105",
  "View_Grid_ColumnsGap_rowsGap106", "View_Grid_ColumnsGap_rowsGap107", "View_Grid_ColumnsGap_rowsGap108", "View_Grid_ColumnsGap_rowsGap109", "View_Grid_ColumnsGap_rowsGap110",
  "View_Grid_ColumnsGap_rowsGap111", "View_Grid_ColumnsGap_rowsGap112", "View_Grid_ColumnsGap_rowsGap113", "View_Grid_ColumnsGap_rowsGap114", "View_Grid_ColumnsGap_rowsGap115",
  "View_Grid_ColumnsGap_rowsGap116", "View_Grid_ColumnsGap_rowsGap117", "View_Grid_ColumnsGap_rowsGap118", "View_Grid_ColumnsGap_rowsGap119", "View_Grid_ColumnsGap_rowsGap120",
  "View_Grid_ColumnsGap_rowsGap121", "View_Grid_ColumnsGap_rowsGap122", "View_Grid_ColumnsGap_rowsGap123", "View_Grid_ColumnsGap_rowsGap124", "View_Grid_ColumnsGap_rowsGap125",
  "View_Grid_ColumnsGap_rowsGap126", "View_Grid_ColumnsGap_rowsGap127", "View_Grid_ColumnsGap_rowsGap128", "View_Grid_ColumnsGap_rowsGap129", "View_Grid_ColumnsGap_rowsGap130",
  "View_Grid_ColumnsGap_rowsGap131", "View_Grid_ColumnsGap_rowsGap132", "View_Grid_ColumnsGap_rowsGap133", "View_Grid_ColumnsGap_rowsGap134", "View_Grid_ColumnsGap_rowsGap135",
  "View_Grid_ColumnsGap_rowsGap136", "View_Grid_ColumnsGap_rowsGap137", "View_Grid_ColumnsGap_rowsGap138", "View_Grid_ColumnsGap_rowsGap139", "View_Grid_ColumnsGap_rowsGap140",
  "View_Grid_ColumnsGap_rowsGap141", "View_Grid_ColumnsGap_rowsGap142", "View_Grid_ColumnsGap_rowsGap143", "View_Grid_ColumnsGap_rowsGap144", "View_Grid_ColumnsGap_rowsGap145",
  "View_Grid_ColumnsGap_rowsGap146", "View_Grid_ColumnsGap_rowsGap147", "View_Grid_ColumnsGap_rowsGap148", "View_Grid_ColumnsGap_rowsGap149", "View_Grid_ColumnsGap_rowsGap150",
  "View_Grid_ColumnsGap_rowsGap151", "View_Grid_ColumnsGap_rowsGap152", "View_Grid_ColumnsGap_rowsGap153", "View_Grid_ColumnsGap_rowsGap154", "View_Grid_ColumnsGap_rowsGap155",
  "View_Grid_ColumnsGap_rowsGap156", "View_Grid_ColumnsGap_rowsGap157", "View_Grid_ColumnsGap_rowsGap158", "View_Grid_ColumnsGap_rowsGap159", "View_Grid_ColumnsGap_rowsGap160",
  "View_Grid_ColumnsGap_rowsGap161", "View_Grid_ColumnsGap_rowsGap162", "View_Grid_ColumnsGap_rowsGap163", "View_Grid_ColumnsGap_rowsGap164", "View_Grid_ColumnsGap_rowsGap165",
  "View_Grid_ColumnsGap_rowsGap166", "View_Grid_ColumnsGap_rowsGap167", "View_Grid_ColumnsGap_rowsGap168", "View_Grid_ColumnsGap_rowsGap169", "View_Grid_ColumnsGap_rowsGap170",
  "View_Grid_ColumnsGap_rowsGap171", "View_Grid_ColumnsGap_rowsGap172", "View_Grid_ColumnsGap_rowsGap173", "View_Grid_ColumnsGap_rowsGap174", "View_Grid_ColumnsGap_rowsGap175",
  "View_Grid_ColumnsGap_rowsGap176", "View_Grid_ColumnsGap_rowsGap177", "View_Grid_ColumnsGap_rowsGap178", "View_Grid_ColumnsGap_rowsGap179", "View_Grid_ColumnsGap_rowsGap180",
  "View_Grid_ColumnsGap_rowsGap181", "View_Grid_ColumnsGap_rowsGap182", "View_Grid_ColumnsGap_rowsGap183", "View_Grid_ColumnsGap_rowsGap184", "View_Grid_ColumnsGap_rowsGap185",
  "View_Grid_ColumnsGap_rowsGap186", "View_Grid_ColumnsGap_rowsGap187", "View_Grid_ColumnsGap_rowsGap188", "View_Grid_ColumnsGap_rowsGap189", "View_Grid_ColumnsGap_rowsGap190",
  "View_Grid_ColumnsGap_rowsGap191", "View_Grid_ColumnsGap_rowsGap192", "View_Grid_ColumnsGap_rowsGap193", "View_Grid_ColumnsGap_rowsGap194", "View_Grid_ColumnsGap_rowsGap195",
  "View_Grid_ColumnsGap_rowsGap196", "View_Grid_ColumnsGap_rowsGap197", "View_Grid_ColumnsGap_rowsGap198", "View_Grid_ColumnsGap_rowsGap199", "View_Grid_ColumnsGap_rowsGap200",
  "View_Grid_ColumnsGap_rowsGap201", "View_Grid_ColumnsGap_rowsGap202", "View_Grid_ColumnsGap_rowsGap203", "View_Grid_ColumnsGap_rowsGap204", "View_Grid_ColumnsGap_rowsGap205",
  "View_Grid_ColumnsGap_rowsGap206", "View_Grid_ColumnsGap_rowsGap207", "View_Grid_ColumnsGap_rowsGap208", "View_Grid_ColumnsGap_rowsGap209", "View_Grid_ColumnsGap_rowsGap210",
  "View_Grid_ColumnsGap_rowsGap211", "View_Grid_ColumnsGap_rowsGap212", "View_Grid_ColumnsGap_rowsGap213", "View_Grid_ColumnsGap_rowsGap214", "View_Grid_ColumnsGap_rowsGap215",
  "View_Grid_ColumnsGap_rowsGap216", "View_Grid_ColumnsGap_rowsGap217", "View_Grid_ColumnsGap_rowsGap218", "View_Grid_ColumnsGap_rowsGap219", "View_Grid_ColumnsGap_rowsGap220",
  "View_Grid_ColumnsGap_rowsGap221", "View_Grid_ColumnsGap_rowsGap222", "View_Grid_ColumnsGap_rowsGap223", "View_Grid_ColumnsGap_rowsGap224", "View_Grid_ColumnsGap_rowsGap225",
  "View_Grid_ColumnsGap_rowsGap226", "View_Grid_ColumnsGap_rowsGap227", "View_Grid_ColumnsGap_rowsGap228", "View_Grid_ColumnsGap_rowsGap229", "View_Grid_ColumnsGap_rowsGap230",
  "View_Grid_ColumnsGap_rowsGap231", "View_Grid_ColumnsGap_rowsGap232", "View_Grid_ColumnsGap_rowsGap233", "View_Grid_ColumnsGap_rowsGap234", "View_Grid_ColumnsGap_rowsGap235",
  "View_Grid_ColumnsGap_rowsGap236", "View_Grid_ColumnsGap_rowsGap237", "View_Grid_ColumnsGap_rowsGap238", "View_Grid_ColumnsGap_rowsGap239", "View_Grid_ColumnsGap_rowsGap240",
  "View_Grid_ColumnsGap_rowsGap241", "View_Grid_ColumnsGap_rowsGap242", "View_Grid_ColumnsGap_rowsGap243", "View_Grid_ColumnsGap_rowsGap244", "View_Grid_ColumnsGap_rowsGap245",
  "View_Grid_ColumnsGap_rowsGap246", "View_Grid_ColumnsGap_rowsGap247", "View_Grid_ColumnsGap_rowsGap248", "View_Grid_ColumnsGap_rowsGap249", "View_Grid_ColumnsGap_rowsGap250",
  "View_Grid_ColumnsGap_rowsGap251", "View_Grid_ColumnsGap_rowsGap252", "View_Grid_ColumnsGap_rowsGap253", "View_Grid_ColumnsGap_rowsGap254", "View_Grid_ColumnsGap_rowsGap255",
  "View_Grid_ColumnsGap_rowsGap256", "View_Grid_ColumnsGap_rowsGap257", "View_Grid_ColumnsGap_rowsGap258", "View_Grid_ColumnsGap_rowsGap259", "View_Grid_ColumnsGap_rowsGap260",
  "View_Grid_ColumnsGap_rowsGap261", "View_Grid_ColumnsGap_rowsGap262", "View_Grid_ColumnsGap_rowsGap263", "View_Grid_ColumnsGap_rowsGap264", "View_Grid_ColumnsGap_rowsGap265",
  "View_Grid_ColumnsGap_rowsGap266", "View_Grid_ColumnsGap_rowsGap267", "View_Grid_ColumnsGap_rowsGap268", "View_Grid_ColumnsGap_rowsGap269", "View_Grid_ColumnsGap_rowsGap270",
  "View_Grid_ColumnsGap_rowsGap271", "View_Grid_ColumnsGap_rowsGap272", "View_Grid_ColumnsGap_rowsGap273", "View_Grid_ColumnsGap_rowsGap274", "View_Grid_ColumnsGap_rowsGap275",
  "View_Grid_ColumnsGap_rowsGap276", "View_Grid_ColumnsGap_rowsGap277", "View_Grid_ColumnsGap_rowsGap278", "View_Grid_ColumnsGap_rowsGap279", "View_Grid_ColumnsGap_rowsGap280",
  "View_Grid_ColumnsGap_rowsGap281", "View_Grid_ColumnsGap_rowsGap282", "View_Grid_ColumnsGap_rowsGap283", "View_Grid_ColumnsGap_rowsGap284", "View_Grid_ColumnsGap_rowsGap285",
  "View_Grid_ColumnsGap_rowsGap286", "View_Grid_ColumnsGap_rowsGap287", "View_Grid_ColumnsGap_rowsGap288", "View_Grid_ColumnsGap_rowsGap289", "View_Grid_ColumnsGap_rowsGap290",
  "View_Grid_ColumnsGap_rowsGap291", "View_Grid_ColumnsGap_rowsGap292", "View_Grid_ColumnsGap_rowsGap293", "View_Grid_ColumnsGap_rowsGap294", "View_Grid_ColumnsGap_rowsGap295",
  "View_Grid_ColumnsGap_rowsGap296", "View_Grid_ColumnsGap_rowsGap297", "View_Grid_ColumnsGap_rowsGap298", "View_Grid_ColumnsGap_rowsGap299", "View_Grid_ColumnsGap_rowsGap300",
  "View_Grid_ColumnsGap_rowsGap301", "View_Grid_ColumnsGap_rowsGap302", "View_Grid_ColumnsGap_rowsGap303", "View_Grid_ColumnsGap_rowsGap304", "View_Grid_ColumnsGap_rowsGap305",
  "View_Grid_ColumnsGap_rowsGap306", "View_Grid_ColumnsGap_rowsGap307", "View_Grid_ColumnsGap_rowsGap308", "View_Grid_ColumnsGap_rowsGap309", "View_Grid_ColumnsGap_rowsGap310",
  "View_Grid_ColumnsGap_rowsGap311", "View_Grid_ColumnsGap_rowsGap312", "View_Grid_ColumnsGap_rowsGap313", "View_Grid_ColumnsGap_rowsGap314", "View_Grid_ColumnsGap_rowsGap315",
  "View_Grid_ColumnsGap_rowsGap316", "View_Grid_ColumnsGap_rowsGap317", "View_Grid_ColumnsGap_rowsGap318", "View_Grid_ColumnsGap_rowsGap319", "View_Grid_ColumnsGap_rowsGap320",
  "View_Grid_ColumnsGap_rowsGap321", "View_Grid_ColumnsGap_rowsGap322", "View_Grid_ColumnsGap_rowsGap323", "View_Grid_ColumnsGap_rowsGap324", "View_Grid_ColumnsGap_rowsGap325",
  "View_Grid_ColumnsGap_rowsGap326", "View_Grid_ColumnsGap_rowsGap327", "View_Grid_ColumnsGap_rowsGap328", "View_Grid_ColumnsGap_rowsGap329", "View_Grid_ColumnsGap_rowsGap330",
  "View_Grid_ColumnsGap_rowsGap331", "View_Grid_ColumnsGap_rowsGap332", "View_Grid_ColumnsGap_rowsGap333", "View_Grid_ColumnsGap_rowsGap334", "View_Grid_ColumnsGap_rowsGap335",
  "View_Grid_ColumnsGap_rowsGap336", "View_Grid_ColumnsGap_rowsGap337", "View_Grid_ColumnsGap_rowsGap338", "View_Grid_ColumnsGap_rowsGap339", "View_Grid_ColumnsGap_rowsGap340",
  "View_Grid_ColumnsGap_rowsGap341", "View_Grid_ColumnsGap_rowsGap342", "View_Grid_ColumnsGap_rowsGap343", "View_Grid_ColumnsGap_rowsGap344", "View_Grid_ColumnsGap_rowsGap345",
  "View_Grid_ColumnsGap_rowsGap346", "View_Grid_ColumnsGap_rowsGap347", "View_Grid_ColumnsGap_rowsGap348", "View_Grid_ColumnsGap_rowsGap349", "View_Grid_ColumnsGap_rowsGap350",
  "View_Grid_ColumnsGap_rowsGap351", "View_Grid_ColumnsGap_rowsGap352", "View_Grid_ColumnsGap_rowsGap353", "View_Grid_ColumnsGap_rowsGap354", "View_Grid_ColumnsGap_rowsGap355",
  "View_Grid_ColumnsGap_rowsGap356", "View_Grid_ColumnsGap_rowsGap357", "View_Grid_ColumnsGap_rowsGap358", "View_Grid_ColumnsGap_rowsGap359", "View_Grid_ColumnsGap_rowsGap360",
  "View_Grid_ColumnsGap_rowsGap361", "View_Grid_ColumnsGap_rowsGap362", "View_Grid_ColumnsGap_rowsGap363", "View_Grid_ColumnsGap_rowsGap364", "View_Grid_ColumnsGap_rowsGap365",
  "View_Grid_ColumnsGap_rowsGap366", "View_Grid_ColumnsGap_rowsGap367", "View_Grid_ColumnsGap_rowsGap368", "View_Grid_ColumnsGap_rowsGap369", "View_Grid_ColumnsGap_rowsGap370",
  "View_Grid_ColumnsGap_rowsGap371", "View_Grid_ColumnsGap_rowsGap372", "View_Grid_ColumnsGap_rowsGap373", "View_Grid_ColumnsGap_rowsGap374", "View_Grid_ColumnsGap_rowsGap375",
  "View_Grid_ColumnsGap_rowsGap376", "View_Grid_ColumnsGap_rowsGap377", "View_Grid_ColumnsGap_rowsGap378", "View_Grid_ColumnsGap_rowsGap379", "View_Grid_ColumnsGap_rowsGap380",
  "View_Grid_ColumnsGap_rowsGap381", "View_Grid_ColumnsGap_rowsGap382", "View_Grid_ColumnsGap_rowsGap383", "View_Grid_ColumnsGap_rowsGap384", "View_Grid_ColumnsGap_rowsGap385",
  "View_Grid_ColumnsGap_rowsGap386", "View_Grid_ColumnsGap_rowsGap387", "View_Grid_ColumnsGap_rowsGap388", "View_Grid_ColumnsGap_rowsGap389", "View_Grid_ColumnsGap_rowsGap390",
  "View_Grid_ColumnsGap_rowsGap391", "View_Grid_ColumnsGap_rowsGap392", "View_Grid_ColumnsGap_rowsGap393", "View_Grid_ColumnsGap_rowsGap394", "View_Grid_ColumnsGap_rowsGap395",
  "View_Grid_ColumnsGap_rowsGap396", "View_Grid_ColumnsGap_rowsGap397", "View_Grid_ColumnsGap_rowsGap398", "View_Grid_ColumnsGap_rowsGap399", "View_Grid_ColumnsGap_rowsGap400" ],
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
