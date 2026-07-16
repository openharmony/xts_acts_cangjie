# XTS子系统-仓颉<a name="ZH-CN_TOPIC_0000001117409671"></a>

-   [简介](#section465982318513)
-   [目录](#section161941989596)
-   [使用说明](#section137768191623)
-   [仓颉语言用例开发指导](#section3695134065513)
    -   [用例编写指导](#section159801435165220)
    -   [用例编译指导](#section159801435165221)
    -   [用例执行指导](#section159801435165222)

## 简介<a name="section465982318513"></a>

xts_acts_cangjie是仓颉语言acts(application compatibility test suite)应用兼容性测试套件。

## 目录<a name="section161941989596"></a>

```
/test/xts
├─  acts_cangjie           # 测试代码存放目录
│   └─ subsystem           # 子系统测试用例源码存放目录
│   └─ tools               # 测试工具、脚本存放目录
│      └─ build.py         # 测试hap构建脚本
│      └─ run.py           # 测试用例执行脚本
```

## 使用说明<a name="section137768191623"></a>

**表 1**  用例级别说明

<a name="table12856113719456"></a>
<table><thead align="left"><tr id="row88561737114517"><th class="cellrowborder" valign="top" width="33.333333333333336%" id="mcps1.2.4.1.1"><p id="p54711456452"><a name="p54711456452"></a><a name="p54711456452"></a>级别名称</p>
</th>
<th class="cellrowborder" valign="top" width="33.283328332833285%" id="mcps1.2.4.1.2"><p id="p114834544518"><a name="p114834544518"></a><a name="p114834544518"></a>基本定义</p>
</th>
<th class="cellrowborder" valign="top" width="33.383338333833386%" id="mcps1.2.4.1.3"><p id="p348154574518"><a name="p348154574518"></a><a name="p348154574518"></a>测试范围</p>
</th>
</tr>
</thead>
<tbody><tr id="row78561137134514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p17481345124512"><a name="p17481345124512"></a><a name="p17481345124512"></a>Level0</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p1548945204514"><a name="p1548945204514"></a><a name="p1548945204514"></a>冒烟</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p174824517456"><a name="p174824517456"></a><a name="p174824517456"></a>验证关键功能的核心流程在正常输入下的表现，通过表示功能基本可运行。</p>
</td>
</tr>
<tr id="row28563372451"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p448445144512"><a name="p448445144512"></a><a name="p448445144512"></a>Level1</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p44813452452"><a name="p44813452452"></a><a name="p44813452452"></a>基本</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p648184584514"><a name="p648184584514"></a><a name="p648184584514"></a>验证各功能点的基本流程和基本DFX属性（性能、稳定性）在正常及常见边界输入下的表现，通过表示功能基本可测试。</p>
</td>
</tr>
<tr id="row12856137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p164834520453"><a name="p164834520453"></a><a name="p164834520453"></a>Level2</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p148245184511"><a name="p148245184511"></a><a name="p148245184511"></a>重要</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p348945124510"><a name="p348945124510"></a><a name="p348945124510"></a>验证各功能点的全部功能和DFX属性在正常输入及常见异常场景（如参数缺失、格式错误）下的表现，通过表示功能基本正常可用，可开展Beta。</p>
</td>
</tr>
<tr id="row48571137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p7481545184513"><a name="p7481545184513"></a><a name="p7481545184513"></a>Level3</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p1748184514455"><a name="p1748184514455"></a><a name="p1748184514455"></a>一般</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p8481245104519"><a name="p8481245104519"></a><a name="p8481245104519"></a>验证各功能点的全部功能和DFX属性在多种输入组合及预置条件变化（如并发、资源受限）下的表现。</p>
</td>
</tr>
<tr id="row14857133712451"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p1248144515456"><a name="p1248144515456"></a><a name="p1248144515456"></a>Level4</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p94804514519"><a name="p94804514519"></a><a name="p94804514519"></a>生僻</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p1248445164516"><a name="p1248445164516"></a><a name="p1248445164516"></a>验证关键功能点在极端异常预置条件下、用户难以触及的异常输入组合下的表现。</p>
</td>
</tr>
</tbody>
</table>

**表 2**  用例粒度说明

<a name="table1690733521014"></a>
<table><thead align="left"><tr id="row9907143516105"><th class="cellrowborder" valign="top" width="19.591959195919593%" id="mcps1.2.4.1.1"><p id="p1141312416102"><a name="p1141312416102"></a><a name="p1141312416102"></a>用例规模</p>
</th>
<th class="cellrowborder" valign="top" width="35.17351735173517%" id="mcps1.2.4.1.2"><p id="p34131416109"><a name="p34131416109"></a><a name="p34131416109"></a>被测试对象</p>
</th>
<th class="cellrowborder" valign="top" width="45.23452345234523%" id="mcps1.2.4.1.3"><p id="p12413141171010"><a name="p12413141171010"></a><a name="p12413141171010"></a>测试环境</p>
</th>
</tr>
</thead>
<tbody><tr id="row2907335181017"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p6414134117109"><a name="p6414134117109"></a><a name="p6414134117109"></a>LargeTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p20414104113101"><a name="p20414104113101"></a><a name="p20414104113101"></a>业务功能/全场景特性/整机及场景级DFX</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p5414841121013"><a name="p5414841121013"></a><a name="p5414841121013"></a>使用与生产环境一致的硬件设备和软件环境；若条件受限，需确保环境差异不影响测试结论的有效性</p>
</td>
</tr>
<tr id="row10907635131015"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p19414134117104"><a name="p19414134117104"></a><a name="p19414134117104"></a>MediumTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p114141241141018"><a name="p114141241141018"></a><a name="p114141241141018"></a>模块/子系统集成至设备后的功能/DFX</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p14414941111015"><a name="p14414941111015"></a><a name="p14414941111015"></a>使用真实的单设备进行验证，可进行消息模拟，尽量不对函数进行MOCK</p>
</td>
</tr>
<tr id="row1990713353100"><td class="cellrowborder" valign="top" width="19.591959195919593%" headers="mcps1.2.4.1.1 "><p id="p641414110109"><a name="p641414110109"></a><a name="p641414110109"></a>SmallTest</p>
</td>
<td class="cellrowborder" valign="top" width="35.17351735173517%" headers="mcps1.2.4.1.2 "><p id="p54141541181018"><a name="p54141541181018"></a><a name="p54141541181018"></a>模块/类/函数</p>
</td>
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p1841494131013"><a name="p1841494131013"></a><a name="p1841494131013"></a>在开发者个人环境进行测试，尽量不依赖其它模块，存在大量的MOCK</p>
</td>
</tr>
</tbody>
</table>

**表 3**  测试类型说明

<a name="table18811230124619"></a>
<table><thead align="left"><tr id="row48163019466"><th class="cellrowborder" valign="top" width="19.040000000000003%" id="mcps1.2.3.1.1"><p id="p1791784418465"><a name="p1791784418465"></a><a name="p1791784418465"></a>测试类型名称</p>
</th>
<th class="cellrowborder" valign="top" width="80.96%" id="mcps1.2.3.1.2"><p id="p2917164444614"><a name="p2917164444614"></a><a name="p2917164444614"></a>测试类型定义</p>
</th>
</tr>
</thead>
<tbody><tr id="row682630104615"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1091784414469"><a name="p1091784414469"></a><a name="p1091784414469"></a>Function</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p16917344104618"><a name="p16917344104618"></a><a name="p16917344104618"></a>验证被测对象提供给用户的业务功能实现正确性的测试项，这里的“用户”可以是终端用户或开发者，功能包括业务功能及平台功能</p>
</td>
</tr>
<tr id="row1821930154611"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p591714474612"><a name="p591714474612"></a><a name="p591714474612"></a>Performance</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p15917154410463"><a name="p15917154410463"></a><a name="p15917154410463"></a>验证被测对象在特定预置条件/负载模型下的处理能力的测试项，“处理能力”一般以单位时间内可处理的业务量来衡量，如呼叫/秒，帧率/秒，事件处理量/秒等</p>
</td>
</tr>
<tr id="row13821030104616"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p691711440467"><a name="p691711440467"></a><a name="p691711440467"></a>Power</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p159171544104616"><a name="p159171544104616"></a><a name="p159171544104616"></a>验证被测对象在特定预置条件/负载模型下在一定时间内能源消耗量的测试项</p>
</td>
</tr>
<tr id="row6821330114618"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p13917164454612"><a name="p13917164454612"></a><a name="p13917164454612"></a>Reliability</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p11917194416465"><a name="p11917194416465"></a><a name="p11917194416465"></a>验证被测对象在正常/异常输入情况下，或业务量压力和长时间连续运行压力情况下业务表现的测试项，含稳定性、压力、故障注入、Monkey测试项</p>
</td>
</tr>
<tr id="row11821930184612"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1691774474618"><a name="p1691774474618"></a><a name="p1691774474618"></a>Security</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p1791784410463"><a name="p1791784410463"></a><a name="p1791784410463"></a>验证系统对恶意威胁的防护能力，威胁包括但不限于未授权访问、使用、泄露、破坏、修改、毁灭，以保障信息的机密性、完整性和可用性; 验证系统对用户隐私的保护能力，保障用户的隐私数据被收集、使用、保有、披露和处置符合法律规范，保障用户的隐私权; 验证对各类安全规范的遵从情况，如安全设计规范、安全红线、工信部安全规范等，保障安全相关法律法规的合规。</p>
</td>
</tr>
<tr id="row16825307467"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p129188444462"><a name="p129188444462"></a><a name="p129188444462"></a>Global</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p179186444465"><a name="p179186444465"></a><a name="p179186444465"></a>验证被测对象在是否具有国际化数据支持和本地化能力的测试项，包括语言显示、输入/输出习惯、时间显示、区域特性如货币时间禁忌等等</p>
</td>
</tr>
<tr id="row08211308464"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p191814447465"><a name="p191814447465"></a><a name="p191814447465"></a>Compatibility</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p99181344144613"><a name="p99181344144613"></a><a name="p99181344144613"></a>当被测对象为应用时，包括被测对象对于自身数据的后向兼容性、对于系统的前后向兼容性、对于不同用户数据(如播放器之音频文件格式/智能短信之用户短信内容)的兼容性测试项； 当被测对象为系统时，包括被测系统对于系统自身数据的后向兼容性、以及对于生态中常用应用的兼容性测试项；当被测对象为软件时，包括被测系统对于相关的硬件的兼容性；</p>
</td>
</tr>
<tr id="row1782730124618"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p13918144134614"><a name="p13918144134614"></a><a name="p13918144134614"></a>User</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p1291844494611"><a name="p1291844494611"></a><a name="p1291844494611"></a>验证被测对象在真实用户场景下的用户体验感受的测试项，注意此种情况下没有客观的“正确”与“失败”，所有的结论及评价都应该来自于用户</p>
</td>
</tr>
<tr id="row58243024617"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p1291884474614"><a name="p1291884474614"></a><a name="p1291884474614"></a>Standard</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p0918124424614"><a name="p0918124424614"></a><a name="p0918124424614"></a>验证被测对象对于行业及公司内标准/协议/规范的遵从情况的测试项，注意此处的“标准”不包含任何安全标准，针对安全标准的测试项划归为“安全测试”类型</p>
</td>
</tr>
<tr id="row382830124619"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p119181044164619"><a name="p119181044164619"></a><a name="p119181044164619"></a>Safety</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p1291818443468"><a name="p1291818443468"></a><a name="p1291818443468"></a>验证被测对象的Safety属性，避免产品可能对人身安全、健康以及产品本身带来的危害。</p>
</td>
</tr>
<tr id="row1083153014465"><td class="cellrowborder" valign="top" width="19.040000000000003%" headers="mcps1.2.3.1.1 "><p id="p39187441469"><a name="p39187441469"></a><a name="p39187441469"></a>Resilience</p>
</td>
<td class="cellrowborder" valign="top" width="80.96%" headers="mcps1.2.3.1.2 "><p id="p891815444462"><a name="p891815444462"></a><a name="p891815444462"></a>验证被测对象的韧性属性，确保系统受攻击时承受并保持在有定义的运行状态（包括降级）、恢复并适应攻击以保障Mission达成。</p>
</td>
</tr>
</tbody>
</table>

## 仓颉语言用例开发指导 <a name="section3695134065513"></a>

当前使用的测试框架是CJUnit，用于支撑OpenHarmony application测试（特指基于CJUnit 
 应用框架使用仓颉语言开发的 APP）进行自动化测试。

**表 4**  测试框架和开发语言

<a name="table4418343171415"></a>
<table><thead align="left"><tr id="row34183435145">
<th class="cellrowborder" valign="top" width="50%" id="mcps1.2.4.1.2"><p id="p1841804341413"><a name="p1841804341413"></a><a name="p1841804341413"></a>测试框架</p>
</th>
<th class="cellrowborder" valign="top" width="50%" id="mcps1.2.4.1.3"><p id="p2418104311148"><a name="p2418104311148"></a><a name="p2418104311148"></a>语言</p>
</th>
</tr>
</thead>
<tr id="row4419134341417">
<td class="cellrowborder" valign="top" width="50%" headers="mcps1.2.4.1.2 "><p id="p10419443171416"><a name="p10419443171416"></a><a name="p10419443171416"></a>CJUnit</p>
</td>
<td class="cellrowborder" valign="top" width="50%" headers="mcps1.2.4.1.3 "><p id="p9419143181414"><a name="p9419143181414"></a><a name="p9419143181414"></a>仓颉</p>
</td>
</tr>
</tbody>
</table>

### 用例编写指导<a name="section159801435165220"></a>

1.测试用例为仓颉语言，必须满足仓颉语言编程规范。
2.测试用例应覆盖接口的正常输入场景、边界值场景（如最大值、最小值、空值）及异常场景（如非法参数、超限输入）。

**以Stage 模式为例：**

1. 规范用例目录：测试用例存储到 src/ohosTest/cangjie目录。

```
├── signature
│ └──openharmony_sx.p7b                # 签名工具
├── AppScope
│ └──app.json5                         # 应用全局配置信息
├── entry
│ └──src
│ │ └──main
│ │ │ └──cangjie         			   # 仓颉源码包应用目录
│ │ │ │ └──ability_stage.cj            # 组件管理器模板文件
│ │ │ │ └──index.cj                    # 默认页面模板文件
│ │ │ │ └──main_ability.cj             # 系统界面窗口模板文件
│ │ │ └──resources                     # 应用资源文件存放目录
│ │ │ └──module.json5                  # Stage模型模块配置文件
│ │ └──ohosTest                        # Instrument Test测试目录
│ │ │ └──cangjie                       # 仓颉测试代码存放目录
│ │ │ │ │ └──unittest_support
│ │ │ │ │ │ └──unittest_engine.cj  	   # 测试框架
│ │ │ │ │ └──xxx_test.cj               # 测试文件(测试套、测试用例)    
│ │ │ │ │ └──list_test.cj              # 测试套注册
```

​      注意：

​      1). 测试文件需要以xxx_test.cj命名，其中xxx命名规范是"{功能模块描述}_{编号}"

​      2). 测试类需要添加至list_test.cj中

2.unittest_engine.cj

【注】在unittest_support目录下的 unittest_engine 文件中的 public override func onRun() 方法下存在拉起测试套入口xxxAbility的命令：


   ```cangjie
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

3.index.cj示例

```cangjie
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

4.编写测试用例

  4.1 编写XTS_API测试用例

  测试用例需包含如下基本元素：

  1). 依赖导包，以便使用依赖的测试接口。

  2). 测试代码编写，主要编写测试代码的相关逻辑，如接口调用等。

  3). 断言接口调用，设置测试代码中的检查点，如无检查点，则不可以认为完整的测试用例。

  在src > ohosTest > cangjie 文件夹下xxx_test.cj文件中编写具体测试代码，实现的场景：启动测试页面，检查设备当前显示的页面是否为预期页面。

```cangjie
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

​    4.2 编写XTS_UI测试用例

​       如下实例代码为UI的XTS测试用例，实现的场景是：在启动的应用页面上进行点击等操作，然后检测当前页面变化是否为预期变化。

​      4.2.1 编写src > main > cangjie 目录下页面代码。

```cangjie
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

​      4.2.2 在src > ohosTest > cangjie 文件夹下xxx_test.cj文件中编写具体测试代码。

```cangjie
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

5.测试类注册(list_test.cj)示例

```cangjie
private let register = testsuite()

func testsuite() {
    registerTestSuite {TestExample()}
}
```
**表 5**  其余用法参考

<a name="table13980103565212"></a>
<table><thead align="left"><tr id="row1098093545218"><th class="cellrowborder" valign="top" width="17.92179217921792%" id="mcps1.2.4.1.1"><p id="p49811235135214"><a name="p49811235135214"></a><a name="p49811235135214"></a>用例语法</p>
</th>
<th class="cellrowborder" valign="top" width="68.88688868886888%" id="mcps1.2.4.1.2"><p id="p898183565220"><a name="p898183565220"></a><a name="p898183565220"></a>描述</p>
</th>
<th class="cellrowborder" valign="top" width="13.19131913191319%" id="mcps1.2.4.1.3"><p id="p17981143512526"><a name="p17981143512526"></a><a name="p17981143512526"></a>要求</p>
</th>
</tr>
</thead>
<tbody><tr id="row1598183515528"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p139810358527"><a name="p139810358527"></a><a name="p139810358527"></a>@BeforeAll</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p198111352526"><a name="p198111352526"></a><a name="p198111352526"></a>测试套级别的预置条件，在所有测试用例开始前执行且仅执行一次，支持一个参数：预置动作函数</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p298114355529"><a name="p298114355529"></a><a name="p298114355529"></a>可选</p>
</td>
</tr>
<tr id="row11981103512529"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p20981135135215"><a name="p20981135135215"></a><a name="p20981135135215"></a>@AfterAll</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p39811935115217"><a name="p39811935115217"></a><a name="p39811935115217"></a>测试套级别的清理条件，在所有测试用例结束后执行且仅执行一次，支持一个参数：清理动作函数</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p998110354527"><a name="p998110354527"></a><a name="p998110354527"></a>可选</p>
</td>
</tr>
<tr id="row1298116359526"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p898112359526"><a name="p898112359526"></a><a name="p898112359526"></a>@BeforeEach</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p149811335175215"><a name="p149811335175215"></a><a name="p149811335175215"></a>测试用例级别的预置条件，在每条测试用例开始前执行</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p13981133585212"><a name="p13981133585212"></a><a name="p13981133585212"></a>可选</p>
</td>
</tr>
<tr id="row6982435115219"><td class="cellrowborder" valign="top" width="17.92179217921792%" headers="mcps1.2.4.1.1 "><p id="p19982133517525"><a name="p19982133517525"></a><a name="p19982133517525"></a>@AfterEach</p>
</td>
<td class="cellrowborder" valign="top" width="68.88688868886888%" headers="mcps1.2.4.1.2 "><p id="p1398213575219"><a name="p1398213575219"></a><a name="p1398213575219"></a>测试用例级别的清理条件，在每条测试用例结束后执行</p>
</td>
<td class="cellrowborder" valign="top" width="13.19131913191319%" headers="mcps1.2.4.1.3 "><p id="p159821535195219"><a name="p159821535195219"></a><a name="p159821535195219"></a>可选</p>
</td>
</tr>
</tbody>
</table>


### 用例编译指导<a name="section159801435165221"></a>

测试工程编译依赖OpenHarmony命令行工具与仓颉SDK，需配置对应环境变量配置。

**编译命令**

1.  全量编译

    test/xts/acts_cangjie/目录下执行编译命令：

    ```python
    python ./tools/build.py build --all
    ```

2.  子系统编译

    test/xts/acts_cangjie目录下执行编译命令：

    ```python
    python ./tools/build.py build --dir ability_cangjie_api/
    
    ability_cangjie_api/: 子系统测试用例工程存放目录
    ```

3.  单模块编译

    test/xts/acts_cangjie目录下执行编译命令：

    ```python
    python ./tools/build.py build --dir ability_cangjie_api/ability
    
    ability_cangjie_api/ability: 单模块测试用例工程存放目录
    ```


### 用例执行指导 <a name="section159801435165222"></a>

测试执行目录结构如下，执行build.py编译脚本后默认生成testcases目录，并在该目录下生成对应的测试hap、执行配置文件。

 ```
 /test/xts
├─  acts_cangjie           # 测试代码存放目录
│   └─ subsystem           # 子系统测试用例源码存放目录
│   └─ tools               # 测试工具、脚本存放目录
│      └─ build.py         # 测试hap构建脚本
│      └─ run.py           # 测试用例执行脚本
│   └─ testcases           # 测试文件存放目录
│      └─xxx.hap           # 测试hap文件
│      └─xxx.json          # 测试执行配置文件
│   └─  reports            # 测试报告生成目录
 ```

**执行方法**

1.  执行acts_cangjie\tools\run.py, 拉起xdevice界面。

2.  界面启动后，输入相应命令执行用例。
    
     按不同粒度执行测试用例：
     1. 全量测试hap用例执行: 
          ``` 
          run acts
           
         acts: 执行testcases下全量测试hap的全量用例
        ```
    
     2. 单模块hap执行: 
         ```
         run –l cjTestability
          
         cjTestability: 测试hap名
         ``````
    
     3. 单测试套执行：
         ```
         run -l cjTestability -ta class:TestSuiteExample
          
         cjTestability: 测试hap名
         TestSuiteExample: 测试套名
         ```
     4. 单测试用例执行：
          ```
          run -l cjTestability -ta class:TestSuiteExample#TestCase
          
          cjTestability: 测试hap名
          TestSuiteExample: 测试套名
          TestCase: 测试用例名 
          ```
          
    
     其余命令行参考：[xdevice常用命令行](http://gitcode.com/openharmony/testfwk_xdevice)
    
3.  查看测试报告。
    进入acts_cangjie\reports\，获取当前的执行记录，打开“summary_report.html”可以获取到测试报告。

