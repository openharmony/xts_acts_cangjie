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
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.app.ability.ability_delegator_registry.*
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import ohos.ui_test.*
@Test
class GridRow_comattr_constraintsize_3_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.GridRow_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_GridRow_ca_constraintsize_01")
}
    @AfterEach
    func afterEach() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
    }
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_201\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_201")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_202\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_202")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"8.55px\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_203\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_203")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"8.00px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_204\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_204")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_205\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_205")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_206\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_206")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_207\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_207")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_208\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_208")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_209\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_209")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"10.00fp\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_210\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_210")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_211\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_211")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_212\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_212")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_213\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_213")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_214\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_214")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.00lpx\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_215\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_215")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_216\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_216")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"7.00%\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_217\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_217")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_218\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_218")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_219\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_219")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_220\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_220")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"7.55%\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_221\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_221")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_222\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_222")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_223\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_223")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_224\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_224")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_225\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_225")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_226\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_226")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"10.00fp\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_227\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_227")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_228\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_228")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_229\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_229")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_230\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_230")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_231\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_231")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_232\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_232")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_233\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_233")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_234\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_234")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"7.55%\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_235\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_235")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_236\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_236")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_237\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_237")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11px\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_238\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_238")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"7.00%\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_239\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_239")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"8.00px\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_240\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_240")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"7.00%\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_241\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_241")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_242\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_242")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_243\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_243")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"8.55px\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_244\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_244")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_245\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_245")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_246\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_246")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"10.00fp\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_247\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_247")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_248\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_248")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_249\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_249")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_250\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_250")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_251\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_251")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"8.00px\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_252\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_252")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_253\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_253")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_254\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_254")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_255\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_255")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"8.55px\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_256\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_256")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_257\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_257")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_258\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_258")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_259\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_259")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_260\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_260")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_261\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_261")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_262\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_262")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"7.55%\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_263\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_263")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"7.00%\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"-10.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_264\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_264")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"7.55%\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_265\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_265")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_266\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_266")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_267\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_267")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"10.00fp\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_268\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_268")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_269\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_269")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_270\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_270")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_271\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_271")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_272\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_272")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"8.55px\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_273\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_273")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_274\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_274")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"-10.00lpx\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_275\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_275")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_276\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_276")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_277\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_277")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_278\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_278")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_279\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_279")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_280\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_280")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"8.00px\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_281\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_281")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"8.55px\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_282\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_282")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"-10.11vp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_283\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_283")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_284\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_284")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"7.55%\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_285\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_285")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_286\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_286")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_287\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_287")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_288\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_288")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_289\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_289")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_290\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_290")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_291\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_291")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_292\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_292")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_293\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_293")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"7.55%\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_294\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_294")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_295\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_295")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_296\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_296")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"-10.11fp\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_297\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_297")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_298\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_298")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"8.00px\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_299\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_299")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        try{
            @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"-10.11lpx\"}\"")
            @Expect(false)
        }catch(e:Exception){
            @Expect(e.message.contains("ui component not found by id"))
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_constraintsize_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_GridRow_comattr_constraintsize_300\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_GridRow_comattr_constraintsize_300")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"7.00%\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 ends.")
    }
}
