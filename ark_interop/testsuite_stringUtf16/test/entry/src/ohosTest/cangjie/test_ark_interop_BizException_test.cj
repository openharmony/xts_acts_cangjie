/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0, only for internal use.
 */

package ohos_app_cangjie_entry_test

import std.core.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.ark_interop.*
import ohos.business_exception.*
import ohos.hilog.Hilog

let sharedBizRuntime = JSRuntime()
let sharedBizContext = sharedBizRuntime.mainContext

func refAsyncCallback(err: Option<BusinessException>, data: Option<Int32>): Unit {
    let _e = err
    let _d = data
}

@Test
class TestBizException {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_bizexception_0100
     * @tc.name      : testBizExceptionCodeGetDataToString
     * @tc.desc      : Cover BusinessException.code field, getData<T>() and toString() on a caught BusinessException (34300005 via JSStringEx.fromJSValue type mismatch).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBizExceptionCodeGetDataToString(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase testBizExceptionCodeGetDataToString begins.")
        let context = sharedBizContext
        try {
            let _ = JSStringEx.fromJSValue(context, context.number(1.0f64).toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            let code: Int32 = e.code
            @Expect(code, 34300005i32)
            let d = e.getData<String>()
            Hilog.info(0u32, "cangjietest", "getData<String> returned")
            let msg: String = e.toString()
            @Expect(!msg.isEmpty(), true)
            Hilog.info(0u32, "cangjietest", "bizException toString=" + msg)
        }
        Hilog.info(0u32, "cangjietest", "testcase testBizExceptionCodeGetDataToString ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_bizexception_0200
     * @tc.name      : testAsyncCallbackTypeAlias
     * @tc.desc      : Reference AsyncCallback<T> type alias via a function variable binding with the exact alias signature.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAsyncCallbackTypeAlias(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase testAsyncCallbackTypeAlias begins.")
        let cb: AsyncCallback<Int32> = refAsyncCallback
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "asyncCallback alias bound")
        Hilog.info(0u32, "cangjietest", "testcase testAsyncCallbackTypeAlias ends.")
    }
}
