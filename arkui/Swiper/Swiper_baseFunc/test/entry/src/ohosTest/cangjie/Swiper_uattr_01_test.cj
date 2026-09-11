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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Swiper_uattr_01.*
@Test
class Swiper_uattr_01_test {
    /*
     * @tc.number    : TestSwiper_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the DotIndicator with all params of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Swiper_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_uattr_02_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"itemWidth\":\"6.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"itemHeight\":\"6.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"selectedItemWidth\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"selectedItemHeight\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"mask\":\"true\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"color\":\"#FF000000\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"selectedColor\":\"#FFFF0000\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"maxDisplayCount\":\"9\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"left\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"top\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"right\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"bottom\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"start\":\"5.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_02_id","indicator").contains("\"end\":\"5.00vp\""),false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSwiper_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the DigitIndicator with all params of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_uattr_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Swiper_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_uattr_03_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"fontColor\":\"#FF000000\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"selectedFontColor\":\"#FFFF0000\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"digitFont\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"selectedDigitFont\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"left\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"top\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"right\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"bottom\":\"10.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"start\":\"5.00vp\""),false)
        @Expect(getInspect.getAttributeValue("Swiper_uattr_03_id","indicator").contains("\"end\":\"5.00vp\""),false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}
