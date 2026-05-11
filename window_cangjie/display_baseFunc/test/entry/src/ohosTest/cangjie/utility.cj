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

import kit.TestKit.*
import kit.AbilityKit.*
import ohos.ui_test
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource_manager.ResourceManager
import ohos.ark_interop.*
import ohos.arkui.state_management.AppStorage
import ohos.arkui.component.*
import std.collection.*
import std.sync.*
import std.time.DateTime
import std.core.Duration
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.collection.*
import std.convert.*

let BOOL_TRUE_STRING = "true".toArray()
let BOOL_FALSE_STRING = "false".toArray()
let NULL_STRING = "null".toArray()
const MIN_CAPACITY = 16
const BLANK: Byte = ' '

@FastNative
foreign func CJ_JSON_ReplaceEscapeChar(input: CPointer<UInt8>, inputlen: Int64, buffer: CPointer<UInt8>, htmlSafe: Bool): Int64

@FastNative
foreign func CJ_JSON_WriteBufferAppendInt(buffer: CPointer<UInt8>, num: Int64): Int64

@FastNative
foreign func CJ_CORE_Float64ToCPointer(num: Float64): CPointer<UInt8>

@FastNative
foreign func strlen(str: CPointer<UInt8>): UIntNative

@FastNative
foreign func CJ_JSON_StringEscapeCharNumGet(input: CPointer<UInt8>, inputlen: Int64, htmlSafe: Bool): Int64

@FastNative
foreign func memcpy_s(dest: CPointer<UInt8>, destMax: UIntNative, src: CPointer<UInt8>, count: UIntNative): Int32

// ============================================================================
// 单位扩展 - 支持时间单位的便捷写法
// ============================================================================

public interface UnitExtension {
    prop second: Duration
    prop milliSecond: Duration
}

extend Int64 <: UnitExtension {
    public prop second: Duration {
        get() {
            Duration.second * this
        }
    }
    public prop milliSecond: Duration {
        get() {
            Duration.millisecond * this
        }
    }
}

extend Float64 <: UnitExtension {
    public prop second: Duration {
        get() {
            Duration.second * this
        }
    }
    public prop milliSecond: Duration {
        get() {
            Duration.millisecond * this
        }
    }
}

public func sleepFor(someDuration: Duration): Unit {
    sleep(someDuration)
}

// ============================================================================
// UI 测试驱动管理
// ============================================================================

public class TestDriver{
    private static var _driver: ?Driver = None

    public static prop driver: Driver {
        get() {
            match (TestDriver._driver) {
                case None =>
                    let newDriver = Driver.create()
                    TestDriver._driver = newDriver
                    newDriver
                case Some(d) => d
            }
        }
    }

    public static func reset(): Unit {
        TestDriver._driver = None
    }
}

// ============================================================================
// UI 操作函数
// ============================================================================

public func pressHome(): Unit {
    TestDriver.driver.pressHome()
}

public func pressBack(): Unit {
    TestDriver.driver.pressBack()
}

public func wakeUpDisplay(): Unit {
    TestDriver.driver.wakeUpDisplay()
}

public func click(at!: Point): Unit {
    TestDriver.driver.click(at.x, at.y)
}

public func input(at!: Point, text!: String): Unit {
    TestDriver.driver.inputText(ui_test.Point(at.x, at.y), text)
}

public func swipe(from!: Point, to!: Point): Unit {
    TestDriver.driver.swipe(from.x, from.y, to.x, to.y)
}

public func swipe(from!: Point, deltaX!: Int32 = 0, deltaY!: Int32 = 0): Unit {
    swipe(from: from, to: Point(from.x + deltaX, from.y + deltaY))
}

public func drag(from!: Point, to!: Point): Unit {
    TestDriver.driver.drag(from.x, from.y, to.x, to.y)
}

public func slide(through!: Array<Point>): Unit {
    let driver = TestDriver.driver
    let pointerMatrix = PointerMatrix.create(1, Int32(through.size))
    through |> enumerate |> forEach {
        pair: (Int64, Point) =>
        let index = pair[0]
        let point = pair[1]
        pointerMatrix.setPoint(0, Int32(index), ui_test.Point(point.x, point.y))
    }
    driver.injectMultiPointerAction(pointerMatrix)
}

// ============================================================================
// 环境设置
// ============================================================================

public func setUp(): Unit {
    wakeUpDisplay()
    clickAllThoseButtons()
    pressHome()
    clickAllThoseButtons()
    pressHome()
    swipe(from: Point(622, 2671), to: Point(631, 2053))
    sleepFor(2.second)
    click(at: Point(627, 2439))
    pressHome()
}

public func clickAllThoseButtons(): Unit {
    while (true) {
        if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseIdEqualsTo("permission_dialog_allow_button")) {
            click(at: button.centerPoint)
        } else if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseIdEqualsTo("permission_dialog_vertical_button_0")) {
            click(at: button.centerPoint)
        } else if (Screen.findTheOnlyUiComponentWhoseTextEqualsTo("仅充电").isSome()) {
            click(at: Point(618, 1680))
        } else if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseIdEqualsTo("advanced_dialog_button_0")) {
            click(at: button.centerPoint)
        } else if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseTextEqualsTo("稍后")) {
            click(at: button.centerPoint)
        } else if (Screen.findTheOnlyUiComponentWhoseIdEqualsTo("paf_permission_privacy_text_0").isSome()) {
            click(at: Point(930, 2500))
        } else if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseTextEqualsTo("下一步")) {
            click(at: button.centerPoint)
        } else {
            break
        }
        sleepFor(10.milliSecond)
    }
}

// ============================================================================
// UI 组件异常类
// ============================================================================

public abstract class UiComponentNotFound <: Exception {
    public UiComponentNotFound(message: String) {
        super(message)
    }
}

public class UiComponentNotFoundById <: UiComponentNotFound {
    public UiComponentNotFoundById(id: String) {
        super("ui component not found by id \"${id}\"")
    }
}

public class UiComponentNotFoundByText <: UiComponentNotFound {
    public UiComponentNotFoundByText(text: String) {
        super("ui component not found by text \"${text}\"")
    }
}

