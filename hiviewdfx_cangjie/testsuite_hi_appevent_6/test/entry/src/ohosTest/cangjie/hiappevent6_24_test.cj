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
class testSetUserId_2 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_101(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_101 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_102(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_102 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_103(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_103 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_104(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_104 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_105(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_105 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_106(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_106 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_107(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_107 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_108(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_108 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_109(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_109 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_110(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_110 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_111(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_111 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_112(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_112 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_113(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_113 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("$_$", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_114(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_114 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "Aa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_115(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_115 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_116(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_116 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_117(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_117 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_118(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_118 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_119(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_119 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_120(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_120 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_121(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_121 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_122(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_122 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_123(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_123 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_124(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_124 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_125(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_125 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_126(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_126 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$_$", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_127(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_127 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("__", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_128(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_128 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "Aa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_129(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_129 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_130(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_130 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_131(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_131 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_132(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_132 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_133(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_133 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_134(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_134 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_135(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_135 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_136(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_136 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_137(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_137 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_138(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_138 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_139(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_139 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_140(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_140 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("__", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_141(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_141 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("_A", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_142(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_142 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "Aa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_143(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_143 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_144(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_144 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_145(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_145 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_146(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_146 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_147(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_147 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_148(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_148 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_149(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_149 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_150(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_150 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_151(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_151 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_152(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_152 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_153(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_153 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_154(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_154 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_A", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_155(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_155 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("_1", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_156(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_156 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "Aa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_157(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_157 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_158(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_158 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_159(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_159 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_160(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_160 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_161(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_161 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_162(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_162 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_163(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_163 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_164(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_164 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_165(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_165 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_166(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_166 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_167(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_167 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_168(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_168 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_1", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_169(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_169 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("_a_$", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_170(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_170 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "Aa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_171(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_171 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "Aa1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_172(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_172 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "A11_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_173(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_173 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "A1_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_174(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_174 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "A1_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_175(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_175 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "$A_")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_176(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_176 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "$a1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_177(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_177 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "$A1_b")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_178(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_178 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "$_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_179(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_179 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "__")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_180(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_180 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "_A")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_181(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_181 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "_1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_182(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_182 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("_a_$", "_a_$")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_182 ends.")
    }
}
