# XTS子系统<a name="ZH-CN_TOPIC_0000001117409671"></a>

-   [简介](#section465982318513)
-   [系统类型](#section125090457443)
-   [目录](#section161941989596)
-   [约束](#section119744591305)
-   [使用说明](#section137768191623)
-   [用例开发指导](#section3695134065513)
    -   [cangjie语言用例开发指导（适用于标准系统）](#section159801435165220)
    -   [cangjie语言用例编译打包指导（适用于标准系统）](#section445519106559)

## 简介<a name="section465982318513"></a>

XTS子系统是OpenHarmony生态测试套件的集合，当前包括ACTS（application compatibility test suite）应用兼容性测试组件，后续将拓展DCTS（distributed compatibility test suite）分布式兼容性测试组件、HATS（hardware abstract test suite) 硬件抽象层兼容性测试组件。

XTS子系统当前包括ACTS 与Tools 软件包：

-   ACTS，存放ACTS 相关测试案例源码与配置文件，其目的是帮助终端设备制造商尽早发现软件与OpenHarmony的不兼容问题，确保软件在整个开发周期内符合OpenHarmony的兼容性标准。
-   Tools，存放ACTS 相关测试案例开发框架。

## 系统类型<a name="section125090457443"></a>

OpenHarmony支持如下几种系统类型：

-   轻量系统（mini system）

    面向MCU类处理器例如Arm Cortex-M、RISC-V 32位的设备，硬件资源极其有限，支持的设备最小内存为128KiB，可以提供多种轻量级网络协议，轻量级的图形框架，以及丰富的IOT总线读写部件等。可支撑的产品如智能家居领域的连接类模组、传感器设备、穿戴类设备等。

-   小型系统（small system）

    面向应用处理器例如Arm Cortex-A的设备，支持的设备最小内存为1MiB，可以提供更高的安全能力、标准的图形框架、视频编解码的多媒体能力。可支撑的产品如智能家居领域的IP Camera、电子猫眼、路由器以及智慧出行领域的行车记录仪等。

-   标准系统（standard system）

    面向应用处理器例如Arm Cortex-A的设备，支持的设备最小内存为128MiB，可以提供增强的交互能力、3D GPU以及硬件合成能力、更多控件以及动画效果更丰富的图形能力、完整的应用框架。可支撑的产品如高端的冰箱显示屏。


## 目录<a name="section161941989596"></a>

```
/test/xts
├── acts                # 测试代码存放目录
│   └── subsystem       # 标准系统子系统测试用例源码存放目录
│   └── subsystem_lite  # 轻量系统、小型系统子系统测试用例源码存放目录
│   └── BUILD.gn        # 标准系统测试用例编译配置
│   └── build_lite      # 轻量系统、小型系统测试用例编译配置存放目录
│       └── BUILD.gn    # 轻量系统、小型系统测试用例编译配置
└── tools               # 测试工具代码存放目录
```

## 约束<a name="section119744591305"></a>

轻量系统用例开发语言是C，小型系统用例开发语言是C++。

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
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p174824517456"><a name="p174824517456"></a><a name="p174824517456"></a>验证关键功能点基本功能/最基本DFX属性在最常见输入下的表现，通过表示功能基本可运行。</p>
</td>
</tr>
<tr id="row28563372451"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p448445144512"><a name="p448445144512"></a><a name="p448445144512"></a>Level1</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p44813452452"><a name="p44813452452"></a><a name="p44813452452"></a>基本</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p648184584514"><a name="p648184584514"></a><a name="p648184584514"></a>验证各功能点基本功能/基本DFX属性在常见输入下的表现，通过表示功能基本可测试。</p>
</td>
</tr>
<tr id="row12856137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p164834520453"><a name="p164834520453"></a><a name="p164834520453"></a>Level2</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p148245184511"><a name="p148245184511"></a><a name="p148245184511"></a>重要</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p348945124510"><a name="p348945124510"></a><a name="p348945124510"></a>验证各功能点的基本功能/基本DFX属性在常规输入/常见异常情况下的表现，通过表示功能基本正常可用，可开展Beta。</p>
</td>
</tr>
<tr id="row48571137204514"><td class="cellrowborder" valign="top" width="33.333333333333336%" headers="mcps1.2.4.1.1 "><p id="p7481545184513"><a name="p7481545184513"></a><a name="p7481545184513"></a>Level3</p>
</td>
<td class="cellrowborder" valign="top" width="33.283328332833285%" headers="mcps1.2.4.1.2 "><p id="p1748184514455"><a name="p1748184514455"></a><a name="p1748184514455"></a>一般</p>
</td>
<td class="cellrowborder" valign="top" width="33.383338333833386%" headers="mcps1.2.4.1.3 "><p id="p8481245104519"><a name="p8481245104519"></a><a name="p8481245104519"></a>验证各功能点的全部功能/全部DFX属性在各种常规/非常规输入组合下，或各种正常/异常预置条件组合下的表现。</p>
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
<td class="cellrowborder" valign="top" width="45.23452345234523%" headers="mcps1.2.4.1.3 "><p id="p5414841121013"><a name="p5414841121013"></a><a name="p5414841121013"></a>尽量使用贴近真实的环境设备</p>
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

## 用例开发指导<a name="section3695134065513"></a>

根据测试系统选择测试框架和对应测试用例语言。

**表 4**  系统和测试框架、开发语言对应关系

<a name="table4418343171415"></a>
<table><thead align="left"><tr id="row34183435145"><th class="cellrowborder" valign="top" width="33.33333333333333%" id="mcps1.2.4.1.1"><p id="p941874311148"><a name="p941874311148"></a><a name="p941874311148"></a>系统</p>
</th>
<th class="cellrowborder" valign="top" width="33.33333333333333%" id="mcps1.2.4.1.2"><p id="p1841804341413"><a name="p1841804341413"></a><a name="p1841804341413"></a>测试框架</p>
</th>
<th class="cellrowborder" valign="top" width="33.33333333333333%" id="mcps1.2.4.1.3"><p id="p2418104311148"><a name="p2418104311148"></a><a name="p2418104311148"></a>语言</p>
</th>
</tr>
</thead>
<tr id="row4419134341417"><td class="cellrowborder" valign="top" width="33.33333333333333%" headers="mcps1.2.4.1.1 "><p id="p341964313143"><a name="p341964313143"></a><a name="p341964313143"></a>标准系统</p>
</td>
<td class="cellrowborder" valign="top" width="33.33333333333333%" headers="mcps1.2.4.1.2 "><p id="p10419443171416"><a name="p10419443171416"></a><a name="p10419443171416"></a>CJUnit</p>
</td>
<td class="cellrowborder" valign="top" width="33.33333333333333%" headers="mcps1.2.4.1.3 "><p id="p9419143181414"><a name="p9419143181414"></a><a name="p9419143181414"></a>cangjie</p>
</td>
</tr>
</tbody>
</table>

### cangjie语言用例开发指导（适用于标准系统）<a name="section159801435165220"></a>

当前使用的测试框架是CJUnit，用于支撑OpenHarmony application测试（特指基于cangjie应用框架使用 cangjie 语言开发的 APP）进行自动化测试。

**用例编写基础语法**

测试用例为 cangjie 语言，必须满足 cangjie 语言编程规范:

**表 5** 

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


**以Stage 模式为例：**

1. 规范用例目录：测试用例存储到 src/ohosTest/cangjie目录。

   ```
   ├── BUILD.gn                     # 配置文件
   ├── signature
   │ └──openharmony_sx.p7b          # 签名工具
   ├── AppScope
   │ └──resource  
   │ └──app.json
   ├── entry
   │ └──src
   │ │ └──main
   │ │ │ └──cangjie         
   │ │ │ │ └──ability_stage.cj         
   │ │ │ │ └──index.cj  
   │ │ │ │ └──main_ability.cj
   │ │ │ └──resources                     # hap资源存放目录
   │ │ │ └──module.json                   # hap配置文件
   │ │ └──ohosTest
   │ │ │ └──cangjie                       # 测试代码存放目录
   │ │ │ │ │ └──unittest_support
   │ │ │ │ │ │ └──unittest_engine.cj
   │ │ │ │ │ └──xxxx_test.cj           # 测试套    
   │ │ │ │ │ └──cjpm.toml
   │ │ │ │ │ └──list_test.cj           # 测试套注册
   │ │ │ │ │ └──utility.cj              
   ```

2. unittest_engine.cj 示例

   【注】在unittest_support目录下的 unittest_engine 文件中的 public override func onRun() 方法下存在拉起测试套入口xxxAbility的命令：


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

3. index.ets示例

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

4. test.cj测试套示例

    ```
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

### 全量编译指导（适用于标准系统）<a name="section159801435165220"></a>
环境配置(windows/linux)：配置hvigorw、CangjiePath环境变量

1.  全量编译
    test/xts/acts目录下执行编译命令：

    ```
    python ./build.py build --all
    ```

2.  单个子系统编译

    test/xts/acts目录下执行编译命令：

    ```
    python ./build.py build --dir=xxx/xxx/xxx
    ```

3.  单模块编译

    test/xts/acts目录下执行编译命令：

    ```
    python ./build.py build --dir=xxx/xxx/xxx
    ```

    测试用例输出目录：编译时添加参数--output-dir (默认输出目录 ./testcases)
    
    ```
    python ./build.py build --dir=xxx/xxx/xxx --output-dir=xxx/xxx/xxx
    ```


### 全量用例执行指导（标准系统）<a name="section159801435165220"></a>

搭建测试环境Windows工作台下安装python3.7及以上版本，确保工作台和测试设备正常连接。

**注：高版本python不带 easy_install，可以安装低于 52.0.0 的 setuptools，解决该问题。**

```
pip install setuptools==50.0.0
```

测试执行目录

    ├── testcases                      # 测试套文件存放目录 
    │ └──xxx.hap                       # 测试套可执行hap文件
    │ └──xxx.json                      # 测试套对应执行配置文件
    ├── tools                          # 测试框架工具目录
    ├── run.bat                        # window平台测试套启动执行文件
    ├── reports                        # 测试报告生成目录

用例执行
1.  在Windows工作台上，找到从Linux服务器上拷贝下来的测试套件用例目录，在Windows命令窗口进入对应目录，直接执行acts\run.bat。

2.  界面启动后，输入用例执行指令。

    全量执行：```run acts ```

    模块执行(具体模块可以查看\acts\testcases\)：```run –l ActsSamgrTest ```

    单包执行(具体模块可以查看\acts\testcases\)：（适用于OH驱动）

    ```
    run -l uitestActs -ta class:UiTestCase#testChecked  

    uitestActs： 测试hap
    UiTestCase: testsuite
    testChecked: testcase
    ```
    测试执行：[xdevice常用命令行](http://gitcode.com/openharmony/testfwk_xdevice)

3.  查看测试报告。
    进入acts\reports\，获取当前的执行记录，打开“summary_report.html”可以获取到测试报告。