public class AmbiguousUiComponentsFound <: Exception {
    public AmbiguousUiComponentsFound() {
        super("ambiguous ui components were found.")
    }
}

// ============================================================================
// Point 类 - 坐标点
// ============================================================================

public class Point <: ToString {
    public Point(public let x: Int32, public let y: Int32) {}
    public func toString(): String {
        "Point[${this.x}, ${this.y}]"
    }
}

// ============================================================================
// UI 组件接口和实现
// ============================================================================

public interface UiComponent <: Hashable & Equatable<UiComponent> {
    prop centerPoint: Point
    func getAttribute(remainingAttributePath: String, remainingAttributeObject: JsonObject): JsonValue {
        match (remainingAttributePath.indexOf(".")) {
            case Some(indexOfFirstDot) => match (remainingAttributeObject.get(remainingAttributePath[..indexOfFirstDot])) {
                case None => throw Exception("属性${remainingAttributePath}未找到")
                case Some(result) => getAttribute(remainingAttributePath[indexOfFirstDot + 1..], result.asObject())
            }
            case None => match (remainingAttributeObject.get(remainingAttributePath)) {
                case None => throw Exception("属性${remainingAttributePath}未找到")
                case Some(result) => result
            }
        }
    }
    func getAttribute(attributePath: String): String {
        let inspectorInfoJsonString = getInspectorByKey(this.id.toString())
        if (inspectorInfoJsonString.isEmpty()) {
            throw Exception("UI组件树上未找到任何组件ID为\"${this.id}\"的UI组件")
        }
        let inspectorInfo = JsonValue.fromStr(inspectorInfoJsonString).asObject()
        let result = getAttribute(
            attributePath,
            inspectorInfo.get("$attrs").getOrThrow().asObject()
        )
        match (result.kind()) {
            case JsonKind.JsString => result.asString().toString()
            case _ => result.toString()
        }
    }
    func dump(): Unit {
        let info = StringBuilder()
        let inspectorInfoJsonString = getInspectorByKey(this.id.toString())
        let inspectorInfo = JsonValue.fromStr(inspectorInfoJsonString).asObject()
        info.append("start====${this.id}====\n")
        inspectorInfo.get("$attrs").getOrThrow().asObject().getFields() |>
            forEach {
            attribute =>
            let attributeName = attribute[0]
            let attributeValue = attribute[1].toString()
            info.append("${attributeName}-${attributeValue}\n")
        }
        info.append("end====${this.id}====\n")
        Hilog.error(0, "CangjieTest", info.toString())
    }
    operator func [](attributePath: String): String {
        getAttribute(attributePath)
    }
    prop text: String
    prop id: String
    func hashCode(): Int64 {
        this.id.hashCode()
    }
    operator func ==(anotherUiComponent: UiComponent): Bool {
        this.hashCode() == anotherUiComponent.hashCode()
    }
    operator func !=(anotherUiComponent: UiComponent): Bool {
        this.hashCode() != anotherUiComponent.hashCode()
    }
    func perform(action: MyAction): Unit {
        action.bePerformedOn(this)
    }
}

// ============================================================================
// UI 动作系统
// ============================================================================

public class MyAction {
    public MyAction(public let bePerformedOn: (UiComponent) -> Unit) {}
}

public func click(): MyAction {
    MyAction {uiComponent: UiComponent => click(at: uiComponent.centerPoint)}
}

public func clearText(): MyAction {
    MyAction {
        uiComponent: UiComponent => (uiComponent as HybridUiComponent).getOrThrow()._uiComponent.clearText()
    }
}

// ============================================================================
// UI 组件实现类
// ============================================================================

public class UiComponentById <: UiComponent {
    public UiComponentById(public let _id: String) {}
    public prop centerPoint: Point {
        get() {
            throw Exception("the ui component with id \"${this._id}\" is not shown.")
        }
    }
    public prop text: String {
        get() {
            throw Exception("the ui component with id \"${this._id}\" is not shown.")
        }
    }
    public prop id: String {
        get() {
            this._id
        }
    }
}

public open class HybridUiComponent <: UiComponent {
    public HybridUiComponent(public let _uiComponent: ui_test.Component) {}
    public prop centerPoint: Point {
        get() {
            let a = this._uiComponent.getBoundsCenter()
            Point(Int32(a.x), Int32(a.y))
        }
    }
    public prop text: String {
        get() {
            this._uiComponent.getText()
        }
    }
    public prop id: String {
        get() {
            this._uiComponent.getId()
        }
    }
}

// ============================================================================
// UI 组件查找工具
// ============================================================================

public class Screen {
    public static func findAllUiComponentsWhoseIdEqualsTo(id: String): Array<UiComponent> {
        let driver = TestDriver.driver
        let uiComponents = ArrayList<UiComponent>()
        try {
            let result = driver.findComponents(ui_test.On().id(id)).getOrThrow()
            result |> forEach<ui_test.Component> {c => uiComponents.add(HybridUiComponent(c))}
        } catch (e: Exception) {
        }
        uiComponents.toArray()
    }
    public static func findTheOnlyUiComponentWhoseIdEqualsTo(id: String): Option<UiComponent> {
        let uiComponents = Screen.findAllUiComponentsWhoseIdEqualsTo(id)
        match (uiComponents.size) {
            case 0 => None
            case 1 => uiComponents[0]
            case _ => throw AmbiguousUiComponentsFound()
        }
    }
    public static func getTheOnlyUiComponentWhoseIdEqualsTo(id: String): UiComponent {
        match (findTheOnlyUiComponentWhoseIdEqualsTo(id)) {
            case Some(uiComponent) => uiComponent
            case None => throw UiComponentNotFoundById(id)
        }
    }
    public static func findAllUiComponentsWhoseTextEqualsTo(someText: String): Array<UiComponent> {
        let driver = TestDriver.driver
        let uiComponents = ArrayList<UiComponent>()
        try {
            let result = driver.findComponents(ui_test.On().text(someText)).getOrThrow()
            result |> forEach<ui_test.Component> {c => uiComponents.add(HybridUiComponent(c))}
        } catch (e: Exception) {
        }
        uiComponents.toArray()
    }
    public static func findTheOnlyUiComponentWhoseTextEqualsTo(someText: String): Option<UiComponent> {
        let uiComponents = Screen.findAllUiComponentsWhoseTextEqualsTo(someText)
        match (uiComponents.size) {
            case 0 => None
            case 1 => uiComponents[0]
            case _ => throw AmbiguousUiComponentsFound()
        }
    }
    public static func getTheOnlyUiComponentWhoseTextEqualsTo(someText: String): UiComponent {
        match (findTheOnlyUiComponentWhoseTextEqualsTo(someText)) {
            case Some(uiComponent) => uiComponent
            case None => throw UiComponentNotFoundById(someText)
        }
    }
}

