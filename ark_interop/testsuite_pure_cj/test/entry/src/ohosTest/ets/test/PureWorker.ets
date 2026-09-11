import { ErrorEvent, MessageEvents, ThreadWorkerGlobalScope, worker } from "@kit.ArkTS";
import * as lib from "libentry.pure.so";

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;

globalThis.callSync = (callback: ()=>void) => {
    callback()
}

workerPort.onmessage = async (event: MessageEvents) => {
    interface Res {
        data: string;
    }

    let req = event.data as Res;
    if (req.data === "start") {
        await lib.runPureTests();
        let res: Res = { data: "end" };
        workerPort.postMessage(res);
    }
};