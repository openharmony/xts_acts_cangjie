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

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import std.unittest.common.*
import ohos.callback_invoke.*
import ohos.business_exception.*

class CallbackTypeHolder {
    var called = false
    var receivedArg = 0i32
}

class MyCallbackObject <: CallbackObject {
    var instantiated = true
}

class MyCallback0Arg <: Callback0Argument {
    var invoked = false
    public override func invoke(err: ?BusinessException): Unit {
        invoked = true
    }
}

class MyCallback1Arg <: Callback1Argument<Int32> {
    var invoked = false
    var receivedArg = 0i32
    public override func invoke(err: ?BusinessException, arg: Int32): Unit {
        invoked = true
        receivedArg = arg
    }
}

class MyCallback2Arg <: Callback2Argument<String, Int32> {
    var invoked = false
    var receivedArg1 = ""
    var receivedArg2 = 0i32
    public override func invoke(err: ?BusinessException, arg1: String, arg2: Int32): Unit {
        invoked = true
        receivedArg1 = arg1
        receivedArg2 = arg2
    }
}

class MyCallback3Ret <: Callback3ArgumentWithReturn<Int32, Int32, Int32, Int64> {
    public override func invoke(err: ?BusinessException, arg1: Int32, arg2: Int32, arg3: Int32): Int64 {
        Int64(arg1) + Int64(arg2) + Int64(arg3)
    }
}

class MyCallback1Ret <: Callback1ArgumentWithReturn<Int32, Bool> {
    public override func invoke(err: ?BusinessException, arg1: Int32): Bool {
        arg1 > 0
    }
}

class MyCallbackRet <: CallbackWithReturn<String> {
    public override func invoke(err: ?BusinessException): String {
        "result"
    }
}

@Test
class TestCallbackInvoke {
    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0100
     * @tc.name      : testCallbackType
     * @tc.desc      : test Callback type alias by declaring a variable of type Callback<Int32> and invoking it
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallbackType(): Unit {
        let holder = CallbackTypeHolder()
        let cb: Callback<Int32> = { arg =>
            holder.called = true
            holder.receivedArg = arg
        }
        cb(42i32)
        @Expect(holder.called)
        @Expect(holder.receivedArg, 42)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0200
     * @tc.name      : testCallbackObject
     * @tc.desc      : test CallbackObject abstract class by creating a concrete subclass and instantiating it
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallbackObject(): Unit {
        let obj = MyCallbackObject()
        @Expect(obj.instantiated)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0300
     * @tc.name      : testCallback0Argument
     * @tc.desc      : test Callback0Argument class and its invoke(err) method by subclassing and calling invoke(None)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback0Argument(): Unit {
        let cb = MyCallback0Arg()
        @Expect(!cb.invoked)
        cb.invoke(None)
        @Expect(cb.invoked)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0400
     * @tc.name      : testCallback1Argument
     * @tc.desc      : test Callback1Argument<A> class and its invoke(err, arg) method by subclassing with A=Int32 and calling invoke(None, 99)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback1Argument(): Unit {
        let cb = MyCallback1Arg()
        @Expect(!cb.invoked)
        cb.invoke(None, 99i32)
        @Expect(cb.invoked)
        @Expect(cb.receivedArg, 99)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0500
     * @tc.name      : testCallback2Argument
     * @tc.desc      : test Callback2Argument<A,B> class and its invoke(err, arg1, arg2) method by subclassing with A=String, B=Int32
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback2Argument(): Unit {
        let cb = MyCallback2Arg()
        @Expect(!cb.invoked)
        cb.invoke(None, "hello", 7i32)
        @Expect(cb.invoked)
        @Expect(cb.receivedArg1, "hello")
        @Expect(cb.receivedArg2, 7)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0600
     * @tc.name      : testCallback3ArgumentWithReturn
     * @tc.desc      : test Callback3ArgumentWithReturn<A,B,C,D> class and its invoke(err, arg1, arg2, arg3) method by subclassing and checking return value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback3ArgumentWithReturn(): Unit {
        let cb = MyCallback3Ret()
        let result = cb.invoke(None, 1i32, 2i32, 3i32)
        @Expect(result, 6)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0700
     * @tc.name      : testCallback1ArgumentWithReturn
     * @tc.desc      : test Callback1ArgumentWithReturn<A,B> class and its invoke(err, arg1) method by subclassing with A=Int32, B=Bool
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallback1ArgumentWithReturn(): Unit {
        let cb = MyCallback1Ret()
        let resultTrue = cb.invoke(None, 5i32)
        @Expect(resultTrue)
        let resultFalse = cb.invoke(None, -1i32)
        @Expect(resultFalse, false)
    }

    /*
     * @tc.number    : Sub_Cangjie_callback_invoke_TestCallbackInvoke_0800
     * @tc.name      : testCallbackWithReturn
     * @tc.desc      : test CallbackWithReturn<A> class and its invoke(err) method by subclassing with A=String
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCallbackWithReturn(): Unit {
        let cb = MyCallbackRet()
        let result = cb.invoke(None)
        @Expect(result, "result")
    }
}