public class UiComponentTree {
    public static func findAllUiComponentsWhoseIdEqualsTo(id: String): Array<UiComponent> {
        Hilog.info(0, "CangjieTest", "UiComponentTree.findAllUiComponentsWhoseIdEqualsTo(${id})")
        []
    }
    public static func findTheOnlyUiComponentWhoseIdEqualsTo(id: String): Option<UiComponent> {
        Hilog.info(0, "CangjieTest", "UiComponentTree.findTheOnlyUiComponentWhoseIdEqualsTo(${id})")
        match (Screen.findTheOnlyUiComponentWhoseIdEqualsTo(id)) {
            case Some(uiComponent) => uiComponent
            case None => UiComponentById(id)
        }
    }
    public static func getTheOnlyUiComponentWhoseIdEqualsTo(id: String): UiComponent {
        Hilog.info(0, "CangjieTest", "UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo(${id})")
        match (findTheOnlyUiComponentWhoseIdEqualsTo(id)) {
            case Some(uiComponent) => uiComponent
            case None => throw UiComponentNotFoundById(id)
        }
    }
}

// ============================================================================
// 页面导航
// ============================================================================

public func enterPage(pageName: String): Unit {
    click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo(pageName).centerPoint)
}

public func enterPage(scrollerId!: String, buttonId!: String): Unit {
    let scroller = Screen.getTheOnlyUiComponentWhoseIdEqualsTo(scrollerId)
    for (_ in 0..1000) {
        if (let Some(button) <- Screen.findTheOnlyUiComponentWhoseIdEqualsTo(buttonId)) {
            click(at: button.centerPoint)
            break
        }
        swipe(
            from: scroller.centerPoint,
            to: Point(
                scroller.centerPoint.x,
                scroller.centerPoint.y - 1000
            )
        )
    }
}

// ============================================================================
// UI 检查器
// ============================================================================

public class getInspector {
    public operator func [](componentId: String, attributeName: String): String {
        attributeWithName(componentId, attributeName)
    }

    public func attributeWithName(componentId: String, attributeName: String): String {
        try {
            let inspectorInfoJsonString = getInspectorByKey(componentId)
            let inspectorInfo = JsonValue.fromStr(inspectorInfoJsonString).asObject()
            inspectorInfo.get("$attrs").getOrThrow().asObject().get(attributeName).getOrThrow().toString()
        } catch (e: Exception) {
            return "Not find UIComponent or Json parser failed!"
        }
    }
}

// ============================================================================
// 事件管理
// ============================================================================

public class Event {
    public Event(public let timeStamp: DateTime, public let name: String, public let content: String) {}
}

public class LogManager {
    public let eventSequence: ArrayList<Event> = ArrayList<Event>()
    public let eventMap: HashMap<String, Event> = HashMap<String, Event>()
    private let mutex = Mutex()

    public func appendEvent(event: Event): Unit {
        synchronized(this.mutex) {
            this.eventSequence.add(event)
            this.eventMap.add(event.name, event)
        }
    }

    public func findEventWithName(eventName: String): Option<Event> {
        synchronized(this.mutex) {
            this.eventMap.get(eventName)
        }
    }
}

public let logManager: LogManager = LogManager()

public func logEvent(eventName: String, eventContent: String): Unit {
    let event = Event(DateTime.now(), eventName, eventContent)
    logManager.appendEvent(event)
    Hilog.info(0, "CangjieTest", "[${eventName}]: ${eventContent}")
}

public func waitForEventWithName(eventName: String, timeOut!: Duration = Duration.Max, processor!: (Event) -> Unit): Unit {
    let monitor = Monitor()
    let result = Box(None<Event>)
    let checker = Timer.repeat(Duration.Zero, Duration.millisecond * 1, {
        => match (logManager.findEventWithName(eventName)) {
            case None => ()
            case Some(event) =>
                result.value = event
                synchronized(monitor) { monitor.notify() }
        }
    })
    synchronized(monitor) { monitor.wait(timeout: timeOut) }
    checker.cancel()
    match (result.value) {
        case None => throw Exception("waitForEventWithName 超时: ${timeOut}")
        case Some(event) => processor(event)
    }
}

// ============================================================================
// EventBuilder - 事件构建器
// ============================================================================

public class EventBuilder {
    public EventBuilder(private let eventName: String) {}
    public let properties: HashMap<String, String> = HashMap<String, String>()

    public func add(propertyName: String, propertyValue: String): EventBuilder {
        this.properties.add(propertyName, propertyValue)
        this
    }

    public func add(propertyName: String, propertyValue: Bool): EventBuilder {
        this.properties.add(propertyName, propertyValue.toString())
        this
    }

    public func add(propertyName: String, propertyValue: Int64): EventBuilder {
        this.properties.add(propertyName, propertyValue.toString())
        this
    }

    public func add(propertyName: String, want: Want): EventBuilder {
        let wantStr = "Want{bundleName=${want.bundleName}, moduleName=${want.moduleName}, abilityName=${want.abilityName}}"
        this.properties.add(propertyName, wantStr)
        this
    }

    public func yield(): Unit {
        let content = String.join(
            properties |> map { kv => "${kv[0]}=${kv[1]}" } |> collectArray,
            delimiter: ", "
        )
        logEvent(eventName, content)
    }
}

// ============================================================================
// 权限管理
// ============================================================================

public func getAbilityContext(): UIAbilityContext {
    let result = Box(None<UIAbilityContext>)
    while (true) {
        match (AppStorage.get<UIAbilityContext>("abilityContext")) {
            case None => sleepFor(1.second)
            case Some(abilityContext) =>
                result.value = abilityContext
                break
        }
    }
    result.value.getOrThrow()
}

