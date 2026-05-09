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
import worker from "@ohos.worker";
import * as lib from "libentry.so"

function runPureTestsAsync() {
    interface Req {
        data: string;
    }
    return new Promise<void>(resolve => {
        let w = new worker.ThreadWorker("./PureWorker.ets");
        let req: Req = {
            data: "start"
        };
        w.onmessage = evt => {
            let data = evt.data as Req;
            if (data.data === "end") {
                resolve();
                w.terminate();
            }
        };

        w.postMessage(req);
    });
}

export default function TestExternal() {
  describe('TestExternal', () => {
    it("test01", 0, (): Promise<void> => {
        return runPureTestsAsync()
    })
  })
  afterAll(()=> {
    lib.gcov_dump()
  })
}