package ohos_app_cangjie_entry_test

import ohos_app_cangjie_entry_test.unittest_support.registerTestSuite

private let register = testsuite()

func testsuite() {
    registerTestSuite {TestUtf16String()}
    registerTestSuite {TestJSType()}
    registerTestSuite {TestUtf16StringExtra()}
    registerTestSuite {TestJSRuntime()}
    registerTestSuite {TestJSContext()}
    registerTestSuite {TestJSValue()}
    registerTestSuite {TestJSObjectBase()}
    registerTestSuite {TestJSPrimitives()}
    registerTestSuite {TestErrCodeThreadCtx()}
    registerTestSuite {TestErrCodeTypeMismatch()}
    registerTestSuite {TestErrCodeOutOfRange()}
    registerTestSuite {TestApiCompleteValue()}
    registerTestSuite {TestApiCompleteEx()}
    registerTestSuite {TestApiCompleteUtf16()}
    registerTestSuite {TestApiCompleteMisc()}
    registerTestSuite {TestErrCodeTypeMismatchExt()}
    registerTestSuite {TestCallbackInvokeDirect()}
    registerTestSuite {TestBizException()}
}