public func getAbilityStageContext(): AbilityStageContext {
    match (AppStorage.get<AbilityStageContext>("abilityStageContext")) {
        case None => throw Exception("failed to get ability stage context")
        case Some(abilityStageContext) => abilityStageContext
    }
}

func getFullBundleInfo(): BundleInfo {
    let bundleFlags = BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION | BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag
        .GET_BUNDLE_INFO_WITH_ABILITY | BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | BundleFlag
        .GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION | BundleFlag.GET_BUNDLE_INFO_WITH_METADATA | BundleFlag
        .GET_BUNDLE_INFO_WITH_DISABLE | BundleFlag.GET_BUNDLE_INFO_WITH_MENU
    BundleManager.getBundleInfoForSelf(bundleFlags)
}

public func getRequiredPermissions(requiredPermissions: Array<Permissions>): Unit {
    let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
    let applicationInfo = bundleInfo.appInfo
    let accessTokenId = applicationInfo.accessTokenId
    let requestedPermissions = HashSet<Permissions>()
    let accessTokenManager = AbilityAccessCtrl.createAtManager()
    for (permission in requiredPermissions) {
        let permissionGrantState = accessTokenManager.checkAccessToken(UInt32(accessTokenId), permission)
        match (permissionGrantState) {
            case GrantStatus.PermissionGranted => Hilog.error(0, "CangjieTest", "权限${permission}已被授予，无需申请")
            case GrantStatus.PermissionDenied =>
                Hilog.error(0, "CangjieTest", "权限${permission}尚未被授予，需要用户弹窗授予")
                requestedPermissions.add(permission)
            case _ => ()
        }
    }
    let numberOfRequestedPermissions = requestedPermissions.size
    if (numberOfRequestedPermissions == 0) {
        Hilog.error(0, "CangjieTest", "无需向用户申请任何权限")
        return
    }
    accessTokenManager.requestPermissionsFromUser(getAbilityContext(), requestedPermissions |> collectArray) {
        error, data => match (error) {
            case Some(err) => Hilog.error(0, "CangjieTest", "弹窗权限申请发生内部错误，错误码${err.code}")
            case None => match (data) {
                case Some(permissionRequestResult) => for (index in 0..numberOfRequestedPermissions) {
                    let grantStatus = permissionRequestResult.authResults[index]
                    let permissionName = permissionRequestResult.permissions[index]
                    match (grantStatus) {
                        case 0 => Hilog.error(0, "CangjieTest", "权限${permissionName.toString()}已被用户授予")
                        case -1 => Hilog.error(0, "CangjieTest", "用户拒绝授予权限${permissionName.toString()}")
                        case _ => Hilog.error(0, "CangjieTest", "unreachable")
                    }
                }
                case None => Hilog.error(0, "CangjieTest", "???")
            }
        }
    }
}

public func getResourceManager(): ResourceManager {
    getAbilityContext().resourceManager
}

// ============================================================================
// 异步等待工具
// ============================================================================

public func await<T>(jsContext: JSContext, f: () -> T): T {
    let result = Box(None<Result<T, Exception>>)
    let monitor = Monitor()
    jsContext.postJSTask {
        => result.value = try {
            Result.Ok(f())
        } catch (e: Exception) {
            Result.Err(e)
        } finally {
            synchronized(monitor) {
                monitor.notify()
            }
        }
    }
    synchronized(monitor) {
        monitor.wait(timeout: Duration.second * 6)
    }
    match (result.value) {
        case None => throw Exception("await timeout")
        case Some(result) => match (result) {
            case Ok(value) => value
            case Err(err) => throw err
        }
    }
}

public func waitFor(timeOut: Duration, f: () -> Bool): Unit {
    let monitor = Monitor()
    let result = Box(None<Bool>)
    let checker = Timer.repeat(Duration.Zero, Duration.millisecond * 1,
        {
            => if (f()) {
                result.value = true
                synchronized(monitor) {
                    monitor.notify()
                }
            }
        })
    synchronized(monitor) {
        monitor.wait(timeout: timeOut)
    }
    checker.cancel()
    match (result.value) {
        case None => throw Exception("timed out after ${timeOut}.")
        case Some(event) => @Assert(event)
    }
}

// ============================================================================
// 辅助工具
// ============================================================================

private enum Result<T, E> {
    | Ok(T)
    | Err(E)
}

public func pick<T>(p: (T) -> Bool): (Iterable<T>) -> T {
    {
        a: Iterable<T> =>
        for (i in a) {
            if (p(i)) {
                return i
            }
        }
        throw Exception("not found")
    }
}

// ============================================================================
// Exception 扩展
// ============================================================================

extend Exception {
    public prop stackTrace: String {
        get() {
            let sb = StringBuilder("exception: ${this.toString()}\n")
            this.getStackTrace() |>
                forEach {
                s => sb.append("         at ${s.declaringClass}.${s.methodName}(${s.fileName}:${s.lineNumber})\n")
            }
            sb.toString()
        }
    }
}

// ============================================================================
// JSON 解析工具类
// ============================================================================
public enum JsonKind {
    JsNull | JsBool | JsInt | JsFloat | JsString | JsArray | JsObject
}

enum NumberSystem {
    Binary |
    Octal |
    Decimal |
    Hex
}

public class JsonException <: Exception {
    public init() {
        super()
    }
    public init(message: String) {
        super(message)
    }
    protected override func getClassName(): String {
        return "JsonException"
    }
}

class JsonParser {
    let data: Array<Byte>
    let size: Int64
    var offset: Int64
    let cache: Array<JsonValue>
    var cacheSize: Int64
    let strCache: ArrayList<Byte>

    init(str: String) {
        this.data = unsafe { str.rawData() }
        this.size = data.size
        this.offset = 0
        if ((size >> 1) > 16) {
            this.cache = Array<JsonValue>(size >> 1, repeat: JsonNull())
        } else {
            this.cache = Array<JsonValue>(16, repeat: JsonNull())
        }
        this.cacheSize = 0
        this.strCache = ArrayList<Byte>()
    }
}

