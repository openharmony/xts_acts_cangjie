package ohos_app_cangjie_entry

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
class EntryView {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            ["View_popsupport_levelmode_01","View_popsupport_levelmode_02","View_popsupport_levelmode_03", "View_popsupport_levelmode_04","View_popsupport_levelmode_05",
                             "View_popsupport_levelmode_06","View_popsupport_levelmode_07","View_popsupport_levelmode_08", "View_popsupport_levelmode_09","View_popsupport_levelmode_10",
                             "View_popsupport_levelmode_11","View_popsupport_levelmode_12", "View_popsupport_levelmode_13","View_popsupport_levelmode_14"],
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
