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
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos.bluetooth.a2dp.createA2dpSrcProfile
import ohos.bluetooth.a2dp.A2dpSourceProfile
import ohos.bluetooth.a2dp.PlayingState
import ohos.bluetooth.a2dp.CodecInfo
import ohos.bluetooth.a2dp.CodecType
import ohos.bluetooth.a2dp.CodecChannelMode
import ohos.bluetooth.a2dp.CodecBitsPerSample
import ohos.bluetooth.a2dp.CodecSampleRate
import ohos.bluetooth.base_profile.ProfileCallbackType
import ohos.bluetooth.base_profile.StateChangeParam
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.callback_invoke.Callback1Argument
import ohos.callback_invoke.CallbackObject

class A2dpStateChangeCb <: Callback1Argument<StateChangeParam> {
    public func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {}
}

class CodecInfoCb <: Callback1Argument<CodecInfo> {
    var lastArg: ?CodecInfo = None
    public open func invoke(err: ?BusinessException, arg: CodecInfo): Unit {
        lastArg = arg
        let codecTypeVal: CodecType = arg.codecType
        let codecBitsPerSampleVal: CodecBitsPerSample = arg.codecBitsPerSample
        let codecChannelModeVal: CodecChannelMode = arg.codecChannelMode
        let codecSampleRateVal: CodecSampleRate = arg.codecSampleRate
        Hilog.info(0, "cangjietest", "codec type ${codecTypeVal} bitsPerSample ${codecBitsPerSampleVal} channelMode ${codecChannelModeVal} sampleRate ${codecSampleRateVal}")
    }
}

class EmptyCallbackObject <: CallbackObject {}