public class JsonArray <: JsonValue {
    private var items: ArrayList<JsonValue>
    init(capacity: Int64) {
        items = ArrayList<JsonValue>(capacity)
    }
    public init() {
        items = ArrayList<JsonValue>()
    }
    public init(list: ArrayList<JsonValue>) {
        items = list
    }
    public init(list: Array<JsonValue>) {
        items = ArrayList<JsonValue>(list)
    }
    public func kind(): JsonKind {
        return JsArray
    }
    public func toString(): String {
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }
    public func size(): Int64 {
        return items.size
    }
    public func add(jv: JsonValue): JsonArray {
        items.add(jv)
        return this
    }
    public func get(index: Int64): Option<JsonValue> {
        return items.get(index)
    }
    public operator func [](index: Int64): JsonValue {
        return match (items.get(index)) {
            case Some(v) => v
            case None => throw JsonException("The index ${index} of JsonArray does not exist.")
        }
    }
    public func getItems(): ArrayList<JsonValue> {
        return items
    }
}

public class JsonNull <: JsonValue {
    public func kind(): JsonKind {
        return JsNull
    }
    public func toString(): String {
        return "null"
    }
}

public class JsonBool <: JsonValue {
    private var value: Bool
    public init(bv: Bool) {
        this.value = bv
    }
    public func getValue(): Bool {
        return value
    }
    public func kind(): JsonKind {
        return JsBool
    }
    public func toString(): String {
        return value.toString()
    }
    public func toJsonString(): String {
        return toString()
    }
    public func toStringWithoutEscaping(): String {
        return value.toString()
    }
    public func toJsonStringWithoutEscaping(): String {
        return toString()
    }
}

public class JsonInt <: JsonValue {
    private var value: Int64
    public init(iv: Int64) {
        this.value = iv
    }
    public func getValue(): Int64 {
        return value
    }
    public func kind(): JsonKind {
        return JsInt
    }
    public func toString(): String {
        return value.toString()
    }
    public func toJsonString(): String {
        return toString()
    }
    public func toStringWithoutEscaping(): String {
        return value.toString()
    }
    public func toJsonStringWithoutEscaping(): String {
        return toString()
    }
}

public class JsonFloat <: JsonValue {
    private var value: Float64
    public init(fv: Float64) {
        this.value = fv
    }
    public init(v: Int64) {
        this.value = Float64(v)
    }
    public func getValue(): Float64 {
        return value
    }
    public func kind(): JsonKind {
        return JsFloat
    }
    public func toString(): String {
        return value.toString()
    }
    public func toJsonString(): String {
        return toString()
    }
    public func toStringWithoutEscaping(): String {
        return value.toString()
    }
    public func toJsonStringWithoutEscaping(): String {
        return toString()
    }
}

public class JsonObject <: JsonValue {
    private var fields: HashMap<String, JsonValue>
    public init() {
        fields = HashMap<String, JsonValue>()
    }
    init(capacity: Int64) {
        fields = HashMap<String, JsonValue>(capacity)
    }
    public init(map: HashMap<String, JsonValue>) {
        fields = map
    }
    public func kind(): JsonKind {
        return JsObject
    }
    public func toString(): String {
        let buff = WriteBuffer(asumecapacity(this))
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }
    public func size(): Int64 {
        return fields.size
    }
    public func get(key: String): Option<JsonValue> {
        return fields.get(key)
    }
    public operator func [](key: String): JsonValue {
        return match (fields.get(key)) {
            case Some(v) => v
            case None => throw JsonException("The Value of JsonObject does not exist")
        }
    }
    public func getFields(): HashMap<String, JsonValue> {
        return fields
    }
}

public class JsonString <: JsonValue {
    var value: String
    public init(sv: String) {
        this.value = sv
    }
    public func getValue(): String {
        return value
    }
    public func kind(): JsonKind {
        return JsString
    }
    public func toString(): String {
        let buff = WriteBuffer(value.size + 2)
        jsonWriteWithoutFormat(this, buff)
        return unsafe { String.fromUtf8Unchecked(buff.getAndClear()) }
    }
}

sealed abstract class JsonValue <: ToString {
    public func toString(): String
    public static func fromStr(s: String): JsonValue {
        parseString(s)
    }
    public func kind(): JsonKind
    public func asString(): JsonString {
        match (this) {
            case jsonString: JsonString => jsonString
            case _ => throw JsonException("Fail to convert to JsonString")
        }
    }
    public func asObject(): JsonObject {
        match (this) {
            case jsonObject: JsonObject => jsonObject
            case _ => throw JsonException("Fail to convert to JsonObject")
        }
    }
}

