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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { getDefaultSeason, isHotSeason, rotateSeason, Season, seasonFromOrdinal } from "libohos_app_cangjie_entry.so"

export default function TestEnum() {
  describe('TestEnum', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    it('getDefaultSeasonReturnsSpring', 0, () => {
      const result = getDefaultSeason();
      expect(result).assertEqual(Season.Spring);
    })
    it('rotateSeasonMovesForward', 0, () => {
      const next = rotateSeason(Season.Autumn);
      expect(next).assertEqual(Season.Winter);
    })
    it('rotateSeasonWrapsAround', 0, () => {
      const next = rotateSeason(Season.Winter);
      expect(next).assertEqual(Season.Spring);
    })
    it('isHotSeasonOnlyTrueForSummer', 0, () => {
      expect(isHotSeason(Season.Summer)).assertTrue();
      expect(isHotSeason(Season.Spring)).assertFalse();
    })
    it('seasonFromOrdinalHandlesInvalid', 0, () => {
      const valid = seasonFromOrdinal(2);
      expect(valid).assertEqual(Season.Autumn);
      const invalid = seasonFromOrdinal(-1);
      expect(invalid === undefined).assertTrue();
    })
  })
}
