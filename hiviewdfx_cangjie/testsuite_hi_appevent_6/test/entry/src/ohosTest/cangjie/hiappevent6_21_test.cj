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
import std.collection.*
import ohos.base.*
import kit.PerformanceAnalysisKit.*
import kit.PerformanceAnalysisKit.Hilog
@Test
class testGetUserId_2 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_101(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_101 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$A1_b", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$A1_b")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_102(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_102 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$A1_b", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$A1_b")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_103(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_103 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$A1_b", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$A1_b")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_104(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_104 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$A1_b", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$A1_b")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_105(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_105 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "Aa")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "Aa")
        Hilog.info(0, "cangjietest","testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_106(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_106 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "Aa1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "Aa1")
        Hilog.info(0, "cangjietest","testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_107(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_107 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "A11_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "A11_")
        Hilog.info(0, "cangjietest","testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_108(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_108 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "A1_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "A1_$")
        Hilog.info(0, "cangjietest","testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_109(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_109 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "A1_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "A1_1")
        Hilog.info(0, "cangjietest","testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_110(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_110 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "$A_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "$A_")
        Hilog.info(0, "cangjietest","testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_111(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_111 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "$a1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "$a1")
        Hilog.info(0, "cangjietest","testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_112(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_112 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "$A1_b")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "$A1_b")
        Hilog.info(0, "cangjietest","testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_113(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_113 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "$_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "$_$")
        Hilog.info(0, "cangjietest","testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_114(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_114 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_115(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_115 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_116(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_116 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_117(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_117 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("$_$", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("$_$")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_118(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_118 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "Aa")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "Aa")
        Hilog.info(0, "cangjietest","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_119(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_119 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "Aa1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "Aa1")
        Hilog.info(0, "cangjietest","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_120(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_120 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "A11_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "A11_")
        Hilog.info(0, "cangjietest","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_121(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_121 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "A1_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "A1_$")
        Hilog.info(0, "cangjietest","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_122(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_122 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "A1_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "A1_1")
        Hilog.info(0, "cangjietest","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_123(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_123 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "$A_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "$A_")
        Hilog.info(0, "cangjietest","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_124(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_124 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "$a1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "$a1")
        Hilog.info(0, "cangjietest","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_125(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_125 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "$A1_b")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "$A1_b")
        Hilog.info(0, "cangjietest","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_126(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_126 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "$_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "$_$")
        Hilog.info(0, "cangjietest","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_127(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_127 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_128(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_128 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_129(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_129 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_130(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_130 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("__", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("__")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_131(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_131 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "Aa")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "Aa")
        Hilog.info(0, "cangjietest","testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_132(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_132 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "Aa1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "Aa1")
        Hilog.info(0, "cangjietest","testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_133(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_133 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "A11_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "A11_")
        Hilog.info(0, "cangjietest","testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_134(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_134 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "A1_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "A1_$")
        Hilog.info(0, "cangjietest","testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_135(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_135 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "A1_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "A1_1")
        Hilog.info(0, "cangjietest","testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_136(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_136 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "$A_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "$A_")
        Hilog.info(0, "cangjietest","testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_137(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_137 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "$a1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "$a1")
        Hilog.info(0, "cangjietest","testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_138(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_138 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "$A1_b")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "$A1_b")
        Hilog.info(0, "cangjietest","testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_139(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_139 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "$_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "$_$")
        Hilog.info(0, "cangjietest","testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_140(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_140 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_141(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_141 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_142(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_142 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_143(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_143 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_A", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_A")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_144(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_144 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "Aa")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "Aa")
        Hilog.info(0, "cangjietest","testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_145(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_145 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "Aa1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "Aa1")
        Hilog.info(0, "cangjietest","testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_146(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_146 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "A11_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "A11_")
        Hilog.info(0, "cangjietest","testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_147(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_147 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "A1_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "A1_$")
        Hilog.info(0, "cangjietest","testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_148(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_148 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "A1_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "A1_1")
        Hilog.info(0, "cangjietest","testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_149(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_149 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "$A_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "$A_")
        Hilog.info(0, "cangjietest","testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_150(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_150 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "$a1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "$a1")
        Hilog.info(0, "cangjietest","testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_151(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_151 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "$A1_b")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "$A1_b")
        Hilog.info(0, "cangjietest","testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_152(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_152 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "$_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "$_$")
        Hilog.info(0, "cangjietest","testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_153(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_153 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_154(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_154 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_155(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_155 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_156(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_156 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_1", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_1")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_157(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_157 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "Aa")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "Aa")
        Hilog.info(0, "cangjietest","testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_158(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_158 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "Aa1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "Aa1")
        Hilog.info(0, "cangjietest","testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_159(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_159 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "A11_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "A11_")
        Hilog.info(0, "cangjietest","testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_160(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_160 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "A1_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "A1_$")
        Hilog.info(0, "cangjietest","testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_161(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_161 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "A1_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "A1_1")
        Hilog.info(0, "cangjietest","testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_162(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_162 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "$A_")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "$A_")
        Hilog.info(0, "cangjietest","testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_163(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_163 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "$a1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "$a1")
        Hilog.info(0, "cangjietest","testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_164(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_164 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "$A1_b")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "$A1_b")
        Hilog.info(0, "cangjietest","testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_165(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_165 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "$_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "$_$")
        Hilog.info(0, "cangjietest","testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_166(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_166 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "__")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "__")
        Hilog.info(0, "cangjietest","testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_167(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_167 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "_A")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "_A")
        Hilog.info(0, "cangjietest","testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_168(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_168 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "_1")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "_1")
        Hilog.info(0, "cangjietest","testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_getUserId_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.getUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_169(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_169 begins.")
        Hilog.info(0, "cangjietest","SetUserId")
        HiAppEvent.setUserId("_a_$", "_a_$")
        Hilog.info(0, "cangjietest","define local variable returnValue")
        let returnValue = HiAppEvent.getUserId("_a_$")
        @Expect(returnValue, "_a_$")
        Hilog.info(0, "cangjietest","testcase TestCase_169 ends.")
    }
}