class WriteBuffer {
    private var _buffer: Array<Byte>
    private var _size: Int64 = 0
    init(capacity: Int64) {
        let cap = if (capacity > MIN_CAPACITY) {
            capacity
        } else {
            MIN_CAPACITY
        }
        _buffer = Array<Byte>(cap, repeat: BLANK)
    }
    prop size: Int64 {
        get() {
            return _size
        }
    }
    func checkAndExpend(addition: Int64): Unit {
        let minCapacity = _size + addition
        let oldCapacity: Int64 = _buffer.size
        if (minCapacity < oldCapacity) {
            return
        }

        var newCapacity: Int64 = oldCapacity + (oldCapacity >> 1)
        if (newCapacity < minCapacity) {
            newCapacity = minCapacity
        }
        let newArr: Array<Byte> = Array<Byte>(newCapacity, repeat: BLANK)
        _buffer.copyTo(newArr, 0, 0, _size)
        _buffer = newArr
    }
    func append(arr: Array<Byte>): WriteBuffer {
        checkAndExpend(arr.size)

        if (arr.size < 32) {
            for (index in 0..arr.size) {
                _buffer[_size] = arr[index]
                _size++
            }
        } else {
            arr.copyTo(_buffer, 0, _size, arr.size)
            _size += arr.size
        }
        return this
    }
    func append(str: String): WriteBuffer {
        append(unsafe { str.rawData() })
        return this
    }
    func append(byte: Byte): WriteBuffer {
        checkAndExpend(1)
        _buffer[_size] = byte
        _size++
        return this
    }
    func append(n: Int64): WriteBuffer {
        checkAndExpend(22)
        unsafe {
            let buff = acquireArrayRawData<Byte>(_buffer)
            let len = CJ_JSON_WriteBufferAppendInt(buff.pointer + _size, n)
            releaseArrayRawData(buff)
            _size += len
        }
        return this
    }
    func append(fl: Float64): WriteBuffer {
        unsafe {
            let p: CPointer<UInt8> = CJ_CORE_Float64ToCPointer(fl)
            if (p.isNull()) {
                return this
            }
            let cpSize = Int64(strlen(p))
            checkAndExpend(cpSize)
            let dest = acquireArrayRawData(_buffer)
            memcpy_s(dest.pointer + _size, UIntNative(_buffer.size - _size), p, UIntNative(cpSize))
            releaseArrayRawData(dest)
            LibC.free(p)
            _size += cpSize
        }

        // the result of CJ_CORE_Float64ToCPointer have at least 6 decimal points
        // there is no out-of-bounds risk
        while (_buffer[_size - 1] == b'0') {
            _size--
        }
        if (_buffer[_size - 1] == b'.') {
            _size--
        }
        return this
    }
    func append(b: Bool): WriteBuffer {
        if (b) {
            append(BOOL_TRUE_STRING)
        } else {
            append(BOOL_FALSE_STRING)
        }
    }
    func removetail(): WriteBuffer {
        if (_size > 0) {
            _size--
        }
        return this
    }
    func appendEscape(str: String, htmlSafe!: Bool = true) {
        var escapenum = 0
        unsafe {
            let input = acquireArrayRawData(str.rawData())
            escapenum = CJ_JSON_StringEscapeCharNumGet(input.pointer, str.size, htmlSafe)
            releaseArrayRawData(input)
        }

        if (escapenum == 0) {
            append(str)
            return this
        } else {
            checkAndExpend(str.size + escapenum)
            unsafe {
                let input = acquireArrayRawData(str.rawData())
                let buff = acquireArrayRawData<Byte>(_buffer)
                let len = CJ_JSON_ReplaceEscapeChar(input.pointer, str.size, buff.pointer + _size, htmlSafe)
                releaseArrayRawData(input)
                releaseArrayRawData(buff)
                _size += len
                return this
            }
        }
    }
    func getAndClear(): Array<Byte> {
        let ret = _buffer[0.._size]
        _buffer = Array<Byte>(0, repeat: BLANK)
        _size = 0
        return ret
    }
}

func isHexNum(char: UInt8): Bool {
    if (!((char >= b'0' && char <= b'9') || (char >= b'a' && char <= b'f') ||
        (char >= b'A' && char <= b'F'))) {
        return false
    }
    return true
}

func getNextHexNum(parser: JsonParser): Byte {
    parser.offset++
    let byte = parser.data[parser.offset]
    if (!isHexNum(byte)) {
        throw JsonException()
    }
    return byte
}

func handleEscape(parser: JsonParser): Unit {
    match (parser.data[parser.offset]) {
        case '\"' => parser.strCache.add(b'\"')
        case '\\' => parser.strCache.add(b'\\')
        case '/' => parser.strCache.add(b'/')
        case 'b' => parser.strCache.add(b'\b')
        case 'f' => parser.strCache.add(b'\f')
        case 'n' => parser.strCache.add(b'\n')
        case 'r' => parser.strCache.add(b'\r')
        case 't' => parser.strCache.add(b'\t')
        case 'u' =>
            let byte1 = getNextHexNum(parser)
            let byte2 = getNextHexNum(parser)
            let byte3 = getNextHexNum(parser)
            let byte4 = getNextHexNum(parser)
            let arr: Array<Byte> = [b'\'', b'\\', b'u', b'{',
                byte1, byte2, byte3, byte4, b'}', b'\'']
            try {
                let chr = unsafe { Rune.parse(String.fromUtf8Unchecked(arr)) }
                if (UInt32(chr) <= 127) {
                    parser.strCache.add(UInt8(UInt32(chr)))
                } else {
                    let str = chr.toString()
                    unsafe { parser.strCache.add(all: str.rawData()) }
                }
            } catch (_: Exception) {
                parser.offset++
                if (parser.data[parser.offset] != b'\\') {
                    throw JsonException()
                }
                parser.offset++
                if (parser.data[parser.offset] != b'u') {
                    throw JsonException()
                }
                let byte5 = getNextHexNum(parser)
                let byte6 = getNextHexNum(parser)
                let byte7 = getNextHexNum(parser)
                let byte8 = getNextHexNum(parser)
                let str1 = unsafe { String.fromUtf8Unchecked([b'0', b'x', byte1, byte2, byte3, byte4]) }
                let str2 = unsafe { String.fromUtf8Unchecked([b'0', b'x', byte5, byte6, byte7, byte8]) }
                let num1 = UInt16.parse(str1) & 0b0000001111111111
                let num2 = UInt16.parse(str2) & 0b0000001111111111
                let str = Rune((((UInt32(num1)) << 10) | (UInt32(num2))) + 0x10000).toString()
                unsafe { parser.strCache.add(all: str.rawData()) }
            }
        case _ => throw JsonException("Fail to parseJsonString")
    }
}

func parseJsonString(parser: JsonParser): JsonString {
    if (parser.data[parser.offset] != b'\"') {
        throw JsonException("Fail to parseJsonString")
    }
    parser.offset++
    let start = parser.offset
    var next = parser.data[parser.offset]
    var needEscape = false
    var tmpStart = start
    while (next != b'\"') {
        if (next == b'\\') {
            if (!needEscape) {
                needEscape = true
            }
            parser.strCache.add(all: parser.data[tmpStart..parser.offset])
            parser.offset++
            handleEscape(parser)
            tmpStart = parser.offset + 1
        }
        parser.offset++
        next = parser.data[parser.offset]
    }
    parser.offset++
    if (!needEscape) {
        return unsafe { JsonString(String.fromUtf8Unchecked(parser.data[start..(parser.offset - 1)])) }
    } else {
        parser.strCache.add(all: parser.data[tmpStart..parser.offset - 1])
        let res = unsafe { JsonString(String.fromUtf8Unchecked(parser.strCache.getRawArray()[0..parser.strCache.size])) }
        parser.strCache.clear()
        return res
    }
}

