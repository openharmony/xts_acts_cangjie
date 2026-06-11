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

@Test
public class Test_hiAppEvent_config {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_config_0100
     * @tc.name      : Test_hiappevent_config_01
     * @tc.desc      : test Hiappevent Test_hiappevent_config_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_config_01(): Unit {
        Hilog.info(0, "Test_hiappevent_config_01", "Test_hiappevent_config_01_start")
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "2K", disable: false)
            HiAppEvent.configure(config)

            let str = "kjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHJKLjSKCKnSCLKLKSJN;KXJC;LjsDPIAKNC,MsnXKlzHCIPADFIENKLASJDC;SKJDLKjxCLKHIalsFCHLJKASJCDLKsDCLKkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:lsJDCLKSAHDkjhJfhfld;vhbjck;czpicjijd;plKSODOIiUSJBCABiouaiocfnjhcfgblZKLc'zcbjuqg2wuiu	iuiAUSRHVSCKJZXHCLKKSCDVlodgkhasgdksjdisuidyuevfdkdjchxikcuskdcLZKBHcf;ASkdcAsyudcioaqnejkahbsk;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSAD"
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
            HiAppEvent.write(appInfo)

            Hilog.info(0, "Test_hiappevent_config_01", "Test_hiappevent_config_01_pass")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_config_01", "Test_hiappevent_config_01_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_config_01", "Test_hiappevent_config_01_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_config_0200
     * @tc.name      : Test_hiappevent_config_02
     * @tc.desc      : test Hiappevent Test_hiappevent_config_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_config_02(): Unit {
        Hilog.info(0, "Test_hiappevent_config_02", "Test_hiappevent_config_02_start")
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "2K", disable: true)
            HiAppEvent.configure(config)

            let str = "kjhJfhfld;vhbjck"
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_config_02", "Test_hiappevent_config_02_fail")
        } catch (e: BusinessException) {
            @Expect(e.code, 11100001)
            @Expect(e.message, "Function is disabled.")
            Hilog.info(0, "Test_hiappevent_config_02", "Test_hiappevent_config_02_pass_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_config_02", "Test_hiappevent_config_02_end")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_config_0300
     * @tc.name      : Test_hiappevent_config_03
     * @tc.desc      : test Hiappevent Test_hiappevent_config_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_config_03(): Unit {
        Hilog.info(0, "Test_hiappevent_config_03", "Test_hiappevent_config_03_start")
        let arr = ["2B", "2b", "2K", "2k", "2KB", "2kb", "2M", "2m", "2MB", "2mb", "2G", "2g", "2GB", "2gb", "2T", "2t",
            "2TB", "2tb"]
        for (size in arr) {
            try {
                var config: ConfigOption = ConfigOption(maxStorage: size, disable: false)
                HiAppEvent.configure(config)

                let str = "kjhJfhfld;vhbjck;czpicjijd;;;xc j:Xuc[odivopsjkdvfHSWGDOIlsjdqx;'ADXshCJZCJHAZJHDSADASOJDCashjdclkSA:;vhbj"
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
                var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
                HiAppEvent.write(appInfo)

                Hilog.info(0, "Test_hiappevent_config_03", "Test_hiappevent_config_03_pass_${size}")
            } catch (e: Exception) {
                @Expect(false)
                Hilog.info(0, "Test_hiappevent_config_03", "Test_hiappevent_config_03_fail_${size}_${e.toString()}")
            } finally {
                Hilog.info(0, "Test_hiappevent_config_03", "Test_hiappevent_config_03_${size}_end")
            }
        }
        Hilog.info(0, "Test_hiappevent_config_03", "Test_hiappevent_config_03_end")
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_config_0400
     * @tc.name      : Test_hiappevent_config_04
     * @tc.desc      : test Hiappevent Test_hiappevent_config_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func Test_hiappevent_config_04(): Unit {
        Hilog.info(0, "Test_hiappevent_config_04", "Test_hiappevent_config_04_start")
        try {
            var config: ConfigOption = ConfigOption(maxStorage: "B", disable: false)

            HiAppEvent.configure(config)

            let str = "kjhJfhfld;vhbjck;czpicjijd;plKSOD"
            var params = HashMap<String, EventValueType>([
                ("int_data", IntValue(100)),
                ("str_data", StringValue("strValue")),
                ("flo_data", FloatValue(123.45)),
                ("bool_data", BoolValue(true)),
                ("arri32_data", ArrInt32([1, 2, 3])),
                ("arrf64_data", ArrFloat64([1.2])),
                ("arrstr_data", ArrString(["123"])),
                ("arrbool_data", ArrBool([true]))
            ])
            var appInfo: AppEventInfo = AppEventInfo("cangjie_1", "$cangjie_1", EventType.Statistic, params)
            HiAppEvent.write(appInfo)
            @Expect(false)
            Hilog.info(0, "Test_hiappevent_config_04", "Test_hiappevent_config_04_pass")
        } catch (e: BusinessException) {
            @Expect(e.code, 11103001)
            @Expect(e.message, "Invalid max storage quota value.")
            Hilog.info(0, "Test_hiappevent_config_04", "Test_hiappevent_config_04_fail_${e.toString()}")
        } finally {
            Hilog.info(0, "Test_hiappevent_config_04", "Test_hiappevent_config_04_end")
        }
    }
}
