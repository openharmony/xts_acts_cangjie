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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.*
import ohos.business_exception.BusinessException
import kit.AbilityKit.{ErrorManager, ErrorManagerEvent, ErrorObserver}




@Test
class Test_Error_Manager {
    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : start ability with name "", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1()  {
        let observer = ErrorObserver (
            {_ =>}, onException: {_ =>}
        )
         let id = ErrorManager.on(ErrorManagerEvent.Error, observer)
        @Expect(id >= 0, true)
        ErrorManager.off(ErrorManagerEvent.Error, id)
        @Expect(id >=0, true)        
    }
    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2() {
            try {
            ErrorManager.off(ErrorManagerEvent.Error, -1234)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000003)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0200
     * @tc.name      : TestCase_3
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3() {
        spawn(UIThread){
            try {
        let observer = ErrorObserver (
            {_ =>}, onException: {_ =>}
        )
         let id = ErrorManager.on(ErrorManagerEvent.Error, observer)                
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16200001)
        }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0200
     * @tc.name      : TestCase_4
     * @tc.desc      : start ability with name "xxx", in module with name "", in bundle with name ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0        
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4() {
        spawn(UIThread){
            try {
        let observer = ErrorObserver (
            {_ =>}, onException: {_ =>}
        )
         let id2 = ErrorManager.on(ErrorManagerEvent.Error, observer)                 
            ErrorManager.off(ErrorManagerEvent.Error, id2)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 162000003)
        }
        }
    }

}