func parseJsonObject(parser: JsonParser): JsonObject {
    parser.offset++
    skipWhiteSpace(parser)
    var count = 0
    var first = true
    while (parser.data[parser.offset] != b'}') {
        if (first) {
            first = false
        } else if (parser.data[parser.offset] == b',') {
            parser.offset++
        } else {
            throw JsonException()
        }
        skipWhiteSpace(parser)
        let key = parseJsonString(parser)
        skipWhiteSpace(parser)
        if (parser.data[parser.offset] != b':') {
            throw JsonException()
        }
        parser.offset++
        let value = parseJson(parser)
        skipWhiteSpace(parser)
        parser.cache[parser.cacheSize] = key
        parser.cache[parser.cacheSize + 1] = value
        count++
        parser.cacheSize += 2
    }
    parser.offset++
    let map = HashMap<String, JsonValue>(count)
    for (i in count..0 : -1) {
        let key = parser.cache[parser.cacheSize - (i * 2)].asString().getValue()
        let value = parser.cache[parser.cacheSize - (i * 2) + 1]
        map.add(key, value)
    }
    parser.cacheSize -= (2 * count)
    return JsonObject(map)
}

func parseJsonArray(parser: JsonParser): JsonArray {
    parser.offset++
    skipWhiteSpace(parser)
    var count = 0
    var first = true
    while (parser.data[parser.offset] != b']') {
        if (first) {
            first = false
        } else if (parser.data[parser.offset] == b',') {
            parser.offset++
        } else {
            throw JsonException()
        }
        let item = parseJson(parser)
        skipWhiteSpace(parser)
        parser.cache[parser.cacheSize] = item
        count++
        parser.cacheSize++
    }
    parser.offset++
    let arr = ArrayList<JsonValue>(count)
    for (i in count..0 : -1) {
        let item = parser.cache[parser.cacheSize - i]
        arr.add(item)
    }
    parser.cacheSize -= count
    return JsonArray(arr)
}

func parseJsonNull(parser: JsonParser): JsonNull {
    if (parser.data[parser.offset] != b'n') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'u') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'l') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'l') {
        throw JsonException()
    }
    parser.offset++
    return JsonNull()
}

func parseJsonTrue(parser: JsonParser): JsonBool {
    if (parser.data[parser.offset] != b't') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'r') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'u') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'e') {
        throw JsonException()
    }
    parser.offset++
    return JsonBool(true)
}

func parseJsonFalse(parser: JsonParser): JsonBool {
    if (parser.data[parser.offset] != b'f') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'a') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'l') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b's') {
        throw JsonException()
    }
    parser.offset++
    if (parser.data[parser.offset] != b'e') {
        throw JsonException()
    }
    parser.offset++
    return JsonBool(false)
}

func parseSign(parser: JsonParser): Unit {
    if (parser.data[parser.offset] == b'-') {
        parser.offset++
    }
}

func parseNumberSystem(parser: JsonParser): NumberSystem {
    if (parser.data[parser.offset] == b'0') {
        parser.offset++
        if (parser.offset >= parser.size) {
            parser.offset--
            return Decimal
        }
        match (parser.data[parser.offset]) {
            case 'b' | 'B' =>
                parser.offset++
                return Binary
            case 'o' | 'O' =>
                parser.offset++
                return Octal
            case 'x' | 'X' =>
                parser.offset++
                return Hex
            case _ => parser.offset--
        }
    }
    return Decimal
}

func checkNumberSystem(numSystem: NumberSystem): (Byte) -> Bool {
    match (numSystem) {
        case Binary => return {byte: Byte => byte >= b'0' && byte <= b'1'}
        case Octal => return {byte: Byte => byte >= b'0' && byte <= b'7'}
        case Decimal => return {byte: Byte => byte >= b'0' && byte <= b'9'}
        case Hex => return {
            byte: Byte => byte >= b'0' && byte <= b'9' || byte >= b'a' &&
                byte <= b'f' || byte >= b'A' && byte <= b'F'
        }
    }
}

func parseInteger(parser: JsonParser, isNumber: (Byte) -> Bool): Unit {
    var nextByte = parser.data[parser.offset]
    var hasNumber = false
    if (nextByte == b'0') {
        parser.offset++
        return
    }
    while (isNumber(nextByte)) {
        hasNumber = true
        parser.offset++
        if (parser.offset >= parser.size) {
            return
        }
        nextByte = parser.data[parser.offset]
    }
    if (!hasNumber) {
        throw JsonException()
    }
}

func parseDigit(parser: JsonParser): Bool {
    var nextByte = parser.data[parser.offset]
    var hasNumber = false
    while (nextByte >= b'0' && nextByte <= b'9') {
        hasNumber = true
        parser.offset++
        if (parser.offset >= parser.size) {
            return true
        }
        nextByte = parser.data[parser.offset]
    }
    if (!hasNumber) {
        throw JsonException()
    }
    return true
}

func parseDecimal(parser: JsonParser, numSystem: NumberSystem): Bool {
    if (parser.offset >= parser.size) {
        return false
    }
    if (parser.data[parser.offset] != b'.') {
        return false
    }
    match (numSystem) {
        case Decimal => ()
        case _ => throw JsonException()
    }
    parser.offset++
    return parseDigit(parser)
}

func parseExponent(parser: JsonParser, numSystem: NumberSystem): Bool {
    if (parser.offset >= parser.size) {
        return false
    }
    var nextByte = parser.data[parser.offset]
    if (nextByte != b'e' && nextByte != b'E') {
        return false
    }
    match (numSystem) {
        case Decimal => ()
        case _ => throw JsonException()
    }
    parser.offset++
    nextByte = parser.data[parser.offset]
    if (nextByte == b'+' || nextByte == b'-') {
        parser.offset++
    }
    return parseDigit(parser)
}

func parseJsonNumber(parser: JsonParser): JsonValue {
    var isFloat = false
    let leftIndex = parser.offset
    var rightIndex = parser.offset
    parseSign(parser)
    let numSystem = parseNumberSystem(parser)
    let isNumber = checkNumberSystem(numSystem)
    parseInteger(parser, isNumber)
    isFloat = parseDecimal(parser, numSystem)
    if (isFloat) {
        parseExponent(parser, numSystem)
    } else {
        isFloat = parseExponent(parser, numSystem)
    }
    rightIndex = parser.offset
    let numStr = unsafe { String.fromUtf8Unchecked(parser.data[leftIndex..rightIndex]) }
    if (isFloat) {
        return JsonFloat(Float64.parse(numStr))
    }
    return JsonInt(Int64.parse(numStr))
}

