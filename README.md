# XTS Subsystem - Cangjie<a name="ZH-CN_TOPIC_0000001117409671"></a>

-   [Introduction](#section465982318513)
- [Directory Structure](#section161941989596)
- [Usage Guide](#section137768191623)
- [Cangjie Test Case Development Guide](#section3695134065513)
  - [Test Case Writing Guide](#section159801435165220)
  - [Test Case Compilation Guide](#section159801435165221)
  - [Test Case Execution Guide](#section159801435165222)

## Introduction<a name="section465982318513"></a>

`xts_acts_cangjie` is the Cangjie language ACTS (Application Compatibility Test Suite) for application compatibility testing.

## Directory Structure<a name="section161941989596"></a>

```
/test/xts
├─ acts_cangjie     # Test code root
│ └─ subsystem      # Subsystem test case source code
│ └─ tools          # Test tools and scripts
│ └─ build.py       # Test HAP build script
│ └─ run.py         # Test case execution script
```

## Usage Guidelines<a name="section137768191623"></a>

Table 1 Test case levels

<a name="table12856113719456"></a>
<table><thead align="left"><tr id="row88561737114517"><th class="cellrowborder" valign="top" width="33.333333333333336%" id="mcps1.2.4.1.1"><p id="p54711456452"><a name="p54711456452"></a><a name="p54711456452"></a>Level</p>
</th>
<th class="cellrowborder" valign="top" width="33.283328332833285%" id="mcps1.2.4.1.2"><p id="p114834544518"><a name="p114834544518"></a><a name="p114834544518"></a>Definition</p>
</th>
<th class="cellrowborder" valign="top" width="33.383338333833386%" id="mcps1.2.4.1.3"><p id="p348154574518"><a name="p348154574518"></a><a name="p348154574518"></a>Scope</p>
</th>
</tr>
</thead>
<tbody><tr id="row78561137134514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p17481345124512"><a name="p17481345124512"></a><a name="p17481345124512"></a>Level0</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p1548945204514"><a name="p1548945204514"></a><a name="p1548945204514"></a>Smoke</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p174824517456"><a name="p174824517456"></a><a name="p174824517456"></a>Verifies basic functionalities of key features and basic DFX attributes with the most common input. The pass result indicates that the features are runnable.</p>
</td>
</tr>
<tr id="row28563372451"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p448445144512"><a name="p448445144512"></a><a name="p448445144512"></a>Level1</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p44813452452"><a name="p44813452452"></a><a name="p44813452452"></a>Basic</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p648184584514"><a name="p648184584514"></a><a name="p648184584514"></a>Verifies basic functionalities of key features and basic DFX attributes with common input. The pass result indicates that the features are testable.</p>
</td>
</tr>
<tr id="row12856137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p164834520453"><a name="p164834520453"></a><a name="p164834520453"></a>Level2</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p148245184511"><a name="p148245184511"></a><a name="p148245184511"></a>Major</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p348945124510"><a name="p348945124510"></a><a name="p348945124510"></a>Verifies basic functionalities of key features and basic DFX attributes with common input and errors. The pass result indicates that the features are functional and ready for beta testing.</p>
</td>
</tr>
<tr id="row48571137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p7481545184513"><a name="p7481545184513"></a><a name="p7481545184513"></a>Level3</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p1748184514455"><a name="p1748184514455"></a><a name="p1748184514455"></a>Regular</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p8481245104519"><a name="p8481245104519"></a><a name="p8481245104519"></a>Verifies functionalities of all key features, and all DFX attributes with common and uncommon input combinations or normal and abnormal preset conditions.</p>
</td>
</tr>
<tr id="row14857133712451"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p1248144515456"><a name="p1248144515456"></a><a name="p1248144515456"></a>Level4</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p94804514519"><a name="p94804514519"></a><a name="p94804514519"></a>Rare</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p1248445164516"><a name="p1248445164516"></a><a name="p1248445164516"></a>Verifies functionalities of key features under extremely abnormal presets and uncommon input combinations.</p>
</td>
</tr>
</tbody>
</table>


Table 2 Test case granularities

<a name="table1690733521014"></a>
<table><thead align="left"><tr id="row9907143516105"><th class="cellrowborder" valign="top" width="19.591959195919593%" id="mcps1.2.4.1.1"><p id="p1141312416102"><a name="p1141312416102"></a><a name="p1141312416102"></a>Test Scale</p>
</th>
<th class="cellrowborder" valign="top" width="35.17351735173517%" id="mcps1.2.4.1.2"><p id="p34131416109"><a name="p34131416109"></a><a name="p34131416109"></a>Test Objects</p>
</th>
<th class="cellrowborder" valign="top" width="45.23452345234523%" id="mcps1.2.4.1.3"><p id="p12413141171010"><a name="p12413141171010"></a><a name="p12413141171010"></a>Test Environment</p>
</th>
</tr>
</thead>
<tbody><tr id="row2907335181017"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p6414134117109"><a name="p6414134117109"></a><a name="p6414134117109"></a>LargeTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p20414104113101"><a name="p20414104113101"></a><a name="p20414104113101"></a>Service functionalities, all-scenario features, and mechanical power environment (MPE) and scenario-level DFX</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p5414841121013"><a name="p5414841121013"></a><a name="p5414841121013"></a>Devices close to real devices</p>
</td>
</tr>
<tr id="row10907635131015"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p19414134117104"><a name="p19414134117104"></a><a name="p19414134117104"></a>MediumTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p114141241141018"><a name="p114141241141018"></a><a name="p114141241141018"></a>Modules, subsystem functionalities after module integration, and DFX</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p14414941111015"><a name="p14414941111015"></a><a name="p14414941111015"></a>Single device that is actually used. You can perform message simulation, but do not mock functions.</p>
</td>
</tr>
<tr id="row1990713353100"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p641414110109"><a name="p641414110109"></a><a name="p641414110109"></a>SmallTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p54141541181018"><a name="p54141541181018"></a><a name="p54141541181018"></a>Modules, classes, and functions</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p1841494131013"><a name="p1841494131013"></a><a name="p1841494131013"></a>Local PC. Use a large number of mocks to replace dependencies with other modules.</p>
</td>
</tr>
</tbody>
</table>

Table 3 Test types

<a name="table18811230124619"></a>
<table><thead align="left"><tr id="row48163019466"><th class="cellrowborder" valign="top" width="19.040000000000003%" id="mcps1.2.3.1.1"><p id="p1791784418465"><a name="p1791784418465"></a><a name="p1791784418465"></a>Type</p>
</th>
<th class="cellrowborder" valign="top" width="80.96%" id="mcps1.2.3.1.2"><p id="p2917164444614"><a name="p2917164444614"></a><a name="p2917164444614"></a>Definition</p>
</th>
</tr>
</thead>
<tbody><tr id="row682630104615"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1091784414469"><a name="p1091784414469"></a><a name="p1091784414469"></a>Function</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p16917344104618"><a name="p16917344104618"></a><a name="p16917344104618"></a>Tests the correctness of both service and platform functionalities provided by the tested object for end users or developers.</p>
</td>
</tr>
<tr id="row1821930154611"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p591714474612"><a name="p591714474612"></a><a name="p591714474612"></a>Performance</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p15917154410463"><a name="p15917154410463"></a><a name="p15917154410463"></a>Tests the processing capability of the tested object under specific preset conditions and load models. The processing capability is measured by the service volume that can be processed in a unit time, for example, call per second, frame per second, or event processing volume per second.</p>
</td>
</tr>
<tr id="row13821030104616"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p691711440467"><a name="p691711440467"></a><a name="p691711440467"></a>Power</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p159171544104616"><a name="p159171544104616"></a><a name="p159171544104616"></a>Tests the power consumption of the tested object in a certain period of time under specific preset conditions and load models.</p>
</td>
</tr>
<tr id="row6821330114618"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p13917164454612"><a name="p13917164454612"></a><a name="p13917164454612"></a>Reliability</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p11917194416465"><a name="p11917194416465"></a><a name="p11917194416465"></a>Tests the service performance of the tested object under common and uncommon input conditions, or specified service volume pressure and long-term continuous running pressure. The test covers stability, pressure handling, fault injection, and Monkey test times.</p>
</td>
</tr>
<tr id="row11821930184612"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1691774474618"><a name="p1691774474618"></a><a name="p1691774474618"></a>Security</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><a name="ul112421652121513"></a><a name="ul112421652121513"></a><ul id="ul112421652121513"><li>Tests the capability of defending against security threats, including but not limited to unauthorized access, use, disclosure, damage, modification, and destruction, to ensure information confidentiality, integrity, and availability.</li><li>Tests the privacy protection capability to ensure that the collection, use, retention, disclosure, and disposal of users' private data comply with laws and regulations.</li><li>Tests the compliance with various security specifications, such as security design, security requirements, and security certification of the Ministry of Industry and Information Technology (MIIT).</li></ul>
</td>
</tr>
<tr id="row16825307467"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p129188444462"><a name="p129188444462"></a><a name="p129188444462"></a>Global</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p179186444465"><a name="p179186444465"></a><a name="p179186444465"></a>Tests the internationalized data and localization capabilities of the tested object, including multi-language display, various input/output habits, time formats, and regional features, such as currency, time, and culture taboos.</p>
</td>
</tr>
<tr id="row08211308464"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p191814447465"><a name="p191814447465"></a><a name="p191814447465"></a>Compatibility</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><a name="ul186961827111612"></a><a name="ul186961827111612"></a><ul id="ul186961827111612"><li>Tests backward compatibility of an application with its own data, the forward and backward compatibility with the system, and the compatibility with different user data, such as audio file content of the player and smart SMS messages.</li><li>Tests system backward compatibility with its own data and the compatibility of common applications in the ecosystem.</li><li>Tests software compatibility with related hardware.</li></ul>
</td>
</tr>
<tr id="row1782730124618"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p13918144134614"><a name="p13918144134614"></a><a name="p13918144134614"></a>User</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p1291844494611"><a name="p1291844494611"></a><a name="p1291844494611"></a>Tests user experience of the object in real user scenarios. All conclusions and comments should come from the users, which are all subjective evaluation in this case.</p>
</td>
</tr>
<tr id="row58243024617"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1291884474614"><a name="p1291884474614"></a><a name="p1291884474614"></a>Standard</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p0918124424614"><a name="p0918124424614"></a><a name="p0918124424614"></a>Tests the compliance with industry and company-specific standards, protocols, and specifications. The standards here do not include any security standards that should be classified into the security test.</p>
</td>
</tr>
<tr id="row382830124619"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p119181044164619"><a name="p119181044164619"></a><a name="p119181044164619"></a>Safety</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p1291818443468"><a name="p1291818443468"></a><a name="p1291818443468"></a>Tests the safety property of the tested object to avoid possible hazards to personal safety, health, and the object itself.</p>
</td>
</tr>
<tr id="row1083153014465"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p39187441469"><a name="p39187441469"></a><a name="p39187441469"></a>Resilience</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p891815444462"><a name="p891815444462"></a><a name="p891815444462"></a>Tests the resilience property of the tested object to ensure that it can withstand and maintain the defined running status (including downgrading) when being attacked, and recover from and adapt defense to the attacks to approach mission assurance.</p>
</td>
</tr>
</tbody>
</table>

## Cangjie Test Case Development Guide <a name="section3695134065513"></a>

The current test framework is **CJUnit**, which supports automated testing for OpenHarmony applications (specifically apps developed in Cangjie using the Cangjie application framework).

**Table 4** Test Framework and Language

<a name="table4418343171415"></a>
<table><thead align="left"><tr id="row34183435145">
<th class="cellrowborder" valign="top" width="50%" id="mcps1.2.4.1.2"><p id="p1841804341413"><a name="p1841804341413"></a><a name="p1841804341413"></a>Test Framework</p>
</th>
<th class="cellrowborder" valign="top" width="50%" id="mcps1.2.4.1.3"><p id="p2418104311148"><a name="p2418104311148"></a><a name="p2418104311148"></a>Language</p>
</th>
</tr>
</thead>
<tr id="row4419134341417">
<td class="cellrowborder" valign="top" width="50%" headers="mcps1.2.4.1.2 "><p id="p10419443171416"><a name="p10419443171416"></a><a name="p10419443171416"></a>CJUnit</p>
</td>
<td class="cellrowborder" valign="top" width="50%" headers="mcps1.2.4.1.3 "><p id="p9419143181414"><a name="p9419143181414"></a><a name="p9419143181414"></a>Cangjie</p>
</td>
</tr>
</tbody>
</table>


### Test Case Writing Guide<a name="section159801435165220"></a>

Test cases are written in Cangjie and must comply with Cangjie coding conventions.

**Taking Stage Model as an example:**

1. **Standard test directory**: Store test cases under `src/ohosTest/cangjie`.

```
├── signature
│ └──openharmony_sx.p7b             # Signing tool
├── AppScope
│ └──app.json5                      # Application global configuration
├── entry
│ └──src
│ │ └──main
│ │ │ └──cangjie                    # Cangjie source package for application
│ │ │ │ └──ability_stage.cj 
│ │ │ │ └──index.cj                 # Default page template
│ │ │ │ └──main_ability.cj 
│ │ │ └──resources                  # Application resource files
│ │ │ └──module.json5               # Stage model module configuration
│ │ └──ohosTest                     # Instrument Test directory
│ │ │ └──cangjie# Cangjie test code directory
│ │ │ │ │ └──unittest_support
│ │ │ │ │ │ └──unittest_engine.cj   # Test framework
│ │ │ │ │ └──xxx_test.cj            # Test file (test suite, test cases)
│ │ │ │ │ └──list_test.cj           # Test suite registration
```

**Notes:**
- Test files must be named with `xxx_test.cj`, where `xxx` follows the pattern `{function_module_description}_{number}`.
- Test classes must be added to `list_test.cj`.

2. unittest_engine.cj
In the `unittest_support/unittest_engine.cj` file, the `public override func onRun()` method contains the command to launch the test entry ability:


   ```
   public class OpenHarmonyTestRunner <: TestRunner {
       ...
        public override func onRun(): Unit {
                let abilityDelegatorArguments = AbilityDelegatorRegistry.getArguments()
                let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()abilityDelegator.print("OpenHarmonyTestRunner onRun")
                let parameters = abilityDelegatorArguments.parameters
                let bundleName = abilityDelegatorArguments.bundleName
                let bundleInfo = BundleManager.getBundleInfoForSelf(
                    BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
                let moduleName = match (parameters.get("-m")) {
                    case None =>
                        abilityDelegator.finishTest("Module name was not specified.", -1)
                        return
                    case Some(moduleName) =>
                        if (bundleInfo.hapModulesInfo |> any {hapModuleInfo => hapModuleInfo.name == moduleName}) {
                            moduleName
                        } else {
                            abilityDelegator.finishTest(
                                "No module with name \"${moduleName}\" was found in bundle ${bundleName}.", -1)
                            return
                        }
                }
                let abilityName = match (bundleInfo.hapModulesInfo |> filter {hapModuleInfo => hapModuleInfo.name == moduleName} |>
                    first) {
                    case None =>
                        abilityDelegator.finishTest("No module with name \"${moduleName}\" was found in bundle ${bundleName}.",
                            -1)
                        return
                    case Some(hapModuleInfo) =>
                        let mainElementName = hapModuleInfo.mainElementName
                        mainElementName
                }
                let want = Want(bundleName: bundleName, moduleName: moduleName, abilityName: abilityName)
                abilityDelegator.startAbility(want)
           ...
       }
    };
   ```

3.index.cj example

```
@Entry
@Component
class EntryView {
    @State
    var message: String = "Hello World"

    func build() {
        Row {
            Column {
                Text(this.message)
                    .fontSize(50)
                    .fontWeight(FontWeight.Bold)
                    .onClick ({
                        evt => this.message = "Hello Cangjie"
                    })
            }.width(100.percent)
        }.height(100.percent)
    }
}
```

4.Writing test cases

  4.1 XTS_API test cases

Test cases must include the following elements:

1.Import dependencies to use test interfaces.
2.Test logic: implement the core test logic (e.g., API calls).
3.Assertions: set checkpoints. A test case without assertions is not considered complete.
Write specific test code in src/ohosTest/cangjie/xxx_test.cj. Example: launch the test page and verify if the current displayed page is the expected one.


```
import kit.TestKit.*
@Test
class TestExample {

    @TestCase
    func test00(): Unit {
            let a = "abc"
            let b = "b"
            @Expect(a.contains(b))
            @Expect(a, a)
    }
}
```

​    4.2 XTS_UI test cases

​      The following example is a UI XTS test case. Scenario: perform click operations on the launched app page and verify the expected page change.

​      4.2.1 Write page code under src/main/cangjie

```
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_xxx {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => AlphabetIndexer(arrayValue: ["1", "2", "3"], selected: 0i32)
                    .id("AlphabetIndexer_comattr_id")
                    .align(Alignment.TopStart)
                    .direction(Direction.Ltr)
            }).width(100i64.percent)
    }
}
```

​      4.2.2 Write specific test code in src/ohosTest/cangjie/xxx_test.cj

```
import kit.TestKit.*
import kit.AbilityKit.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestExample {
    @TestCase
    func testUiExample(): Unit {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let bundleName = AbilityDelegatorRegistry
            .getArguments()
            .bundleName
        Hilog.info(1, "info", "uitest: TestUiExample begin")
        //start tested ability
        let want = Want(bundleName: bundleName, abilityName: 'EntryAbility')
        delegator.startAbility(want)
        sleep(Duration.second * 5)
        //check top display ability
        let ability = delegator.getCurrentTopAbility()
        Hilog.info(1, "info", "get top ability")
        // ui test code
        // init driver
        let driver = Driver.create()
        driver.delayMs(1000)
        let button = driver.findComponent(On().text('Next'))
        //click button
        button?.click()
        driver.delayMs(1000)
        //check text
        driver.assertComponentExist(On().text('after click'))
        driver.pressBack()
    }
}
```

5.Test suite registration (list_test.cj) example

```
private let register = testsuite()

func testsuite() {
    registerTestSuite {TestExample()}
}
```
Table 5 Additional Usage Reference

<a name="table13980103565212"></a>
<table><thead align="left"><tr id="row1098093545218"><th class="cellrowborder" valign="top" width="17.92179217921792%" id="mcps1.2.4.1.1"><p id="p49811235135214"><a name="p49811235135214"></a><a name="p49811235135214"></a>Annotation</p>
</th>
<th class="cellrowborder" valign="top" width="68.88688868886888%" id="mcps1.2.4.1.2"><p id="p898183565220"><a name="p898183565220"></a><a name="p898183565220"></a>Description</p>
</th>
<th class="cellrowborder" valign="top" width="13.19131913191319%" id="mcps1.2.4.1.3"><p id="p17981143512526"><a name="p17981143512526"></a><a name="p17981143512526"></a>Required</p>
</th>
</tr>
</thead>
<tbody><tr id="row1598183515528"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p139810358527"><a name="p139810358527"></a><a name="p139810358527"></a>@BeforeAll</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p198111352526"><a name="p198111352526"></a><a name="p198111352526"></a>Suite-level precondition, executed once before all test cases. Accepts one parameter: the setup function.</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p298114355529"><a name="p298114355529"></a><a name="p298114355529"></a>Optional</p>
</td>
</tr>
<tr id="row11981103512529"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p20981135135215"><a name="p20981135135215"></a><a name="p20981135135215"></a>@AfterAll</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p39811935115217"><a name="p39811935115217"></a><a name="p39811935115217"></a>Suite-level cleanup, executed once after all test cases. Accepts one parameter: the teardown function.</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p998110354527"><a name="p998110354527"></a><a name="p998110354527"></a>Optional</p>
</td>
</tr>
<tr id="row1298116359526"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p898112359526"><a name="p898112359526"></a><a name="p898112359526"></a>@BeforeEach</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p149811335175215"><a name="p149811335175215"></a><a name="p149811335175215"></a>Test-level precondition, executed before each test case.</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p13981133585212"><a name="p13981133585212"></a><a name="p13981133585212"></a>Optional</p>
</td>
</tr>
<tr id="row6982435115219"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p19982133517525"><a name="p19982133517525"></a><a name="p19982133517525"></a>@AfterEach</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p1398213575219"><a name="p1398213575219"></a><a name="p1398213575219"></a>Test-level cleanup, executed after each test case.</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p159821535195219"><a name="p159821535195219"></a><a name="p159821535195219"></a>Optional</p>
</td>
</tr>
</tbody>
</table>


### Test Case Compilation Guide<a name="section159801435165221"></a>

Building test projects depends on OpenHarmony command-line tools and the Cangjie SDK; configure the corresponding environment variables.

**Build Commands**

1.  Full build

    Run the following command in test/xts/acts_cangjie/

    ```
    python ./tools/build.py build --all
    ```

2.  Subsystem build

    Run the following command in test/xts/acts_cangjie

    ```
    python ./tools/build.py build --dir ability_cangjie_api/
    
    ability_cangjie_api/: Subsystem test case project directory
    ```

3.  Single module build

    Run the following command in test/xts/acts_cangjie

    ```
    python ./tools/build.py build --dir ability_cangjie_api/ability
    
    ability_cangjie_api/ability: Single module test case project directory
    ```


### Test Case Execution Guide <a name="section159801435165222"></a>

The test execution directory structure is as follows. After running the build.py script, the testcases directory is generated by default, containing the test HAPs and execution configuration files.


 ```
/test/xts
├─  acts_cangjie           # Test code root
│   └─ subsystem           # Subsystem test case source code
│   └─ tools               # Test tools and scripts
│      └─ build.py         # Test HAP build script
│      └─ run.py           # Test case execution script
│   └─ testcases           # Test files directory
│      └─xxx.hap           # Test HAP file
│      └─xxx.json          # Test execution configuration file
│   └─  reports            # Test report generation directory
 ```

**Execution Method**

1.  Run acts_cangjie/tools/run.py to launch the xdevice interface.

2.  After the interface starts, enter the corresponding command to execute test cases.
    
     Execute test cases by granularity:
     1. Full test hap (all cases)
          ``` 
          run acts
           
         acts: executes all test cases from all HAPs in testcases
        ```
    
     2. Single module hap: 
         ```
         run –l cjTestability
          
         cjTestability: test hap name
         ``````
    
     3. Single test suite：
         ```
         run -l cjTestability -ta class:TestSuiteExample
          
         cjTestability: test hap name
         TestSuiteExample: test suite name
         ```
     4. Single test case：
          ```
          run -l cjTestability -ta class:TestSuiteExample#TestCase
          
          cjTestability: test hap name
          TestSuiteExample: test suite name
          TestCase: test case name 
          ```
          
    
     For additional command-line options：[xdevice common commands](http://gitcode.com/openharmony/testfwk_xdevice)
    
3.  View test reports。
    Go to acts_cangjie/reports/ and open summary_report.html to view the test report.

