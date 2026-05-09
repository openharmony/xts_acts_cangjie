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
                            ["index_Rect_ca_align_direction_01", "index_Rect_ca_alignrules_01", "index_Rect_ca_alignself_flexbasis_01", "index_Rect_ca_aspectratio_01", "index_Rect_ca_background_01",
                            "index_Rect_ca_background_02", "index_Rect_ca_borders_01", "index_Rect_ca_borders_02", "index_Rect_ca_borders_03", "index_Rect_ca_constraintsize_01",
                            "index_Rect_ca_displaypriority_01", "index_Rect_ca_enable_zindex_01", "index_Rect_ca_flexgrow_flexshrink_01", "index_Rect_ca_flexgrow_flexshrink_02", "index_Rect_ca_focuscontrol_01",
                            "index_Rect_ca_foregroundblur_01", "index_Rect_ca_foregroundblur_02", "index_Rect_ca_foregroundcolor_01", "index_Rect_ca_imageeffects_01", "index_Rect_ca_imageeffects_02",
                            "index_Rect_ca_imageeffects_03", "index_Rect_ca_layoutweight_01", "index_Rect_ca_lineargradient_01", "index_Rect_ca_markanchor_01", "index_Rect_ca_offset_01",
                            "index_Rect_ca_opacity_visibility_01", "index_Rect_ca_overlay_01", "index_Rect_ca_padding_margin_01", "index_Rect_ca_padding_margin_02", "index_Rect_ca_position_01",
                            "index_Rect_ca_radialgradient_01", "index_Rect_ca_renderfit_01", "index_Rect_ca_responseRegion_01", "index_Rect_ca_responseRegion_02", "index_Rect_ca_rotate_01",
                            "index_Rect_ca_scale_01", "index_Rect_ca_shapeclip_01", "index_Rect_ca_size_01", "index_Rect_ca_size_02", "index_Rect_ca_sweepgradient_01",
                            "index_Rect_ca_translate_01", "index_Rect_ca_width_height_01", "index_Rect_ca_width_height_02", "index_Rect_init"],
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