func parseJson(parser: JsonParser): JsonValue {
    try {
        skipWhiteSpace(parser)
        let start = parser.data[parser.offset]
        match {
            case start == b'{' => return parseJsonObject(parser)
            case start == b'[' => return parseJsonArray(parser)
            case start == b'n' => return parseJsonNull(parser)
            case start == b't' => return parseJsonTrue(parser)
            case start == b'f' => return parseJsonFalse(parser)
            case start == b'\"' => return parseJsonString(parser)
            case start >= b'0' && start <= b'9' || start == b'-' => return parseJsonNumber(parser)
            case _ => throw JsonException()
        }
    } catch (_: Exception) {
        unsafe {
            let strArr = parser.data
            var errPos = parser.offset
            if (errPos >= strArr.size) {
                errPos = strArr.size - 1
            }
            let errRowAndCol = getErrRowAndCol(strArr, errPos)
            let (errChr, _) = Rune.fromUtf8(strArr, errPos)
            let errStr = handleErrChr(errChr)
            let errMsg: String = "Parse Error: [Line]: ${errRowAndCol[0]}, [Pos]: ${errRowAndCol[1]}, [Error]: Unexpected character: \'${errStr}\'."
            throw JsonException("the json data is Non-standard, please check:\n${errMsg}")
        }
    }
}

func skipWhiteSpace(parser: JsonParser): Unit {
    var tmp = parser.data[parser.offset]
    while (tmp == b' ' || tmp == b'\t' || tmp == b'\n' || tmp == b'\r') {
        parser.offset++
        if (parser.offset >= parser.size) {
            return
        }
        tmp = parser.data[parser.offset]
    }
}

func getErrRowAndCol(strArr: Array<UInt8>, errPos: Int64): (Int64, Int64) {
    var tempPos: Int64 = 0
    var errRow: Int64 = 1
    var errCol: Int64 = 1
    var lineStartPos: Int64 = 0
    while (tempPos < errPos) {
        let temp = Rune.fromUtf8(strArr, tempPos)
        let tempChr = temp[0]
        if (tempChr == r'\n') {
            errRow += 1
            lineStartPos = tempPos + 1
        }
        tempPos += temp[1]
    }
    while (lineStartPos < errPos) {
        let tempChr = Rune.fromUtf8(strArr, lineStartPos)[0]
        if (tempChr == r' ') {
            lineStartPos += 1
        } else {
            break
        }
    }
    while (lineStartPos < errPos) {
        let temp = Rune.fromUtf8(strArr, lineStartPos)
        let tempSize = temp[1]
        errCol += 1
        lineStartPos += tempSize
    }
    return (errRow, errCol)
}

func handleErrChr(errChr: Rune): String {
    match (errChr) {
        case r'\0' => return "\\0"
        case r'\b' => return "\\b"
        case r'\t' => return "\\t"
        case r'\n' => return "\\n"
        case r'\f' => return "\\f"
        case r'\r' => return "\\r"
        case r'\v' => return "\\v"
        case _ => return "${errChr}"
    }
}

func parseString(str: String): JsonValue {
    if (str.size == 0) {
        throw JsonException("Json String is empty!")
    }
    let parser = JsonParser(str)
    let res = parseJson(parser)
    if (parser.offset <= (parser.size - 1)) {
        skipWhiteSpace(parser)
    }
    if (parser.offset <= (parser.size - 1)) {
        let errRowAndCol = getErrRowAndCol(parser.data, parser.offset)
        let (errChr, _) = Rune.fromUtf8(parser.data, parser.offset)
        let errStr = handleErrChr(errChr)
        let errMsg: String = "Parse Error: [Line]: ${errRowAndCol[0]}, [Pos]: ${errRowAndCol[1]}, [Error]: Unexpected character: \'${errStr}\'."
        throw JsonException("the json data is Non-standard, please check:\n${errMsg}")
    }
    return res
}

func asumecapacity(json: JsonValue): Int64 {
    match (json) {
        case jo: JsonObject =>
            var sum = 2
            for ((k, v) in jo.getFields()) {
                sum = sum + k.size + 4 // + "key": value,
                sum += asumecapacity(v)
            }
            return sum
        case ja: JsonArray =>
            var sum = 2
            for (v in ja.getItems()) {
                sum = sum + asumecapacity(v) + 1
            }
            return sum
        case js: JsonString => return js.value.size + 2 // "value"
        case _: JsonBool => return 5 // max of "false" and "true"
        case _: JsonInt => return 22 // max len is 22
        case _: JsonFloat => return 200 // not precision
        case _ => return 4 // len of "null" is 4
    }
}

func jsonWriteWithoutFormat(json: JsonValue, buff: WriteBuffer, htmlSafe!: Bool = true): Unit {
    match (json) {
        case jo: JsonObject =>
            if (jo.size() == 0) {
                buff.append("{}".toArray())
                return
            }
            buff.append(b'{')
            for ((strKey, jv) in jo.getFields()) {
                buff.append(b'\"').appendEscape(strKey).append("\":".toArray())
                jsonWriteWithoutFormat(jv, buff, htmlSafe: htmlSafe)
                buff.append(b',')
            }
            buff.removetail()
            buff.append(b'}')
        case ja: JsonArray =>
            if (ja.size() == 0) {
                buff.append("[]".toArray())
                return
            }
            buff.append(b'[')
            for (item in ja.getItems()) {
                jsonWriteWithoutFormat(item, buff, htmlSafe: htmlSafe)
                buff.append(b',')
            }
            buff.removetail()
            buff.append(b']')
        case js: JsonString => buff.append(b'\"').append(js.getValue()).append(b'\"')
        case jb: JsonBool => buff.append(jb.getValue())
        case ji: JsonInt => buff.append(ji.getValue())
        case jf: JsonFloat => buff.append(jf.getValue())
        case _ => buff.append(NULL_STRING)
    }
}