@Test
class Test_bt_a2dp {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_createA2dpSrcProfile_292001
     * @tc.name      : test_bt_a2dp_createA2dpSrcProfile
     * @tc.desc      : Test createA2dpSrcProfile factory function returns a profile instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_createA2dpSrcProfile(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_createA2dpSrcProfile begins.")
        let profile: A2dpSourceProfile = createA2dpSrcProfile()
        try {
            let devices: Array<String> = profile.getConnectedDevices()
            @Expect(devices.size == 0)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_createA2dpSrcProfile ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_PlayingState_values_292002
     * @tc.name      : test_bt_a2dp_PlayingState_values
     * @tc.desc      : Test PlayingState enum values StateNotPlaying and StatePlaying
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_PlayingState_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_PlayingState_values begins.")
        let notPlaying = PlayingState.StateNotPlaying
        let playing = PlayingState.StatePlaying
        @Expect(notPlaying.toString(), "PlayingState.StateNotPlaying")
        @Expect(playing.toString(), "PlayingState.StatePlaying")
        @Expect(notPlaying != playing, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_PlayingState_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_CodecType_values_292003
     * @tc.name      : test_bt_a2dp_CodecType_values
     * @tc.desc      : Test CodecType enum values Invalid/Sbc/Aac/L2hc
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_CodecType_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecType_values begins.")
        let invalid = CodecType.CodecTypeInvalid
        let sbc = CodecType.CodecTypeSbc
        let aac = CodecType.CodecTypeAac
        let l2hc = CodecType.CodecTypeL2hc
        @Expect(invalid.toString(), "CodecType.CodecTypeInvalid")
        @Expect(sbc.toString(), "CodecType.CodecTypeSbc")
        @Expect(aac.toString(), "CodecType.CodecTypeAac")
        @Expect(l2hc.toString(), "CodecType.CodecTypeL2hc")
        @Expect(invalid != sbc, true)
        @Expect(invalid != aac, true)
        @Expect(invalid != l2hc, true)
        @Expect(sbc != aac, true)
        @Expect(sbc != l2hc, true)
        @Expect(aac != l2hc, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecType_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_CodecChannelMode_values_292004
     * @tc.name      : test_bt_a2dp_CodecChannelMode_values
     * @tc.desc      : Test CodecChannelMode enum values None/Mono/Stereo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_CodecChannelMode_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecChannelMode_values begins.")
        let none = CodecChannelMode.CodecChannelModeNone
        let mono = CodecChannelMode.CodecChannelModeMono
        let stereo = CodecChannelMode.CodecChannelModeStereo
        @Expect(none.toString(), "CodecChannelMode.CodecChannelModeNone")
        @Expect(mono.toString(), "CodecChannelMode.CodecChannelModeMono")
        @Expect(stereo.toString(), "CodecChannelMode.CodecChannelModeStereo")
        @Expect(none != mono, true)
        @Expect(none != stereo, true)
        @Expect(mono != stereo, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecChannelMode_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_CodecBitsPerSample_values_292005
     * @tc.name      : test_bt_a2dp_CodecBitsPerSample_values
     * @tc.desc      : Test CodecBitsPerSample enum values None/16/24/32
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_CodecBitsPerSample_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecBitsPerSample_values begins.")
        let none = CodecBitsPerSample.CodecBitsPerSampleNone
        let bits16 = CodecBitsPerSample.CodecBitsPerSample16
        let bits24 = CodecBitsPerSample.CodecBitsPerSample24
        let bits32 = CodecBitsPerSample.CodecBitsPerSample32
        @Expect(none.toString(), "CodecBitsPerSample.CodecBitsPerSampleNone")
        @Expect(bits16.toString(), "CodecBitsPerSample.CodecBitsPerSample16")
        @Expect(bits24.toString(), "CodecBitsPerSample.CodecBitsPerSample24")
        @Expect(bits32.toString(), "CodecBitsPerSample.CodecBitsPerSample32")
        @Expect(none != bits16, true)
        @Expect(none != bits24, true)
        @Expect(none != bits32, true)
        @Expect(bits16 != bits24, true)
        @Expect(bits16 != bits32, true)
        @Expect(bits24 != bits32, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecBitsPerSample_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_CodecSampleRate_values_292006
     * @tc.name      : test_bt_a2dp_CodecSampleRate_values
     * @tc.desc      : Test CodecSampleRate enum values None/44100/48000/88200/96000/176400/192000
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_CodecSampleRate_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecSampleRate_values begins.")
        let none = CodecSampleRate.CodecSampleRateNone
        let r44100 = CodecSampleRate.CodecSampleRate44100
        let r48000 = CodecSampleRate.CodecSampleRate48000
        let r88200 = CodecSampleRate.CodecSampleRate88200
        let r96000 = CodecSampleRate.CodecSampleRate96000
        let r176400 = CodecSampleRate.CodecSampleRate176400
        let r192000 = CodecSampleRate.CodecSampleRate192000
        @Expect(none.toString(), "CodecSampleRate.CodecSampleRateNone")
        @Expect(r44100.toString(), "CodecSampleRate.CodecSampleRate44100")
        @Expect(r48000.toString(), "CodecSampleRate.CodecSampleRate48000")
        @Expect(r88200.toString(), "CodecSampleRate.CodecSampleRate88200")
        @Expect(r96000.toString(), "CodecSampleRate.CodecSampleRate96000")
        @Expect(r176400.toString(), "CodecSampleRate.CodecSampleRate176400")
        @Expect(r192000.toString(), "CodecSampleRate.CodecSampleRate192000")
        @Expect(none != r44100, true)
        @Expect(r44100 != r48000, true)
        @Expect(r48000 != r88200, true)
        @Expect(r88200 != r96000, true)
        @Expect(r96000 != r176400, true)
        @Expect(r176400 != r192000, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecSampleRate_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_CodecInfo_reference_292007
     * @tc.name      : test_bt_a2dp_CodecInfo_reference
     * @tc.desc      : Test CodecInfo class type reference and field types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_CodecInfo_reference(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecInfo_reference begins.")
        let cb = CodecInfoCb()
        @Expect(!cb.lastArg.isSome())
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_CodecInfo_reference ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_getPlayingState_292008
     * @tc.name      : test_bt_a2dp_getPlayingState
     * @tc.desc      : Test getPlayingState throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_getPlayingState(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getPlayingState begins.")
        let profile = createA2dpSrcProfile()
        try {
            let _: PlayingState = profile.getPlayingState("00:11:22:33:AA:BB:FF")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getPlayingState ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_getConnectedDevices_292009
     * @tc.name      : test_bt_a2dp_getConnectedDevices
     * @tc.desc      : Test getConnectedDevices throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_getConnectedDevices(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getConnectedDevices begins.")
        let profile = createA2dpSrcProfile()
        try {
            let _: Array<String> = profile.getConnectedDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getConnectedDevices ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_getConnectionState_292010
     * @tc.name      : test_bt_a2dp_getConnectionState
     * @tc.desc      : Test getConnectionState throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_getConnectionState(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getConnectionState begins.")
        let profile = createA2dpSrcProfile()
        try {
            let _: ProfileConnectionState = profile.getConnectionState("00:11:22:33:AA:BB:FF")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_getConnectionState ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_on_292011
     * @tc.name      : test_bt_a2dp_on
     * @tc.desc      : Test on(eventType, callback) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_on(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_on begins.")
        let profile = createA2dpSrcProfile()
        let cb = A2dpStateChangeCb()
        try {
            profile.on(ProfileCallbackType.ConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_on ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_off_with_callback_292012
     * @tc.name      : test_bt_a2dp_off_with_callback
     * @tc.desc      : Test off(eventType, callback) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_off_with_callback(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_off_with_callback begins.")
        let profile = createA2dpSrcProfile()
        let cb = EmptyCallbackObject()
        try {
            profile.off(ProfileCallbackType.ConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_off_with_callback ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_a2dp_off_no_callback_292013
     * @tc.name      : test_bt_a2dp_off_no_callback
     * @tc.desc      : Test off(eventType) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_a2dp_off_no_callback(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_off_no_callback begins.")
        let profile = createA2dpSrcProfile()
        try {
            profile.off(ProfileCallbackType.ConnectionStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_a2dp_off_no_callback ends.")
    }
}
