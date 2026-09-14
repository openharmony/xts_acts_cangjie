package ohos_app_cangjie_entry_test

import ohos_app_cangjie_entry_test.unittest_support.registerTestSuite

private let register = testsuite()

func testsuite() {
    registerTestSuite {Button_ca_bpopu_01_test()}
    registerTestSuite {Button_ca_bpopu_02_test()}
    registerTestSuite {Button_ca_comsig_01_test()}
    registerTestSuite {Button_ca_dragcon_01_test()}
    registerTestSuite {Button_ca_menu_01_test()}
    registerTestSuite {Button_ca_menu_02_test()}
    registerTestSuite {Button_ca_menu_03_test()}
    registerTestSuite {Button_ca_menu_04_test()}
    registerTestSuite {Button_ca_menu_05_test()}
    registerTestSuite {Button_ca_modtra_01_test()}
    registerTestSuite {Button_ca_modtra_02_test()}
    registerTestSuite {Button_ca_safar_01_test()}
    registerTestSuite {onAreaChange_Event_test()}
    registerTestSuite {onAppear_Event_test()}
    registerTestSuite {onFocus_Event_test()}
    registerTestSuite {onKeyEvent_Event_test()}
    registerTestSuite {onTouch_Event_test()}
}
