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

import ohos_app_cangjie_entry_test.unittest_support.registerTestSuite

private let register = testsuite()

func testsuite() {
    registerTestSuite {actionsheet_uattr_01_test()}
    registerTestSuite {ActionSheetInterfaces_1_test()}
    registerTestSuite {alertdialog_uattr_01_test()}
    registerTestSuite {AlertDialogInterfaces_1_test()}
    registerTestSuite {base_uattr_01_test()}
    registerTestSuite {BaseInterfaces_1_test()}
    registerTestSuite {canvas_uattr_01_test()}
    registerTestSuite {CanvasInterfaces_1_test()}
    registerTestSuite {CanvasInterfaces_2_test()}
    registerTestSuite {CommonInterfaces_1_test()}
    registerTestSuite {CommonInterfaces_2_test()}
    registerTestSuite {componentutils_uattr_01_test()}
    registerTestSuite {ComponentUtilsInterfaces_1_test()}
    registerTestSuite {curves2_uattr_01_test()}
    registerTestSuite {CurvesInterfaces_1_test()}
    registerTestSuite {customcomponent_uattr_01_test()}
    registerTestSuite {CustomComponentInterfaces_1_test()}
    registerTestSuite {customdialog_uattr_01_test()}
    registerTestSuite {CustomDialogInterfaces_1_test()}
    registerTestSuite {CustomViewInterfaces_1_test()}
    registerTestSuite {GridRowInterfaces_test()}
    registerTestSuite {lazyforeach_uattr_01_test()}
    registerTestSuite {NavInterfaces_1_test()}
    registerTestSuite {pagetrans_uattr_01_test()}
    registerTestSuite {PageTransitionInterfaces_1_test()}
    registerTestSuite {PageTransitionInterfaces_2_test()}
    registerTestSuite {path2d_uattr_01_test()}
    registerTestSuite {Path2DInterfaces_1_test()}
    registerTestSuite {ProgressInterfaces_test()}
    registerTestSuite {richeditor_uattr_01_test()}
    registerTestSuite {RichEditorInterfaces_1_test()}
    registerTestSuite {ScrollInterfaces_1_test()}
    registerTestSuite {shape_uattr_01_test()}
    registerTestSuite {ShapeInterfaces_1_test()}
    registerTestSuite {statemacro_uattr_01_test()}
    registerTestSuite {statemacro2_uattr_01_test()}
    registerTestSuite {statemanage_uattr_01_test()}
    registerTestSuite {StateManagementInterfaces_1_test()}
    registerTestSuite {SwiperInterfaces_test()}
    registerTestSuite {TabsInterfaces_test()}
    registerTestSuite {TextClockInterfaces_test()}
    registerTestSuite {TextInputInterfaces_test()}
    registerTestSuite {TextTimerInterfaces_test()}
    registerTestSuite {uicontext_uattr_01_test()}
    registerTestSuite {UIContextInterfaces_1_test()}
    registerTestSuite {VideoInterfaces_test()}
    registerTestSuite {WebInterfaces_test()}
}
