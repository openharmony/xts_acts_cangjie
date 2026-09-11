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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { testCreateUIAbilityContextFromJSValue, testCreateAbilityStageContextFromJSValue, testCreateApplicationContextFromJSValue, testCreateContextFromJSValue } from 'libohos_app_cangjie_entry.so';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';

export default function TestCreateContextFromJSValue() {
  describe('TestCreateContextFromJSValue', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestCreateContextFromJSValue_0100
    * @tc.name      : testCreateUIAbilityContextFromJSValue
    * @tc.desc      : Create UIAbilityContext from ArkTS context object via JSValue.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('testCreateUIAbilityContextFromJSValue', 0, () => {
      let context = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext();
      testCreateUIAbilityContextFromJSValue(context);
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestCreateContextFromJSValue_0200
    * @tc.name      : testCreateAbilityStageContextFromJSValue
    * @tc.desc      : Create AbilityStageContext from ArkTS context object via JSValue.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('testCreateAbilityStageContextFromJSValue', 0, () => {
      let context = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext();
      testCreateAbilityStageContextFromJSValue(context);
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestCreateContextFromJSValue_0300
    * @tc.name      : testCreateApplicationContextFromJSValue
    * @tc.desc      : Create ApplicationContext from ArkTS context object via JSValue.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('testCreateApplicationContextFromJSValue', 0, () => {
      let context = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext();
      testCreateApplicationContextFromJSValue(context);
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestCreateContextFromJSValue_0400
    * @tc.name      : testCreateContextFromJSValue
    * @tc.desc      : Create Context from ArkTS context object via JSValue.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('testCreateContextFromJSValue', 0, () => {
      let context = AbilityDelegatorRegistry.getAbilityDelegator().getAppContext();
      testCreateContextFromJSValue(context);
    })
  })
}
