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
import std.unittest.*
import std.unittest.common.*
import std.collection.*
import ohos.ui_test.*
import ohos.hilog.Hilog
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.NetworkKit.*

@Test
class Test_HttpRequestOptions_02 {
    
    /*
    * @tc.number    : Sub_Cangjie_NetHttp_Test_HttpRequestOptions_02_0100
    * @tc.name      : test_method_01
    * @tc.desc      : test NetHttp test_method_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_method_01(): Unit {
        let httpRequest:HttpRequest = createHttp()
        try{
            httpRequest.request(
                "https://gitee.com/organizations/openharmony/projects",
                {
                    e, resp =>
                    if (let Some(err) <- e) {
                        Hilog.info(0, "CangjieTest", "${err.code}")
                        Hilog.info(0, "CangjieTest", "${err.message}")
                    }
                    if (let Some(r) <- resp) {
                        match (r.resultType) {
                            case STRING => Hilog.info(0, "CangjieTest", "STRING")
                            case ARRAY_BUFFER => Hilog.info(0, "CangjieTest", "ARRAY_BUFFER")
                            case _ => Hilog.info(0, "CangjieTest", " ")
                        }
                        match (r.responseCode) {
                            case OK => Hilog.info(0, "CangjieTest", "200")
                            case CREATED => Hilog.info(0, "CangjieTest", "201")
                            case _ => ()
                        }
                        let pt: PerformanceTiming = r.performanceTiming
                        Hilog.info(0, "CangjieTest", "${r.header}")
                        Hilog.info(0, "CangjieTest", "${r.cookies}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.dnsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tcpTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.tlsTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstSendTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.firstReceiveTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalFinishTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.redirectTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseHeaderTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.responseBodyTiming}")
                        Hilog.info(0, "CangjieTest", "${r.performanceTiming.totalTiming}")
                    } else {
                        Hilog.error(0, "CangjieTest", "response is none")
                    }
                }
            )
            @Expect(true)
        } catch(e:Exception) {
            @Expect(false)
            Hilog.error(0, "", "case_test_method_01 " + e.toString())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_NetHttp_Test_HttpRequestOptions_02_0200
     * @tc.name      : test_httpStructs_02
     * @tc.desc      : Constructs HttpRequestOptions fully, plus ClientCert and MultiFormData variants and HttpRequestEvent equality.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_httpStructs_02(): Unit {
        let header = HashMap<String, String>()
        header.add("content-type", "application/json")
        let bytes: Array<Byte> = [1u8, 2u8, 3u8]
        let form = MultiFormData("upload", "text/plain", remoteFileName: "a.txt",
            data: HttpData.ArrayData(bytes), filePath: "")
        let cert = ClientCert("/cert.pem", "/key.pem", certType: CertType.P12, keyPassword: "secret")
        let opts = HttpRequestOptions(
            method: RequestMethod.Post,
            extraData: HttpData.ArrayData(bytes),
            expectDataType: HttpDataType.ArrayBuffer,
            usingCache: false,
            priority: 1000u32,
            header: header,
            readTimeout: 100u32,
            connectTimeout: 200u32,
            usingProtocol: HttpProtocol.Http2,
            usingProxy: UsingProxy.NotUse,
            caPath: "/system/etc/ca",
            resumeFrom: -1i64,
            resumeTo: 1024i64,
            clientCert: cert,
            dnsOverHttps: "https://example-do",
            dnsServers: ["1.1.1.1", "8.8.8.8"],
            maxLimit: 1024u32,
            multiFormDataList: [form]
        )
        match (opts.method) {
            case Post => @Expect(true)
            case _ => @Expect(false)
        }
        match (opts.expectDataType) {
            case Some(dt) => match (dt) {
                case ArrayBuffer => @Expect(true)
                case _ => @Expect(false)
            }
            case None => @Expect(false)
        }
        match (opts.usingProtocol) {
            case Some(p) => match (p) {
                case Http2 => @Expect(true)
                case _ => @Expect(false)
            }
            case None => @Expect(false)
        }
        match (opts.usingProxy) {
            case NotUse => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(opts.usingCache, false)
        @Expect(opts.priority, 1000u32)
        @Expect(opts.readTimeout, 100u32)
        @Expect(opts.connectTimeout, 200u32)
        @Expect(opts.caPath, "/system/etc/ca")
        @Expect(opts.resumeFrom, -1i64)
        @Expect(opts.resumeTo, 1024i64)
        @Expect(opts.dnsOverHttps, "https://example-do")
        @Expect(opts.dnsServers.size, 2)
        @Expect(opts.maxLimit, 1024u32)
        @Expect(opts.multiFormDataList.size, 1)
        @Expect(opts.clientCert.certPath, "/cert.pem")
        @Expect(opts.clientCert.keyPath, "/key.pem")
        @Expect(opts.clientCert.keyPassword, "secret")
        @Expect(form.name, "upload")
        @Expect(form.contentType, "text/plain")
        @Expect(form.remoteFileName, "a.txt")
        @Expect(form.filePath, "")
        match (form.data) {
            case ArrayData(value) => @Expect(value.size, 3)
            case _ => @Expect(false)
        }
        @Expect(cert.certPath, "/cert.pem")
        @Expect(cert.keyPath, "/key.pem")
        @Expect(cert.keyPassword, "secret")
        match (cert.certType) {
            case P12 => @Expect(true)
            case _ => @Expect(false)
        }
        let certDefault = ClientCert("", "")
        @Expect(certDefault.certPath, "")
        @Expect(certDefault.keyPath, "")
        @Expect(certDefault.keyPassword, "")
        match (certDefault.certType) {
            case Pem => @Expect(true)
            case _ => @Expect(false)
        }
        @Expect(HttpRequestEvent.HeadersReceive == HttpRequestEvent.HeadersReceive)
        @Expect(HttpRequestEvent.HeadersReceive != HttpRequestEvent.DataReceive)
        @Expect(HttpRequestEvent.HeadersReceive.hashCode() == HttpRequestEvent.HeadersReceive.hashCode())
        @Expect(HttpRequestEvent.HeadersReceive.hashCode() != HttpRequestEvent.DataReceive.hashCode())
        let cache = createHttpResponseCache()
        cache.flush()
        @Expect(true)
        Hilog.info(0, "CangjieTest", "test_httpStructs_02 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_NetHttp_Test_HttpRequestOptions_02_0300
     * @tc.name      : test_httpEventOnceOff_03
     * @tc.desc      : Registers and removes listeners for every HttpRequestEvent member through once/on and off.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_httpEventOnceOff_03(): Unit {
        let httpRequest = createHttp()
        let headersCb = HeadersReceiveCb(
            {
                headers => Hilog.info(0, "CangjieTest", "HeadersReceive size ${headers.size}")
            })
        httpRequest.once(HttpRequestEvent.HeadersReceive, headersCb)
        httpRequest.off(HttpRequestEvent.HeadersReceive, callback: headersCb)
        httpRequest.off(HttpRequestEvent.HeadersReceive)

        let dataReceiveCb = DataReceiveCb(
            {
                data => Hilog.info(0, "CangjieTest", "DataReceive size ${data.size}")
            })
        httpRequest.on(HttpRequestEvent.DataReceive, dataReceiveCb)
        httpRequest.off(HttpRequestEvent.DataReceive, callback: dataReceiveCb)

        let dataEndCb = DataEndCb(
            {
                => Hilog.info(0, "CangjieTest", "DataEnd")
            })
        httpRequest.on(HttpRequestEvent.DataEnd, dataEndCb)
        httpRequest.off(HttpRequestEvent.DataEnd, callback: dataEndCb)

        let drpiCb = DataReceiveProgressCb(
            {
                info => Hilog.info(0, "CangjieTest", "DataReceiveProgress ${info.receiveSize}/${info.totalSize}")
            })
        httpRequest.on(HttpRequestEvent.DataReceiveProgress, drpiCb)
        httpRequest.off(HttpRequestEvent.DataReceiveProgress, callback: drpiCb)

        let dspiCb = DataSendProgressCb(
            {
                info => Hilog.info(0, "CangjieTest", "DataSendProgress ${info.sendSize}/${info.totalSize}")
            })
        httpRequest.on(HttpRequestEvent.DataSendProgress, dspiCb)
        httpRequest.off(HttpRequestEvent.DataSendProgress, callback: dspiCb)

        httpRequest.destroy()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_NetHttp_Test_HttpRequestOptions_02_0400
     * @tc.name      : test_httpEnumsReference
     * @tc.desc      : Drives every RequestMethod, HttpProtocol, HttpDataType, HttpData, UsingProxy and CertType value through real constructors and reads the values back.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_httpEnumsReference(): Unit {
        let header = HashMap<String, String>()
        header.add("content-type", "application/json")
        let cert = ClientCert("/cert.pem", "/key.pem")
        let proxy = HttpProxy("127.0.0.1", 8080u32, Array<String>())
        func buildOpts(method: RequestMethod, proto: HttpProtocol, dataType: HttpDataType, useProxy: UsingProxy): HttpRequestOptions {
            HttpRequestOptions(
                method: method,
                extraData: HttpData.StringData("x"),
                expectDataType: dataType,
                usingCache: false,
                priority: 1000u32,
                header: header,
                readTimeout: 100u32,
                connectTimeout: 200u32,
                usingProtocol: proto,
                usingProxy: useProxy,
                caPath: "/system/etc/ca",
                resumeFrom: -1i64,
                resumeTo: 1024i64,
                clientCert: cert,
                dnsOverHttps: "",
                dnsServers: ["1.1.1.1", "8.8.8.8"],
                maxLimit: 1024u32,
                multiFormDataList: []
            )
        }
        let methods: Array<RequestMethod> = [
            RequestMethod.Options, RequestMethod.Get, RequestMethod.Head, RequestMethod.Post,
            RequestMethod.Put, RequestMethod.Delete, RequestMethod.Trace, RequestMethod.Connect
        ]
        for (m in methods) {
            let opts = buildOpts(m, HttpProtocol.Http1_1, HttpDataType.StringValue, UsingProxy.NotUse)
            match ((m, opts.method)) {
                case (Options, Options) => @Expect(true)
                case (Get, Get) => @Expect(true)
                case (Head, Head) => @Expect(true)
                case (Post, Post) => @Expect(true)
                case (Put, Put) => @Expect(true)
                case (Delete, Delete) => @Expect(true)
                case (Trace, Trace) => @Expect(true)
                case (Connect, Connect) => @Expect(true)
                case _ => @Expect(false)
            }
        }
        let protocols: Array<HttpProtocol> = [HttpProtocol.Http1_1, HttpProtocol.Http2, HttpProtocol.Http3]
        for (p in protocols) {
            let opts = buildOpts(RequestMethod.Post, p, HttpDataType.StringValue, UsingProxy.NotUse)
            match (opts.usingProtocol) {
                case Some(pp) => match ((p, pp)) {
                    case (Http1_1, Http1_1) => @Expect(true)
                    case (Http2, Http2) => @Expect(true)
                    case (Http3, Http3) => @Expect(true)
                    case _ => @Expect(false)
                }
                case None => @Expect(false)
            }
        }
        let dataTypes: Array<HttpDataType> = [HttpDataType.StringValue, HttpDataType.ArrayBuffer]
        for (dt in dataTypes) {
            let opts = buildOpts(RequestMethod.Post, HttpProtocol.Http1_1, dt, UsingProxy.NotUse)
            match (opts.expectDataType) {
                case Some(dtt) => match ((dt, dtt)) {
                    case (StringValue, StringValue) => @Expect(true)
                    case (ArrayBuffer, ArrayBuffer) => @Expect(true)
                    case _ => @Expect(false)
                }
                case None => @Expect(false)
            }
        }
        let proxies: Array<UsingProxy> = [UsingProxy.NotUse, UsingProxy.UseDefault, UsingProxy.UseSpecified(proxy)]
        for (up in proxies) {
            let opts = buildOpts(RequestMethod.Post, HttpProtocol.Http1_1, HttpDataType.StringValue, up)
            match ((up, opts.usingProxy)) {
                case (NotUse, NotUse) => @Expect(true)
                case (UseDefault, UseDefault) => @Expect(true)
                case (UseSpecified(_), UseSpecified(hp)) => @Expect(hp.host, "127.0.0.1")
                case _ => @Expect(false)
            }
        }
        let dataValues: Array<HttpData> = [HttpData.StringData("x"), HttpData.ArrayData([1u8, 2u8])]
        for (dv in dataValues) {
            let form = MultiFormData("upload", "text/plain", data: dv)
            match ((dv, form.data)) {
                case (StringData(v), StringData(rv)) => @Expect(rv.size > 0)
                case (ArrayData(v), ArrayData(rv)) => @Expect(rv.size, 2)
                case _ => @Expect(false)
            }
        }
        let certTypes: Array<CertType> = [CertType.Pem, CertType.Der, CertType.P12]
        for (ct in certTypes) {
            let c = ClientCert("/c.pem", "/k.pem", certType: ct)
            match ((ct, c.certType)) {
                case (Pem, Pem) => @Expect(true)
                case (Der, Der) => @Expect(true)
                case (P12, P12) => @Expect(true)
                case _ => @Expect(false)
            }
        }
    }
}

class HeadersReceiveCb <: Callback1Argument<HashMap<String, String>> {
    let callback_: (HashMap<String, String>) -> Unit
    public init(callback: (HashMap<String, String>) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: HashMap<String, String>): Unit {
        callback_(val)
    }
}

class DataReceiveCb <: Callback1Argument<Array<Byte>> {
    let callback_: (Array<Byte>) -> Unit
    public init(callback: (Array<Byte>) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: Array<Byte>): Unit {
        callback_(val)
    }
}

class DataEndCb <: Callback0Argument {
    let callback_: () -> Unit
    public init(callback: () -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException): Unit {
        callback_()
    }
}

class DataReceiveProgressCb <: Callback1Argument<DataReceiveProgressInfo> {
    let callback_: (DataReceiveProgressInfo) -> Unit
    public init(callback: (DataReceiveProgressInfo) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: DataReceiveProgressInfo): Unit {
        callback_(val)
    }
}

class DataSendProgressCb <: Callback1Argument<DataSendProgressInfo> {
    let callback_: (DataSendProgressInfo) -> Unit
    public init(callback: (DataSendProgressInfo) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: DataSendProgressInfo): Unit {
        callback_(val)
    }
}