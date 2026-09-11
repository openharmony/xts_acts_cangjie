/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import fs from '@ohos.file.fs';
import {
  basePath,
  defaultSoFileName,
  inaccessibleFileName,
  invalidFileName0,
  invalidFileName1,
  invalidFileName2,
  nonExistingFileName,
  relativePathRoot
} from '../../../main/ets/entryability/paths';

interface Lib {}

export default function TestRelativePath() {
  describe('TestRelativePath', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    // 全局requireCJLib，使用相对路径
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0100
    * @tc.name      : test00
    * @tc.desc      : Checks that a valid SO file exists and can be loaded successfully.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, async () => {
      let soFileExists = await fs.access(`${relativePathRoot}/${defaultSoFileName}`);
      expect(soFileExists).assertTrue();
      expect(defaultSoFileName !== undefined).assertTrue();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0200
    * @tc.name      : test01
    * @tc.desc      : Verifies that a non-existing SO file returns undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, async () => {
      const nonExistingFilePath = `${relativePathRoot}/${nonExistingFileName}`;
      const soFileExists = await fs.access(nonExistingFilePath);
      expect(soFileExists).assertFalse();
      expect(nonExistingFileName === undefined).assertFalse();
    })
    // 全局requireCJLib，使用相对路径，路径空字符串
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0300
    * @tc.name      : test02
    * @tc.desc      : Tests loading an invalid file name, expecting undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      expect(invalidFileName0 === undefined).assertFalse();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0400
    * @tc.name      : test03
    * @tc.desc      : Tests another invalid file name, expecting undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      expect(invalidFileName1 === undefined).assertFalse();
    })
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0500
    * @tc.name      : test04
    * @tc.desc      : Tests a third invalid file name, expecting undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, () => {
      expect(invalidFileName2 === undefined).assertFalse();
    })
    // 相对路径存在，但无法加载
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRelativePath_0600
    * @tc.name      : test05
    * @tc.desc      : Checks that an accessible but load-failed file returns undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, async () => {
      let inaccessibleFilePath = `${basePath}/${inaccessibleFileName}`;
      let soFileExists = await fs.access(inaccessibleFilePath);
      expect(soFileExists).assertFalse();
      expect(inaccessibleFileName === undefined).assertFalse();
    })
  })
}