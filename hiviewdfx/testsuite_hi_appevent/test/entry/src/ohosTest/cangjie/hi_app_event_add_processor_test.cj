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

import std.unittest.testmacro.*
import std.collection.*
import ohos.hiviewdfx.hi_app_event.*
import ohos.hilog.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*
internal import ohos.business_exception.BusinessException

@Test
class TestHiAppEventAddProcessor {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0200
     * @tc.name      : test_hiappevent_add_processor_01
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_01(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_01", "Test_hiappevent_addProcessor_01_start")
        var processor: Processor = Processor("test_processor")
        try {
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_01", "Test_hiappevent_addProcessor_01_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_01", "Test_hiappevent_addProcessor_01_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_01", "Test_hiappevent_addProcessor_01_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0300
     * @tc.name      : test_hiappevent_add_processor_02
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_02(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_02", "Test_hiappevent_addProcessor_02_start")
        try {
            let processor = Processor("test_processor", debugMode: false)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_02", "Test_hiappevent_addProcessor_02_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_02", "Test_hiappevent_addProcessor_02_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_02", "Test_hiappevent_addProcessor_02_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0400
     * @tc.name      : test_hiappevent_add_processor_03
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_03(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_03", "Test_hiappevent_addProcessor_03_start")
        try {
            let processor = Processor("test_processor", debugMode: true)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_03", "Test_hiappevent_addProcessor_03_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_03", "Test_hiappevent_addProcessor_03_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_03", "Test_hiappevent_addProcessor_03_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0500
     * @tc.name      : test_hiappevent_add_processor_04
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_04(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_04", "Test_hiappevent_addProcessor_04_start")
        try {
            var processor = Processor(
                "test_processor",
                routeInfo: "kjhJfhfld;vhbjck;czpicjijd;plKSkajdfODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxiZkcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidaDsdxaAAAAAAAAAAAAAAAAAAAAAAAAAA"
            )
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_04", "Test_hiappevent_addProcessor_04_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_04", "Test_hiappevent_addProcessor_04_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_04", "Test_hiappevent_addProcessor_04_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0600
     * @tc.name      : test_hiappevent_add_processor_05
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_05(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_05", "Test_hiappevent_addProcessor_05_start")
        try {
            let processor = Processor("test_processor", routeInfo: "aaaqaaaaaaaa")
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_05", "Test_hiappevent_addProcessor_05_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_05", "Test_hiappevent_addProcessor_05_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_05", "Test_hiappevent_addProcessor_05_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0700
     * @tc.name      : test_hiappevent_add_processor_06
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_06
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_06(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_06", "Test_hiappevent_addProcessor_06_start")
        try {
            let processor = Processor(
                "test_processor",
                appId: "kjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxiZkcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhacfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidaDsdxaAAAAAAAAAAAAAAAAAAAAAAAAA"
            )
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_06", "Test_hiappevent_addProcessor_06_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_06", "Test_hiappevent_addProcessor_06_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_06", "Test_hiappevent_addProcessor_06_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0800
     * @tc.name      : test_hiappevent_add_processor_08
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_08
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_08(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_08", "Test_hiappevent_addProcessor_08_start")
        try {
            let processor = Processor(
                "test_processor",
                appId: "kjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxiZkcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikMnsKXCNlsJCd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidaDsdxaAAAAAAAAAAAAAAAAAAAAAAAAA"
            )
            let processor1 = Processor("test_processor", appId: "")
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            HiAppEvent.removeProcessor(processorId);
            HiAppEvent.removeProcessor(processorId1);
            Hilog.info(0, "test_hiappevent_add_processor_08", "Test_hiappevent_addProcessor_08_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_08", "Test_hiappevent_addProcessor_08_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_08", "Test_hiappevent_addProcessor_08_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_0900
     * @tc.name      : test_hiappevent_add_processor_07
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_07
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_07(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_07", "Test_hiappevent_addProcessor_07_start")
        try {
            let processor = Processor("test_processor", appId: "AJGSDHGSHadD")
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_07", "Test_hiappevent_addProcessor_07_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_07", "Test_hiappevent_addProcessor_07_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_07", "Test_hiappevent_addProcessor_07_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1000
     * @tc.name      : test_hiappevent_add_processor_09
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_09
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_09(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_09", "Test_hiappevent_addProcessor_09_start")
        try {
            let processor = Processor("test_processor", onStartReport: false)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            let processor1 = Processor("test_processor", onStartReport: true)
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            HiAppEvent.removeProcessor(processorId);
            HiAppEvent.removeProcessor(processorId1);
            Hilog.info(0, "test_hiappevent_add_processor_09", "Test_hiappevent_addProcessor_09_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_09", "Test_hiappevent_addProcessor_09_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_09", "Test_hiappevent_addProcessor_09_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1100
     * @tc.name      : test_hiappevent_add_processor_10
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_10(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_10", "Test_hiappevent_addProcessor_10_start")
        try {
            let processor = Processor("test_processor", onBackgroundReport: false)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            let processor1 = Processor("test_processor", onBackgroundReport: true)
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            HiAppEvent.removeProcessor(processorId);
            HiAppEvent.removeProcessor(processorId1);
            Hilog.info(0, "test_hiappevent_add_processor_10", "Test_hiappevent_addProcessor_10_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_10", "Test_hiappevent_addProcessor_10_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_10", "Test_hiappevent_addProcessor_10_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1200
     * @tc.name      : test_hiappevent_add_processor_11
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_11(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_start")
        try {
            let processor = Processor("test_processor", periodReport: 0)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_pass0_${processorId}")
            let processor1 = Processor("test_processor", periodReport: -5)
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_pass1_${processorId1}")
            let processor2 = Processor("test_processor", periodReport: 10)
            let processorId2 = HiAppEvent.addProcessor(processor2)
            let res2 = processorId2 > 0
            @Expect(res2==false)
            Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_pass2_${processorId2}")
        } catch (e: BusinessException) {
            Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_fail_${e.toString()}")
            @Expect(false)
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_11", "Test_hiappevent_addProcessor_11_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1300
     * @tc.name      : test_hiappevent_add_processor_12
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_12(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_12", "Test_hiappevent_addProcessor_12_start")
        try {
            let processor = Processor("test_processor", batchReport: -10)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            let processor1 = Processor("test_processor", batchReport: 0)
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            let processor2 = Processor("test_processor", batchReport: 1000)
            let processorId2 = HiAppEvent.addProcessor(processor2)
            let res2 = processorId2 > 0
            @Expect(res2==false)
            let processor3 = Processor("test_processor", batchReport: 1001)
            let processorId3 = HiAppEvent.addProcessor(processor3)
            let res3 = processorId3 > 0
            @Expect(res3==false)
            Hilog.info(0, "test_hiappevent_add_processor_12", "Test_hiappevent_addProcessor_12_pass_${processorId3}")
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_12", "Test_hiappevent_addProcessor_12_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_12", "Test_hiappevent_addProcessor_12_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1400
     * @tc.name      : test_hiappevent_add_processor_13
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_13(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_13", "Test_hiappevent_addProcessor_13_start")
        try {
            let setuserid = HiAppEvent.setUserId("asd", "qwe")
            let processor = Processor("test_processor", userIds: ["123"])
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_13", "Test_hiappevent_addProcessor_13_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_13", "Test_hiappevent_addProcessor_13_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_13", "Test_hiappevent_addProcessor_13_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1500
     * @tc.name      : test_hiappevent_add_processor_14
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_14(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_14", "Test_hiappevent_addProcessor_14_start")
        try {
            let setuserid = HiAppEvent.setUserId("asd", "qwe")
            let processor1 = Processor("test_processor", userIds: ["asd"])
            let processorId1 = HiAppEvent.addProcessor(processor1)
            let res1 = processorId1 > 0
            @Expect(res1==false)
            HiAppEvent.removeProcessor(processorId1);
            Hilog.info(0, "test_hiappevent_add_processor_14", "Test_hiappevent_addProcessor_14_pass_${processorId1}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_14", "Test_hiappevent_addProcessor_14_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_14", "Test_hiappevent_addProcessor_14_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1600
     * @tc.name      : test_hiappevent_add_processor_15
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_15(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_15", "Test_hiappevent_addProcessor_15_start")
        try {
            let setuserid = HiAppEvent.setUserId("asd", "qwe")
            let setuserid1 = HiAppEvent.setUserId("cangjie", "zhangsan")
            let processor2 = Processor("test_processor", userIds: ["asd", "cangjie"])
            let processorId2 = HiAppEvent.addProcessor(processor2)
            let res2 = processorId2 > 0
            @Expect(res2==false)
            Hilog.info(0, "test_hiappevent_add_processor_15", "Test_hiappevent_addProcessor_15_pass_${processorId2}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_15", "Test_hiappevent_addProcessor_15_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_15", "Test_hiappevent_addProcessor_15_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1700
     * @tc.name      : test_hiappevent_add_processor_16
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_16(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_16", "Test_hiappevent_addProcessor_16_start")
        try {
            let processor = Processor("test_processor", userIds: ["abc"])
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            HiAppEvent.removeProcessor(processorId);
            Hilog.info(0, "test_hiappevent_add_processor_16", "Test_hiappevent_addProcessor_16_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_16", "Test_hiappevent_addProcessor_16_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_16", "Test_hiappevent_addProcessor_16_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1800
     * @tc.name      : test_hiappevent_add_processor_17
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_17(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_17", "Test_hiappevent_addProcessor_17_start")
        try {
            let setuserid = HiAppEvent.setUserProperty("asd", "qwe")
            let processor = Processor("test_processor", userProperties: ["asd"])
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_17", "Test_hiappevent_addProcessor_17_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_17", "Test_hiappevent_addProcessor_17_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_17", "Test_hiappevent_addProcessor_17_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_1900
     * @tc.name      : test_hiappevent_add_processor_18
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_18(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_18", "Test_hiappevent_addProcessor_18_start")
        try {
            let setuserid = HiAppEvent.setUserProperty("asd", "qwe")
            let setuserid1 = HiAppEvent.setUserProperty("cangjie", "zhangsan")
            let processor = Processor("test_processor", userProperties: ["asd", "cangjie"])
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_18", "Test_hiappevent_addProcessor_18_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_18", "Test_hiappevent_addProcessor_18_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_18", "Test_hiappevent_addProcessor_18_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2000
     * @tc.name      : test_hiappevent_add_processor_19
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_19(): Unit {
        let cases_424 = [
            "cangjie_123",
            "zh@xh",
            "zaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        ]
        for (parameter_0 in cases_424) {
            try {
                let eventConfig1 = AppEventReportConfig(domain: parameter_0)
                let Array: Array<AppEventReportConfig> = [eventConfig1]
                let processor = Processor("test_processor", eventConfigs: Array)
                let processorId = HiAppEvent.addProcessor(processor)
                let res = processorId > 0
                @Expect(res==false)
            } catch (e: Exception) {
                @Expect(false)
            } finally {
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2100
     * @tc.name      : test_hiappevent_add_processor_20
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_20(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_20", "Test_hiappevent_addProcessor_20_start")
        try {
            let eventConfig1 = AppEventReportConfig(domain: "cangjieA", name: "@1234adsfdfg")
            let Array: Array<AppEventReportConfig> = [eventConfig1]
            let processor = Processor("test_processor", eventConfigs: Array)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_20", "Test_hiappevent_addProcessor_20_fail_${processorId}")
        } catch (e: Exception) {
            Hilog.info(0, "test_hiappevent_add_processor_20", "Test_hiappevent_addProcessor_20_pass_${e.toString()}")
            @Expect(false)
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_20", "Test_hiappevent_addProcessor_20_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2400
     * @tc.name      : test_hiappevent_add_processor_23
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_23(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_23", "Test_hiappevent_addProcessor_23_start")
        try {
            let eventConfig1 = AppEventReportConfig(domain: "123jsdh")
            let Array: Array<AppEventReportConfig> = [eventConfig1]
            let processor = Processor("test_processor", eventConfigs: Array)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_23", "Test_hiappevent_addProcessor_23_fail_${processorId}")
        } catch (e: BusinessException) {
            Hilog.info(0, "test_hiappevent_add_processor_23", "Test_hiappevent_addProcessor_23_pass_${e.toString()}")
            @Expect(false)
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_23", "Test_hiappevent_addProcessor_23_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2500
     * @tc.name      : test_hiappevent_add_processor_24
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_24(): Unit {
        let cases_425 = [
            "$aaa123_a",
            "123aaa_1",
            "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh12a"
        ]
        for (parameter_0 in cases_425) {
            try {
                let eventConfig1 = AppEventReportConfig(name: parameter_0)
                let Array: Array<AppEventReportConfig> = [eventConfig1]
                let processor = Processor("test_processor", eventConfigs: Array)
                let processorId = HiAppEvent.addProcessor(processor)
                let res = processorId > 0
                @Expect(res==false)
            } catch (e: Exception) {
                @Expect(false)
            } finally {
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2800
     * @tc.name      : test_hiappevent_add_processor_27
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_27
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_27(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_27", "Test_hiappevent_addProcessor_27_start")
        try {
            let eventConfig1 = AppEventReportConfig(isRealTime: false)
            Hilog.info(0, "test_hiappevent_add_processor_27",
                "Test_hiappevent_addProcessor_27_pass_${eventConfig1.domain}")
            let Array: Array<AppEventReportConfig> = [eventConfig1]
            let processor = Processor("test_processor", eventConfigs: Array)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_27", "Test_hiappevent_addProcessor_27_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_27", "Test_hiappevent_addProcessor_27_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_27", "Test_hiappevent_addProcessor_27_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_2900
     * @tc.name      : test_hiappevent_add_processor_28
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_28
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_28(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_28", "Test_hiappevent_addProcessor_28_start")
        try {
            let eventConfig1 = AppEventReportConfig(isRealTime: true)
            let Array: Array<AppEventReportConfig> = [eventConfig1]
            let processor = Processor("test_processor", eventConfigs: Array)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_28", "Test_hiappevent_addProcessor_28_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_28", "Test_hiappevent_addProcessor_28_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_28", "Test_hiappevent_addProcessor_28_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_addProcessor_3000
     * @tc.name      : test_hiappevent_add_processor_29
     * @tc.desc      : test Hiappevent test_hiappevent_add_processor_29
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiappevent_add_processor_29(): Unit {
        Hilog.info(0, "test_hiappevent_add_processor_29", "Test_hiappevent_addProcessor_29_start")
        try {
            let eventConfig1 = AppEventReportConfig(domain: "cangjie", name: "a1234adsfdfg", isRealTime: true)
            let Array: Array<AppEventReportConfig> = [eventConfig1]
            let processor = Processor("test_processor", eventConfigs: Array)
            let processorId = HiAppEvent.addProcessor(processor)
            let res = processorId > 0
            @Expect(res==false)
            Hilog.info(0, "test_hiappevent_add_processor_29", "Test_hiappevent_addProcessor_29_pass_${processorId}")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "test_hiappevent_add_processor_29", "Test_hiappevent_addProcessor_29_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "test_hiappevent_add_processor_29", "Test_hiappevent_addProcessor_29_end")
        }
    }
}
