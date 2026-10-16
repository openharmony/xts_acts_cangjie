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

import std.unittest.*
import std.unittest.testmacro.*
import std.unittest.common.*
import ohos.callback_invoke.*
import ohos.business_exception.*

class CbObject <: CallbackObject {
    var instantiated = true
}

class Cb0 <: Callback0Argument {
    var invoked = false
    public override func invoke(err: ?BusinessException): Unit {
        invoked = true
    }
}

class Cb1 <: Callback1Argument<Int32> {
    var invoked = false
    var got = 0i32
    public override func invoke(err: ?BusinessException, arg: Int32): Unit {
        invoked = true
        got = arg
    }
}

class Cb2 <: Callback2Argument<String, Int32> {
    var invoked = false
    public override func invoke(err: ?BusinessException, arg1: String, arg2: Int32): Unit {
        invoked = true
    }
}

class Cb3Ret <: Callback3ArgumentWithReturn<Int32, Int32, Int32, Int64> {
    public override func invoke(err: ?BusinessException, arg1: Int32, arg2: Int32, arg3: Int32): Int64 {
        Int64(arg1) + Int64(arg2) + Int64(arg3)
    }
}

class Cb1Ret <: Callback1ArgumentWithReturn<Int32, Bool> {
    public override func invoke(err: ?BusinessException, arg1: Int32): Bool {
        arg1 > 0
    }
}

class CbRet <: CallbackWithReturn<String> {
    public override func invoke(err: ?BusinessException): String {
        "ok"
    }
}

@Test
class TestCallbackInvokeDirect {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7040
     * @tc.name      : testCallbackObjectInstantiation
     * @tc.desc      : cover CallbackObject abstract class via concrete subclass instantiation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallbackObjectInstantiation(): Unit {
        let o = CbObject()
        @Expect(o.instantiated)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7050
     * @tc.name      : testCallback0ArgumentInvoke
     * @tc.desc      : cover Callback0Argument.invoke by direct invocation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback0ArgumentInvoke(): Unit {
        let c = Cb0()
        @Expect(!c.invoked)
        c.invoke(None)
        @Expect(c.invoked)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7060
     * @tc.name      : testCallback1ArgumentInvoke
     * @tc.desc      : cover Callback1Argument.invoke by direct invocation with payload
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback1ArgumentInvoke(): Unit {
        let c = Cb1()
        c.invoke(None, 42)
        @Expect(c.invoked)
        @Expect(c.got, 42)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7070
     * @tc.name      : testCallback2ArgumentInvoke
     * @tc.desc      : cover Callback2Argument.invoke by direct invocation with two payloads
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback2ArgumentInvoke(): Unit {
        let c = Cb2()
        c.invoke(None, "x", 1)
        @Expect(c.invoked)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7080
     * @tc.name      : testCallback3ArgumentWithReturnInvoke
     * @tc.desc      : cover Callback3ArgumentWithReturn.invoke returning a value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback3ArgumentWithReturnInvoke(): Unit {
        let c = Cb3Ret()
        @Expect(c.invoke(None, 1, 2, 3), 6)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7090
     * @tc.name      : testCallback1ArgumentWithReturnInvoke
     * @tc.desc      : cover Callback1ArgumentWithReturn.invoke returning a value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback1ArgumentWithReturnInvoke(): Unit {
        let c = Cb1Ret()
        @Expect(c.invoke(None, 5))
        @Expect(!c.invoke(None, -1))
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7100
     * @tc.name      : testCallbackWithReturnInvoke
     * @tc.desc      : cover CallbackWithReturn.invoke returning a value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallbackWithReturnInvoke(): Unit {
        let c = CbRet()
        @Expect(c.invoke(None), "ok")
    }
}
