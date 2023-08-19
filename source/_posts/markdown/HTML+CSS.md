---
  title: HTML+CSS
  date: "2023-03-07 10:00"
  updated: "2023-08-19 14:13"
  tags: [HTML, CSS]
  categories: "系统课笔记"
---

# 认识 HTML

- **超文本标记语言**（英语：**H**yper**T**ext **M**arkup **L**anguage，简称：**HTML**）是一种用于创建**网页**的标准**标记语言**。

  - HTML 元素是构建网站的基石

- **什么是标记语言（markup language ）？**
  - 由无数个<b>标记（标签）</b>组成
  - 是对**某些内容进行特殊的标记**，以供其他**浏览器识别处理**
  - 比如使用`<h2></h2>`标记的文本会被识别为 **“标题”** 进行**加粗、文字放大**显示
  - 由**标签和内容**组成的称为**元素（element）**
- **什么是超文本（ HyperText ）呢？**
- 表示不仅仅可以插入**普通的文本（Text）**，还可以插入**图片、音频、视频**等内容
- 还可以表示**超链接（HyperLink）**，从一个网页跳转到另一个网页

## HTML 文件的特点 – 扩展名

- HTML 文件的拓展名是<b>.htm\.html</b>
  - 因历史遗留问题，Win95\Win98 系统的文件拓展名不能超过 3 字符，所以使用.htm
  - 现在统一使用 **.html**

## 认识元素

- 我们会发现 HTML 本质上是由一系列的<b>元素（Element）</b>构成的
- **什么是元素（Element）呢？**

  - **元素**是网页的一部分
  - 一个元素可以**包含一个数据项，或是一块文本，或是一张照片，亦或是什么也不包含**

- **那么 HTML 有哪些元素呢？**
  - https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element

## 元素的组成

- **剖析一个 HTML 元素的组成**

  ```html
  <p>哈哈哈</p>
  ```

- 这个元素的主要部分有

  - **开始标签**（Opening tag）：包含元素的名称（本例为 p），被左、右尖括号所包围。表示元素从这里开始或者开始起作用 —— 在本例中即段落由此开始
  - **结束标签**（Closing tag）： 与开始标签相似，只是其在元素名之前包含了一个**斜杠**。这表示着元素的结尾 —— 在本例中即段落在此结束。初学者常常会**犯忘记包含结束标签的错误**，这可能会产生一些奇怪的结果
  - **内容**（Content）：元素的内容，本例中就是所输入的文本本身
  - **元素**（Element）：开始标签、结束标签与内容相结合，便是一个完整的元素

## 元素的属性

- **元素也可以拥有属性（Attribute）**

  ```html
  <p class="abc">哈哈哈</p>
  ```

- 属性包含元素的额外信息，这些信息不会出现在实际的内容中

- **一个属性必须包含如下内容**

  - **一个空格**，在属性和元素名称之间。(如果已经有一个或多个属性，就与前一个属性之间有一个空格。)
  - **属性名称**，后面跟着一个等于号
  - **一个属性值**，由一对引号 “ ” 引起来

## 属性的分类

- 有些属性是**公共的**，每一个元素都可以设置
  - 比如**class、id、title**属性
- 有些属性是元素**特有的**，不是每一个元素都可以设置
  - 比如**meta 元素的 charset 属性、img 元素的 alt 属性**等

## 单标签元素 – 双标签元素

- **双标签元素**：我们会发现前面大部分看到的元素都是双标签的
  - html、body、head、h2、p、a 元素
- **单标签元素**：也有一些元素是只有一个标签
  - br、img、hr、meta、input
- **注意事项：**HTML 元素**不区分大小写**，但是**推荐小写**

## HTML 的注释

- **什么是注释？**
  - 简单来说，注释就是一段代码说明
  - `<!-- 注释内容 -->`
  - 注释是只给开发者看的，浏览器并不会把注释显示给用户看
- **注释的意义:**
  - 帮助我们自己理清代码的思路，方便以后进行查阅
  - 与别人合作开发时，添加注释，可以减少沟通成本。(同事之间分模块开发)
  - 开发自己的框架时，加入适当的注释，方便别人使用和学习。(开源精神)
  - 可以临时注释掉一段代码，方便调试

## 完整的 HTML 结构

- **一个完整的 HTML 结构包括哪几部分呢？**
  - 文档声明
  - html 元素
    - head 元素
    - body 元素

## 文档声明

- HTML 最上方的一段文本我们称之为 **文档类型声明**，用于声明**文档类型**

- **<!DOCTYPE html>**

  - HTML 文档声明，告诉浏览器当前页面是**HTML5 页面**
  - 让浏览器用**HTML5 的标准去解析识别**内容
  - 必须**放在 HTML 文档的最前面，不能省略**，省略了会出现兼容性问题

- HTML5 的文档声明比 HTML 4.01、XHTML 1.0 简洁非常多(了解即可)

  ```
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm14/loose.dtd">

  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
  ```

## html 元素

- <html> 元素 表示一个 HTML 文档的<b>根</b>（顶级元素），所以它也被称为<b>根元素</b>

- 所有其他元素必须是**此元素的后代**

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head></head>
    <body></body>
  </html>
  ```

- W3C 标准建议为 html 元素增加一个**lang 属性**，作用是

  - 帮助**语音合成工具**确定要使用的发音
  - 帮助**翻译工具**确定要使用的翻译规则

- **比如常用的规则：**

  - **lang=“en”** 表示这个 HTML 文档的语言是英文
  - **lang=“zh-CN”** 表示这个 HTML 文档的语言是中文

## head 元素

- **HTML head** **元素** 规定文档相关的**配置信息（也称之为元数据），**包括**文档的标题**，**引用的文档样式**和**脚本**等

  - 什么是元数据（meta data），是描述数据的数据
  - 这里我们可以理解成对**整个页面的配置**

- **常见的设置有哪些呢？一般会至少包含如下 2 个设置**

  - 网页的标题：**title 元素**
  - 网页的编码：**meta 元素**
    - 可以用于设置网页的**字符编码**，让浏览器更精准地显示每一个文字，**不设置或者设置错误会导致乱码**
    - 一般都使用**utf-8 编码**，涵盖了世界上几乎所有的文字

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>网页标题</title>
    </head>
    <body></body>
  </html>
  ```

## meta 元素

- meta 元素定义的元数据的类型包括以下几种
  - 如果设置了 **charset** 属性，meta 元素是一个字符集声明，告诉文档使用哪种字符编码
  - 如果设置了 **http-equiv** 属性，meta 元素则是编译指令
  - 如果设置了 **name** 属性，meta 元素提供的是文档级别（document-level）的元数据，应用于整个页面

### http-equiv

- 我们会发现，默认创建的 HTML 页面都有这段代码

  ```html
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  ```

- 它的作用到底是什么呢？网上众说纷纭，我们直接看官方文档的解释
  - 告知 IE 浏览器去模仿哪一个浏览器的行为
  - IE=edge，让 IE 以 edge 的模式来解析这个页面

### name

- name 属性的值非常多，具体的内容可以查看文档
  - https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/meta/name
- 我们介绍几个常用的
  - robots：爬虫、协作搜寻器，或者 “机器人”，对此页面的处理行为，或者说，应当遵守的规则
  - author：文档作者的名字
  - Copyright：版权声明
  - description：一段简短而精确的、对页面内容的描述
    - 一些浏览器，比如 Firefox 和 Opera，将其用作书签的默认描述
  - keywords：与页面内容相关的关键词，使用逗号分隔。某些搜索引擎会进行收录

## body 元素

- body 元素里面的内容将是你**在浏览器窗口中看到的东西**，也就是**网页的具体内容和结构**
  - **大部分 HTML 元素都是在 body 中编写**呈现的

## img 元素

- 我们应该如何告诉浏览器来**显示一张图片**呢？使用**img 元素**
- **img 元素**将**一份图像嵌入文档**
  - img 是 image 单词的缩写，是**图像、图片**的意思
  - 事实上 img 是一个**行内替换元素（ replaced element ）**
- **img 有两个常见的属性：**
  - src 属性：source 单词的缩写，表示源
    - 是**必须的**，它包含了你想嵌入的图片的文件路径
  - alt 属性：不是强制性的，有两个作用
    - 作用一：当图片加载不成功（错误的地址或者图片资源不存在），那么会显示这段文本
    - 作用二：屏幕阅读器会将这些描述读给需要使用阅读器的使用者听，让他们知道图像的含义

### 图片的路径

- **设置 img 的 src 时，需要给图片设置路径**
  - <b>网络图片：</b>一个 URL 地址
    - 网络图片的设置非常简单，给一个地址即可
  - <b>本地图片：</b>本地电脑上的图片，后续会和 html 一起部署到服务
- **本地图片的路径有两种方式：**
  - 方式一：**绝对路径**（几乎不用）
    - 从电脑的根目录开始一直找到资源的路径
  - 方式二：**相对路径**（常用）
    - 相当于当前文件的一个路径
    - . 代表当前文件夹（1 个.），可以省略
    - .. 代表上级文件夹（2 个.）
- 对于网页来说，不管什么操作系统（Windows、Mac、Linux），路径分隔符都是 /，而不是 \
- vue 项目加载本地图片无法显示：大致分析是**项目运行时寻找的根目录**和**你本地项目的根目录不是同一个**，所以报错说找不到图片

### 支持的图像格式

- Web 最常用的图像格式是：

  - [APNG（动态可移植网络图形）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#apng_animated_portable_network_graphics)——无损动画序列的不错选择（GIF 性能较差）

  - [AVIF（AV1 图像文件格式）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#avif_image)——静态图像或动画的不错选择，其性能较好

  - [GIF（图像互换格式）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#gif_graphics_interchange_format)——*简单*图像和动画的不错选择

  - [JPEG（联合图像专家组）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#jpeg_joint_photographic_experts_group_image)——有损压缩静态图像的不错选择（目前最流行的格式）

  - [PNG（便携式网络图形）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#png_portable_network_graphics)——对于无损压缩静态图像而言是不错的选择（质量略好于 JPEG）

  - [SVG（可缩放矢量图形）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#svg_scalable_vector_graphics)——矢量图像格式。用于必须以不同尺寸准确描绘的图像

  - [WebP（网络图片格式）](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#webp_image)——图像和动画的绝佳选择

- 推荐使用诸如 [WebP](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#webp_image) 和 [AVIF](https://developer.mozilla.org/zh-CN/docs/Web/Media/Formats/Image_types#avif_image) 等图像格式，因为它们在静态图像和动画的性能均比 PNG、JPEG、GIF 好得多。WebP 得到了广泛的支持，而 AVIF 则缺乏 Safari 的支持。

- 对于必须以不同尺寸准确绘制的图像，则仍然推荐使用 SVG 格式。

## iframe 元素

- 利用 iframe 元素可以实现：在一个 HTML 文档中嵌入其他 HTML 文档
- frameborder 属性
  - 用于规定是否显示边框
    - 1：显示
    - 0：不显示
- a 元素 target 的其他值：
  - \_parent：在**父窗口**中打开 URL
  - \_top：在**顶层窗口**中打开 URL

## div 元素、span 元素的历史

- 在 HTML 中**有两个特殊的元素 div 元素、span 元素**
  - <b>div 元素：</b>division，分开、分配的意思
  - <b>span 元素：</b>跨域、涵盖的意思
- <b>这两个元素有什么作用呢？</b>无所用、无所不用。
- **产生的历史：**
  - 网页的发展早期是**没有 css**，这个时候我们必须通过**语义化元素**来告知浏览器一段文字如何显示
  - 后来**出现了 css**，**结构和样式需要分离**，这个时候**html 只需要负责结构**即可
  - 比如 h1 元素可以是一段**普通的文本+CSS 修饰样式**
  - 这个时候就出现了**div、span 来编写 HTML 结构所有的结构，样式都交给 css 来处理**
- **所以，理论上来说：**
  - 我们的页面可以没有**div、span**
  - 我们的页面也可以全部都是**div、span**

## div 元素、span 元素的区别

- 这个时候有一个问题：**我出现一个不就可以了吗？**
- div 元素和 span 元素都是<b>“纯粹的” 容器</b>，也可以把他们理解成<b>“盒子”</b>，它们都是用来<b>包裹内容</b>的
  - **div 元素：**多个 div 元素包裹的内容会在**不同的行**显示
    - 一般作为其他元素的父容器，把其他元素包住，代表一个整体
    - 用于把网页分割为多个独立的部分
  - **span 元素：**多个 span 元素包裹的内容会**在同一行**显示
    - 默认情况下，跟普通文本几乎没差别
    - 用于区分特殊文本和普通文本，比如用来显示一些关键字

# 额外知识补充（一）

## 字符实体

- 思考：**我们编写的 HTML 代码会被浏览器解析**

- 如下代码是**如何被解析**的呢？

  - 如果你使用小于号（<），浏览器会将其后的文本解析为一个 tag
  - 但是某些情况下，我们确实需要编写一个小于号（<）
  - 这个时候我们就可以使用**字符实体**

  ```html
  <span><hhh</span>
  ```

- HTML 实体是一段以**连字号（&）开头、以分号（;）结尾的文本**（字符串）：

  - 字符实体常用于显示**保留字符**（这些字符会被解析为 HTML 代码）和**不可见的字符**（如 “不换行空格” ）
  - 你也可以用实体来代替**其他难以用标准键盘键入的字符**

- **常见的字符实体**

  ```
      描述 实体名称 实体编号
      空格 &nbsp; &#160;
  <   小于号 &lt; &#60;
  >   大于号 &gt; &#62;
  &   和号 &amp; &#38;
  "   双引号 &quot; &#34;
  '   单引号 &apos; &#39;
  ￠  分(cent) &cent; &#162;
  £   镑(pound) &pound; &#163;
  ¥   元(yen) &yen; &#165;
  €   欧元(euro) &euro; &#8364;
  §   小节 &sect; &#167;
  ©   版权(copyright) &copy; &#169;
  ®   注册商标 &reg; &#174;
  ™   商标 &trade; &#8482;
  ×   乘号 &times; &#215;
  ÷   除号 &divide; &#247;
  ```

## 认识 URL

- **URL 代表着是统一资源定位符（Uniform Resource Locator）**
- <b>通俗点说：</b>URL 无非就是一个给定的独特资源在 Web 上的地址
  - 理论上说，每个有效的 URL 都指向一个唯一的资源
  - 这个资源可以是一个 HTML 页面，一个 CSS 文档，一幅图像，等等

## URL 的格式

- URL 的标准格式如下：[协议类型]://[服务器地址]:[端口号]/[文件路径][文件名]?[查询字符串]#[片段 ID]

## URL 和 URI 的区别

- URI = Uniform Resource Identifier 统一资源**标志符**，用于标识 **Web 技术使用的逻辑或物理资源**
- URL = Uniform Resource Locator 统一资源**定位符**，俗称**网络地址**，相当于**网络中的门牌号**

- **URI 在某一个规则下能把一个资源独一无二的识别出来**
  - URL 作为一个网络 Web 资源的地址，可以唯一将一个资源识别出来，所以 URL 是一个 URI
  - 所以 URL 是 URI 的一个子集
  - 但是 URI 并不一定是 URL

## 元素的语义化

- 元素语义化就是**用正确的元素做正确的事情**，并且在开发中可以帮助我们**提高代码的阅读性和可维护性**，**减少让开发者之间的沟通成本**，**能让语音合成工具正确识别网页元素的用途，以便作出正确的反应**，还能**利于 SEO（搜索引擎优化）**

## 什么是 SEO

- **搜索引擎优化**（英语：search engine optimization，缩写为 SEO）是通过**了解搜索引擎的运作规则**来调整网站，以及提高网站在**有关搜索引擎内排名的方式**

- 原理：**爬取所有相关的网页，将抓取到的网页存放到临时库中进行处理，不符合规则的清理掉，符合规则的放到索引区（蛋糕：多个网站），在索引区中进行分类、归档、排序，然后将结果反馈给用户**

## 认识字符编码

- **计算机是干什么的?**

  - 计算机一开始发明出来时是用来**解决数字计算**问题的，后来人们发现，计算机还可以做更多的事，例如**文本处理**
  - 但计算机其实挺笨的，它只 “认识” 010110111000…这样由**0 和 1 两个数字组成的二进制**数字
  - 这是因为**计算机的底层硬件实现就是用电路的开和闭**两种状态来表示 0 和 1 两个数字的
  - 因此，计算机只可以直接存储和处理二进制数字

- 为了在计算机上也**能表示、存储和处理，像文字、符号等等之类的字符**，就必须将这些**字符转换成二进制**数字

  - 当然，肯定不是我们想怎么转换就怎么转换，否则就会造成同一段二进制数字在不同计算机上显示出来的字符不一样的情况，因此必须得定一个统一的、标准的转换规则

  - 文字（自然语言）--字符编码（ASCII/UTF8/GBK）--> 计算机语言 --字符解码（ASCII/UTF8/GBK）--> 文字（自然语言）

  - 详细文章：https://www.jianshu.com/p/899e749be47c

## link 元素

- link 元素是**外部资源链接**元素，规范了**文档与外部资源**的关系
  - link 元素通常是在 head 元素中
- 最常用的链接是**样式表（CSS）**
  - 此外也可以被用来创建**站点图标**（比如 “favicon” 图标）
- **link 元素常见的属性：**
  - href：此属性指定被链接资源的 URL。 URL 可以是绝对的，也可以是相对的
  - rel：指定链接类型，常见的链接类型：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Link_types
    - icon：站点图标
    - stylesheet：CSS 样式

## 认识进制

- **进制的概念：**
  - 维基百科：**进位制**是一种记数方式，亦称**进位计数法**或**位值计数法**
  - 通俗理解：当**数字达到某个值时，进一位（比如从 1 位变成 2 位）**
- 按照进制的概念，来**理解一下十进制**：
  - 当**数字到 9 的时候**，用**一位**已经**表示不了了**，那么就**进一位变成 2 位**
- 按照上面的来理解，**二进制、八进制、十六进制**：
  - <b>二进制：</b>当数字到 1 的时候，用一位已经表示不了了，那么就进一位
  - <b>八进制：</b>当数字到 7 的时候，用一位已经表示不了了，那么就进一位
  - <b>十六进制：</b>等等，用一位如何表示十六个数字呢？a(10)、b(11)、c(12) 、 d(13) 、 e(14) 、 f(15)

## 人类的十进制

- **学习编程语言，需要了解进制的概念：**
  - 我们平时使用的数字都是**十进制**的，当我写下一个数字的时候，你会**默认当做十进制**来使用
  - 从发明数字的开始，**人类就使用十进制**，原因可能是**人类正好十根手指**
  - 如果人类有**八根手指**，现在用的可能是**八进制**
- **所以说，十进制就是放之四海而皆准的常理吗？**
  - 并不见得，计算机就认为二进制、八进制、十六进制更符合自己的思维

## 计算机中的进制

- 为什么计算机更喜欢**二进制**呢?
  - 前面我们已经介绍过了为什么计算机更喜欢二进制了
  - 和其底层的原理有关系
- 如何表示二进制、八进制、十六进制?

  - 二进制（**0b 开头**, binary）：其中的数字由 0、1 组成，可以回顾之前学习过的机器语言
  - 八进制（**0o 开头**, Octonary）：其中的数字由 0~7 组成
  - 十六进制（**0x 开头**, hexadecimal）：其中的数字由 0~9 和字母 a-f 组成（大小写都可以）

- **十进制 or 二进制:**
  - 虽然计算机更喜欢二进制，但是编程中我们还是以十进制为主
  - 因为高级编程语言的目的就是更加接近自然语言，让我们人类更容易理解

## 进制之间的转换

- **十进制转其他进制：**
  - 整除，取余数
- 其他进制转十进制：
  - 比如二进制的 1001 转成十进制: 1 _ 2³ + 0 _ 2² + 0 \* 2 + 1 = 9
  - 比如八进制的 1234 转成十进制: 1 _ 8³ + 2 _ 8² + 3 \* 8 + 4 = 668
  - 比如十六进制的 522 转成十进制: 5 _ 16² + 2 _ 16 + 2 = 1314
- 二进制转八进制：
  - 三位转成一位八进制
- 二进制转十六进制：
  - 四位转成一位十六进制

## CSS 颜色的表示方法

- **在 CSS 中，颜色，有以下几种表示方法：**
  - **颜色关键字（color keywords）：**
    - 是不区分大小写的标识符，它表示一个具体的颜色
    - 可以表示哪些颜色呢？
    - https://developer.mozilla.org/zh-CN/docs/Web/CSS/color_value#%E8%AF%AD%E6%B3%95
  - **RGB 颜色：**
    - RGB 是一种色彩空间，通过 R（red，红色）、G（green，绿色）、B（blue，蓝色）三原色来组成了不同的颜色
    - 也就是通过调整这三个颜色不同的比例，可以组合成其他的颜色
    - RGB 各个原色的取值范围是 0~255

## RGB 的表示方法

- RGB 颜色可以通过以#为前缀的十六进制字符和函数（rgb()、rgba()）标记表示
- **方式一：十六进制符号：**#RRGGBB[AA]
  - R（红）、G（绿）、B （蓝）和 A （alpha）是十六进制字符（0–9、A–F）；A 是可选的
    - 比如，#ff0000 等价于#ff0000ff
- **方式二：十六进制符号：**#RGB[A]
  - R（红）、G（绿）、B （蓝）和 A （alpha）是十六进制字符（0–9、A–F）
  - 三位数符号（#RGB）是六位数形式（#RRGGBB）的减缩版
    - 比如，#f09 和#ff0099 表示同一颜色
  - 四位数符号（#RGBA）是八位数形式（#RRGGBBAA）的减缩版
    - 比如，#0f38 和#00ff3388 表示相同颜色
- **方式三：函数符：** rgb[a]（R, G, B[, A]）
  - R（红）、G（绿）、B （蓝）可以是<number>（数字），或者<percentage>（百分比），255 相当于 100%
  - A（alpha）可以是 0 到 1 之间的数字，或者百分比，数字 1 相当于 100%（完全不透明）

# 认识 CSS

- CSS 表示层叠样式表（**C**ascading **S**tyle **S**heet，简称：CSS，又称为又称**串样式列表**、**级联样式表**、**串接样式表**、**阶层式样式表**）是为网页添加**样式的代码**

- **CSS 是一种语言吗？(知道即可)**
  - MDN 解释：CSS 也不是真正的编程语言，甚至不是标记语言。它是一门样式表语言
  - 维基百科解释：是一种计算机语言，但是不算是一种编程语言

## CSS 的历史

- 早期的网页都是**通过 HTML 来编写**的，但是我们希望**HTML 页面可以更加丰富**
  - 这个时候就增加了很多**具备特殊样式的元素**：比如 i、strong、del 等等
  - 后来也有不同的浏览器**实现各自的样式语言**，但是没有统一的规划
  - 1994 年，哈肯·维姆·莱和伯特·波斯**合作设计 CSS**，在 1996 年的时候发布了**CSS1**
  - 直到 1997 年初，W3C 组织才专门**成立了 CSS 的工作组**，1998 年 5 月发布了**CSS2**
  - 在 2006~2009 非常流行 **“DIV+CSS” 布局**的方式来替代所有的 html 标签
  - 从 CSS3 开始，所有的 CSS 分成了**不同的模块（modules）**，每一个“modules”都有于 CSS2 中额外增加的功能，以及向后兼容
  - 直到 2011 年 6 月 7 日，**CSS 3 Color Module**终于发布为 W3C Recommendation
- 总结：CSS 的出现是**为了美化 HTML**的，并且让**结构（HTML）与样式（CSS）分离**
  - 美化方式一：为 HTML**添加各种各样的样式**，比如颜色、字体、大小、下划线等等
  - 美化方式二：对 HTML**进行布局**，按照某种结构显示（CSS 进行布局 – 浮动、flex、grid）

## 如何将 CSS 样式应用到元素上

- CSS 提供了 3 种方法，可以将 CSS 样式应用到元素上：
  - **内联样式**（inline style），也有人翻译成**行内样式**
  - **内部样式表**（internal style sheet）、文档样式表（document style sheet）、内嵌样式表（embed style sheet）
  - **外部样式表**（external style sheet）

## text-align

- text-align： 直接翻译过来**设置文本的对齐方式**

- MDN：定义行内内容（例如文字）如何相对**它的父元素对齐**

- W3C 中的解释：设置**行内级元素**的对齐方式

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          text-align: center;
          height: 200px;
          background-color: #c8c8c8;
          margin-bottom: 20px;
        }
        .content {
          display: inline-block;
          width: 200px;
          height: 200px;
          background-color: #000;
        }
        span {
          font-size: 30px;
          color: #fff;
        }
        img {
          height: 200px;
        }
      </style>
    </head>

    <body>
      <div class="box">
        <span>文本居中</span>
      </div>

      <div class="box">
        <img
          src="https://tenfei02.cfp.cn/creative/vcg/veer/612/veer-141061936.jpg?x-oss-process=image/format,webp"
        />
      </div>

      <div class="box">
        <div class="content"></div>
      </div>
    </body>
  </html>
  ```

## font-family

- font-family 用于设置**文字的字体名称**
  - 可以设置**1 个或者多个**字体名称
  - 浏览器会选择列表中第一个该计算机上有安装的字体，如果都没有就用浏览器默认的
  - 或者是通过 **@font-face 指定的可以直接下载的字体**

## line-height

- line-height 用于设置文本的行高

  - 行高可以先简单**理解为每一行文字所占据的高度**

- 行高的严格定义是：**两行文字基线（baseline）之间的间距**

- 基线：**与小写字母 x 最底部对齐的线**

- 行距：行高 - 文本高度

  ![](https://s3.bmp.ovh/imgs/2023/03/04/b36fcad21938047d.png)

## CSS 常见选择器

- **什么是 CSS 选择器**

  - 按照一定的规则**选出符合条件的元素**，为之添加 CSS 样式

- **选择器的种类繁多，大概可以这么归类**
  - 通用选择器（universal selector）
  - 元素选择器（type selectors）
  - 类选择器（class selectors）
  - id 选择器（id selectors）
  - 属性选择器（attribute selectors）
  - 组合（combinators）
  - 伪类（pseudo-classes）
  - 伪元素（pseudo-elements）

### 通用选择器

- 所有的元素都会被选中

- 一般用来给所有元素作一些通用性的设置

  - 比如内边距、外边距
  - 比如重置一些内容

- 效率比较低，尽量不要使用

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        * {
          font-size: 30px;
          background-color: #f00;
        }
      </style>
    </head>
    <body>
      <div>我是div元素</div>
      <p>我是p元素</p>

      <div>
        <h2>我是h2元素</h2>
        <p>我也是p元素 <span>呵呵呵呵</span></p>
      </div>
    </body>
  </html>
  ```

### 简单选择器

- **元素选择器（type selectors）**, 使用**元素的名称**
- **类选择器（class selectors）**, 使用 **.类名**
- **id 选择器（id selectors）**, 使用 **#id**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        div {
          color: red;
        }

        .box {
          color: blue;
        }

        #home {
          color: green;
        }
      </style>
    </head>
    <body>
      <div>我是div1</div>
      <div class="box">我是div2</div>
      <div id="home">我是div3</div>
    </body>
  </html>
  ```

### 属性选择器

- 拥有某一个属性 **[attribute ]**
- 属性等于某个值 **[attribute =val]**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        [title] {
          color: red;
        }
        [title="div"] {
          background-color: blue;
        }
      </style>
    </head>
    <body>
      <div>我是div元素</div>
      <div title="div">我也是div元素</div>
      <p>我是p元素</p>
      <h2 title="h2">我是h2元素</h2>
    </body>
  </html>
  ```

- **其他了解的**
  - `[attr*=val]`：属性值 包含某一个值 val
  - `[attr^=val]`：属性值 以 val 开头
  - `[attr$=val]`：属性值 以 val 结尾
  - `[attr|=val]`：属性值 等于 val 或者以 val 开头后面紧跟连接符-
  - `[attr~=val]`：属性值 包含 val, 如果有其他值必须以空格和 val 分割

### 后代选择器

- <b>后代选择器一：所有的后代（直接/间接的后代）</b>

- 选择器之间以**空格**分割

- <b>后代选择器二：直接子代选择器（必须是直接子代）</b>

- 选择器之间以 **>** 分割

```html
<!DOCTYPE html>
<html lang="zh">
  <head>
    <style>
      /* 后代选择器 */
      .home span {
        color: red;
        font-size: 30px;
      }

      /* .home的子代的span元素设置一个背景 */
      .home > span {
        background-color: green;
      }
    </style>
  </head>
  <body>
    <div class="home">
      <span>啦啦啦啦</span>
      <div class="box">
        <p>我是p元素</p>
        <span class="home-item">呵呵呵呵</span>
      </div>

      <div class="content">
        <div class="desc">
          <p>
            <span class="home-item">哈哈哈哈</span>
          </p>
        </div>
      </div>
    </div>

    <!-- 不希望被选中 -->
    <span>嘻嘻嘻</span>
    <div>
      <span>嘿嘿嘿</span>
    </div>
  </body>
</html>
```

### 兄弟选择器

- <b>兄弟选择器一：相邻兄弟选择器</b>

  - 使用符号 **+** 连接

- <b>兄弟选择器二：普遍兄弟选择器</b>

  - 使用符号 **~** 连接

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        /* .box 后面的第一个 div 元素变成红色了 */
        .box + div {
          color: red;
        }
        /* .box 后面的所有 div 元素都加粗了 */
        .box ~ div {
          font-size: 30px;
        }
      </style>
    </head>
    <body>
      <div class="home">
        <div>叽叽叽叽</div>
        <div class="box">呵呵呵呵</div>
        <div>哈哈哈哈</div>
        <div>嘻嘻嘻嘻</div>
        <div>嘿嘿嘿嘿</div>
        <p>我是p元素</p>
      </div>
    </body>
  </html>
  ```

### 交集选择器

- **交集选择器：需要同时符合两个选择器条件(两个选择器紧密连接)**

  - 在开发中通常为了**精准的选择某一个元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        div.box {
          color: red;
          font-size: 30px;
        }
      </style>
    </head>
    <body>
      <div class="box">我是div元素</div>
      <p class="box">我是p元素</p>
    </body>
  </html>
  ```

### 并集选择器

- **并集选择器：符合一个选择器条件即可(两个选择器以，号分割)**

  - 在开发中通常为了**给多个元素设置相同的样式**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        body,
        p,
        h1,
        h2 {
          color: red;
          font-size: 40px;
        }
      </style>
    </head>
    <body>
      <p>我是p元素</p>
      <h1>我是h1元素</h1>
      <h2>我是h2元素</h2>
    </body>
  </html>
  ```

### 认识伪类

- **什么是伪类呢?**
  - Pseudo-classes：翻译过来是**伪类**
  - 伪类是**选择器的一种**，它用于选择处于**特定状态的元素**
- 比如我们经常会实现的：当手指放在一个元素上时，显示另外一个颜色

#### 伪类

**常见的伪类有：**

1. **动态伪类**（dynamic pseudo-classes）
   - :link、:visited、:hover、:active、:focus
2. **目标伪类**（target pseudo-classes）
   - :target
3. **语言伪类**（language pseudo-classes）
   - :lang()
4. **元素状态伪类**（UI element states pseudo-classes）
   - :enabled、:disabled、:checked
5. **结构伪类**（structural pseudo-classes）
   - :nth-child( )、:nth-last-child( )、:nth-of-type( )、::nth-last-of-type( )
   - :first-child、:last-child、:first-of-type、:last-of-type
   - :root、:only-child、:only-of-type、:empty
6. **否定伪类**（negation pseudo-classes）
   - :not()

- 所有的伪类： https://developer.mozilla.org/zhCN/docs/Web/CSS/Pseudo-classes

##### 动态伪类

- **使用举例**
  - a:link 未访问的链接
  - a:visited 已访问的链接
  - a:hover 鼠标挪动到链接上
  - a:active 激活的链接（鼠标在链接上长按住未松开）
- **使用注意**
  - :hover 必须放在 :link 和 :visited 后面才能完全生效
  - :active 必须放在 :hover 后面才能完全生效
  - 所以建议的编写顺序是 :link、:visited、:hover、:active
- **除了 a 元素，:hover、:active 也能用在其他元素上**

##### 结构伪类

###### :nth-child

- **:nth-child(1)**

  - 是父元素中的**第 1 个子元素**

- **:nth-child(2n)**

  - n 代表任意**正整数和 0**
  - 是父元素中的第偶数个子元素（第 2、4、6、8......个）
  - 跟:nth-child(even)同义

- **:nth-child(2n + 1)**

  - n 代表任意**正整数和 0**
  - 是父元素中的第奇数个子元素（第 1、3、5、7......个）
  - 跟:nth-child(odd)同义

- **nth-child(-n + 2)**

  - 代表**前 2 个子元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        ul li:nth-child(1) {
          color: red;
        }

        ul li:nth-child(2n) {
          color: green;
        }

        ul li:nth-child(2n + 1) {
          color: blue;
        }

        ul li:nth-child(-n + 2) {
          font-size: 30px;
        }
      </style>
    </head>

    <body>
      <ul>
        <li>列表元素1</li>
        <li>列表元素2</li>
        <li>列表元素3</li>
        <li>列表元素4</li>
        <li>列表元素5</li>
        <li>列表元素6</li>
        <li>列表元素7</li>
        <li>列表元素8</li>
        <li>列表元素9</li>
        <li>列表元素10</li>
      </ul>
    </body>
  </html>
  ```

###### :nth-last-child

- :nth-last-child()的语法跟:nth-child()类似，不同点是：nth-last-child()从最后一个子元素开始往前计数

  - :nth-last-child(1)，代表倒数第一个子元素
  - :nth-last-child(-n + 2)，代表最后 2 个子元素

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        ul > li:nth-last-child(1) {
          color: red;
        }

        ul > li:nth-last-child(-n + 2) {
          font-size: 20px;
        }
      </style>
    </head>
    <body>
      <ul>
        <li>列表元素1</li>
        <li>列表元素2</li>
        <li>列表元素3</li>
        <li>列表元素4</li>
        <li>列表元素5</li>
        <li>列表元素6</li>
        <li>列表元素7</li>
        <li>列表元素8</li>
        <li>列表元素9</li>
        <li>列表元素10</li>
      </ul>
    </body>
  </html>
  ```

###### :nth-of-type

- :nth-of-type()用法跟:nth-child()类似

  - 不同点是：nth-of-type()计数时只计算**同种类型的元素**

- :nth-last-of-type()用法跟:nth-of-type()类似

  - 不同点是：nth-last-of-type()从最后一个这种类型的子元素开始往前计数

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box > div:nth-child(3) {
          color: red;
        }

        .box > div:nth-of-type(3) {
          color: blue;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <div>我是列表1</div>
        <span>我是span1</span>
        <span>我是span2</span>
        <span>我是span3</span>
        <span>我是span4</span>
        <div>我是列表2</div>
        <div>我是列表3</div>
        <div>我是列表4</div>
        <div>我是列表5</div>
        <div>我是列表6</div>
        <div>我是列表7</div>
        <div>我是列表8</div>
        <div>我是列表9</div>
        <div>我是列表10</div>
      </div>
    </body>
  </html>
  ```

##### 其他伪类

- 其他常见的伪类

  - :first-child，等同于:nth-child(1)
  - :last-child，等同于:nth-last-child(1)
  - :first-of-type，等同于:nth-of-type(1)
  - :last-of-type，等同于:nth-last-of-type(1)
  - :only-child，是父元素中唯一的子元素
  - :only-of-type，是父元素中唯一的这种类型的子元素

- 下面的伪类偶尔会使用

  - :root，根元素，就是 HTML 元素
  - :empty，代表里面完全空白的元素

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box > :first-child {
          color: red;
        }

        .box > :only-child {
          font-size: 20px;
          font-weight: 700;
        }

        .box > :only-of-type {
          color: purple;
        }

        /* html元素 */
        :root {
          font-size: 30px;
        }

        :empty {
          width: 100px;
          height: 100px;
          background-color: #f00;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <span>我是span元素</span>
        <div>列表内容1</div>
        <div>列表内容2</div>
        <div>列表内容3</div>
      </div>

      <div class="box">
        <div>我是box的div</div>
        <span>我是span元素</span>
      </div>

      <div class="box">
        <div>我是box的div</div>
        <div>我是box的div</div>
      </div>

      <div class="container"></div>
    </body>
  </html>
  ```

##### 否定伪类

- :not()的格式是:not(x)

  - x 是一个简单选择器
  - 元素选择器、通用选择器、属性选择器、类选择器、id 选择器、伪类（除否定伪类）

- :not(x)表示**除 x 以外的元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box :not(.shy) {
          color: blue;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <div class="item">列表内容1</div>
        <div class="item">列表内容2</div>
        <div class="shy">列表内容3</div>
        <div class="item">列表内容4</div>
        <div class="item">列表内容5</div>
        <div>列表内容5</div>
        <div>列表内容5</div>
        <div>列表内容5</div>
      </div>
    </body>
  </html>
  ```

#### 伪元素

- **常用的伪元素有**
  - :before、**::before**
  - :after、**::after**
- 为了区分伪元素和伪类，建议伪元素使用 2 个冒号，比如::before
- **::before 和 ::after**用来在一个元素的**内容之前或之后插入其他内容**（可以是文字、图片)
  - 常通过 **content 属性**来为一个元素添加修饰性的内容

## CSS 的属性继承

- **CSS 的某些属性具有继承性(Inherited)**

  - 如果一个**属性具备继承性**， 那么**在该元素上设置后**， 它的**后代元素都可以继承这个属性**
  - 如果**后代元素自己有设置该属性**， 那么**优先使用后代元素自己的属性**(不管继承过来的属性权重多高)

- **如何知道一个属性是否具有继承性呢?**
  - 常见的 **font-size / font-family / font-weight / line-height / color / text-align** 都具有继承性
    - 一般和**文本/字体**相关的很多属性都具备继承
  - 继承过来的是**计算值**， 而**不是设置值**

## CSS 属性的层叠

- CSS 的翻译是层叠样式表, 什么是**层叠**呢?

  - 对于一个元素来说， **相同的一个属性**我们可以**通过不同的选择器给它进行多次设置**
  - 那么属性会**被一层层覆盖上去**
  - 但是最终**只有一个会生效**

- 那么多个样式属性覆盖上去，哪一个会生效呢
  - 判断一：**选择器的权重；权重大的生效，根据权重可以判断出优先级**
  - 判断二：**先后顺序；权重相同时，后面设置的生效**

## CSS 选择器的权重

- 按照经验，为了方便比较 CSS 属性的优先级，可以给 CSS 属性所处的环境定义一个权值（权重）

  - !important：**10000**

  - 内联样式：**1000**

  - id 选择器：**100**

  - 类选择器、属性选择器、伪类：**10**

  - 元素选择器、伪元素：**1**

  - 通配符：**0**

## HTML 元素的类型

- 在前面我们会经常提到**div 是块级元素**会独占一行， **span 是行内级元素**会在同一行显示

  - 到底什么是**块级元素**，什么是**行内级元素**呢?

- HTML 定义元素类型的思路
  - **HTML 元素有很多**，比如 h 元素/p 元素/div 元素/span 元素/img 元素/a 元素等等
  - 当我们把这个元素**放到页面上**时，这个元素**到底占据页面中一行多大的空间**呢？
    - 为什么我们这里**只说一行**呢？因为垂直方向的**高度通常是内容决定**的
  - 比如一个**h1 元素的标题**，我们必然是希望**它独占一行**的，其他的内容**不应该和我的标题**放在一起
  - 比如一个**p 元素的段落**，必然也**应该独占一行**，其他的内容**不应该和我的段落**放在一起
  - 而类似于**img/span/a 元素**，通常是对**内容的某一个细节的特殊描述**，**没有必要独占一行**
- 所以, 为了区分哪些元素需要独占一行，哪些元素不需要独占一行，HTML 将元素区分（本质是通过 CSS 的）成了两类
  - **块级元素**（block-level elements）：独占**父元素的一行**
  - **行内级元素**（inline-level elements）：**多个行内级元素可以在父元素的同一行中显示**

## display

- block：让元素显示为块级元素

  - 独占父元素的一行
  - 可以随意设置宽高
  - 高度默认由内容决定

- inline：让元素显示为行内级元素
  - 跟其他行内级元素在同一行显示
  - 不可以随意设置宽高
  - 宽高由内容决定
- inline-block：让元素同时具备行内级、块级元素的特征

  - 跟其他行内级元素在同一行显示
  - 可以随意设置宽高
  - 默认宽高由内容决定

- none：隐藏元素

## 编写 HTML 时的注意事项

- 块级元素、inline-block 元素
  - 一般情况下，**可以包含其他任何元素**（比如块级元素、行内级元素、inline-block 元素）
  - 特殊情况，p 元素不能包含其他块级元素
- 行内级元素

  - 一般情况下，**只能包含行内级元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
  <head>
   <style>
    span {
      background-color: pink;
    }
    div {
      background-color: green;
    }
   </style>
  </head>
  <body>
    <!--
     <p> 123 </p>
     <div>789</div>
      456
     <p></p>
     -->
    <p>
      123
      <div>789</div>
      456
    </p>

    <span>
      123
      <div>789</div>
      456
    </span>
  </body>
  </html>
  ```

## 元素隐藏方法

- 方法一：display 设置为 none
  - 元素不显示出来，并且也不占据位置，**不占据任何空间**
- 方法二：visibility 设置为 hidden
  - 设置为 hidden，虽然元素不可见，但是**会占据元素应该占据的空间**
- 方法三：rgba 设置颜色，将 a 的值设置为 0

  - rgba 的 a 设置的是 alpha 值，可以设置透明度, **不影响子元素**

- 方法四：opacity 设置透明度，设置为 0
  - 设置整个元素的透明度，**会影响所有的子元素**

## overflow

- overflow 用于控制内容溢出时的行为

  - visible：溢出的内容照样可见

  - hidden：溢出的内容直接裁剪

    - scroll：溢出的内容被裁剪，但可以通过滚动机制查看
    - 会一直显示滚动条区域，滚动条区域占用的空间属于 width、height

  - auto：自动根据内容是否溢出来决定是否提供滚动机制

## 盒子模型

- HTML 中的每一个元素都**可以看做是一个盒子**，每个盒子由四个部分组成
  - **内容（content）** 元素的内容 width/height
  - **内边距（padding）** 元素和内容之间的间距
  - **边框（border）** 元素自己的边框
  - **外边距（margin）** 元素和其他元素之间的间距

### 内容 – 宽度和高度

- 设置内容是通过宽度和高度设置的

  - 宽度设置：width
  - 高度设置：height

- 注意：对于**行内级非替换元素**来说，设置**宽高是无效的！！！**

- 另外我们还可以设置如下属性

  - min-width： 最小宽度，无论内容多少，宽度都**大于或等于 min-width**
  - max-width：最大宽度，无论内容多少，宽度都**小于或等于 max-width**
  - **移动端适配**时，可以设置最大宽度和最小宽度

- 下面两个属性不常用
  - min-height： 最小高度，无论内容多少，高度都大于或等于 min-height
  - max-height：最大高度，无论内容多少，高度都小于或等于 max-height

### margin 的传递（父子的传递）

- margin-top 传递

  - 如果**块级元素的顶部线和父元素的顶部线重叠**，那么**这个块级元素的 margin-top 值会传递给父元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .father {
          width: 300px;
          height: 300px;
          background-color: #f00;
        }

        .son {
          width: 100px;
          height: 100px;
          background-color: #0f0;

          margin-top: 100px;
        }
      </style>
    </head>
    <body>
      <div class="father">
        <div class="son"></div>
      </div>

      <div>哈哈哈哈哈</div>
    </body>
  </html>
  ```

- margin-bottom 传递

  - 如果**块级元素的底部线和父元素的底部线重叠**，**并且父元素的高度是 auto**，那么**这个块级元素的 margin-bottom 值会传递给父元素**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .father {
          width: 300px;
          height: auto;
          background-color: #f00;
        }

        .son {
          width: 100px;
          height: 100px;
          background-color: #0f0;

          margin-bottom: 100px;
        }
      </style>
    </head>
    <body>
      <div class="father">
        <div class="son"></div>
      </div>

      <div>哈哈哈哈哈</div>
    </body>
  </html>
  ```

- 如何防止出现传递问题？

  - 给**父元素设置 padding-top\padding-bottom**
  - 给**父元素设置 border**
  - 触发 BFC：**设置 overflow 为 auto**

- 建议
  - margin 一般是用来**设置兄弟元素之间**的间距
  - padding 一般是用来**设置父子元素之间**的间距

### margin 的折叠（兄弟的折叠）

- 垂直方向上相邻的 2 个 margin（margin-top、margin-bottom）有可能会合并为 1 个 margin，这种现象叫做**collapse（折叠）**
- 水平方向上的 margin（margin-left、margin-right）永远不会 collapse

- 折叠后最终值的计算规则
  - 两个值进行比较，**取较大的值**
- 如何防止 margin collapse？

  - 只设置其中一个元素的 margin

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box1 {
          height: 100px;
          background-color: #f00;

          margin-bottom: 50px;
        }

        .box2 {
          height: 100px;
          background-color: #0f0;

          margin-top: 100px;
        }
      </style>
    </head>
    <body>
      <div class="box1"></div>
      <div class="box2"></div>
    </body>
  </html>
  ```

### margin 水平居中

- margin 设置左右两边为 auto 时有个公式

  - 父元素的宽度（1000）= 子元素的宽度（200） + margin-left（auto（400）） + margin-right （auto（400））
  - 设置 auto 让浏览器分配左右两边的值，**占满父元素的宽度**，因为**块级元素**有一个特性**独占父元素的一行**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .parent {
          width: 1000px;
          height: 500px;
          background-color: #000;
        }

        .children {
          width: 200px;
          height: 100px;
          margin: 0 auto;
          background-color: pink;
        }
      </style>
    </head>
    <body>
      <div class="parent">
        <div class="children"></div>
      </div>
    </body>
  </html>
  ```

### box-shadow

- box-shadow 属性可以设置一个或者多个阴影
  - 每个阴影用`<shadow>`表示
  - 多个阴影之间用**逗号，隔开，从前到后叠加**
- `<shadow>`的常见格式如下
  - offset-x，水平方向的偏移，正数往右偏移
  - offset-y，垂直方向的偏移，正数往下偏移
  - blur-radius，模糊半径
  - spread-radius，延伸半径
  - `<color>`：阴影的颜色，如果没有设置，就跟随 color 属性的颜色
  - inset：外框阴影变成内框阴影

### 行内非替换元素的注意事项

- 以下属性对行内级非替换元素**不起作用**

  - width、height、margin-top、margin-bottom

- 以下属性对行内级非替换元素的**效果比较特殊**

  - padding-top、padding-bottom、border-top、border-bottom

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .content {
          background-color: #f00;
          color: white;

          /* 内容: width/height(压根不生效) */
          width: 300px;
          height: 300px;

          /* 外边距: margin */
          /* 特殊: 上下的margin是不生效的 */
          /* margin: 50px; */

          /* 内边距: padding */
          /* 特殊: 上下会被撑起来, 但是不占据空间 */
          padding: 50px;

          /* 边框: border */
          /* 特殊: 上下会被撑起来, 但是不占据空间 */
          /* border: 50px solid orange; */
        }
      </style>
    </head>
    <body>
      <span class="content"> 我是span内容, 哈哈哈 </span>
      aaaaaaa
      <div>bbbbbb</div>
    </body>
  </html>
  ```

- 如果这些属性都有效果，那么在显示时候会变得很丑

### box-sizing

- box-sizing 用来设置盒子模型中宽高的计算方式

- <b>content-box：</b>W3C 标准盒子模型

  - 会把**边框**和**内边距**的值计算进来，内容区的**实际宽度**是**宽度 + 边框和内边距**的值
  - 元素的实际占用宽度 = **border + padding + 内容的宽度**

- <b>border-box：</b>IE 盒子模型（IE8 以下浏览器）

  - 会把**边框**和**内边距**的值**包含在宽度内的**，内容区的**实际宽度**是**宽度 - 边框和内边距**的值
  - 元素的实际占用宽度 = **内容的宽度**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box1 {
          box-sizing: content-box;

          width: 100px;
          height: 100px;
          background-color: #f00;

          padding: 30px;
          border: 10px solid orange;
        }

        .box2 {
          box-sizing: border-box;

          width: 100px;
          height: 100px;
          background-color: #0f0;

          padding: 30px;
          border: 10px solid purple;
        }
      </style>
    </head>
    <body>
      <div class="box1"></div>
      <div class="box2"></div>
    </body>
  </html>
  ```

## 认识 Web 字体

- 在之前我们有设置过页面使用的字体：font-family
  - 我们需要提供**一个或多个字体种类名称**，浏览器会在**列表中搜寻**，直到找到它**所运行的系统上可用的字体**
  - 这样的方式完全没有问题，但是对于传统的 web 开发人员来说，**字体选择是有限的**
  - 这就是所谓的 **Web-safe 字体**
  - 并且这种默认可选的字体并**不能进行一些定制化的需求**

### Web fonts 的工作原理

- 首先，我们需要通过一些渠道**获取到希望使用的字体**（不是开发来做的事情）

  - 对于**某些收费的字体**，我们需要获取到**对应的授权**
  - 对于某些**公司定制的字体**，需要**设计人员来设计**
  - 对于某些**免费的字体**，我们需要**获取到对应的字体文件**

- 其次，在我们的 CSS 代码当中**使用该字体**
- 用户的角度
  - 浏览器一个网页时，因为代码中有引入字体文件，**字体文件会被一起下载下来**
  - 浏览器会根据使用的字体在**下载的字体文件中查找、解析、使用对应的字体**
  - **在浏览器中使用对应的字体显示内容**

### 使用 Web Fonts

- 使用过程如下

  - 将**字体放到对应的目录**中
  - 通过<b>@font-face 来引入字体</b>，并且**设置格式**
  - 使用字体

- 注意: @font-face 用于加载一个自定义的字体

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        @font-face {
          font-family: "shy";
          src: url("./fonts/xxxx.ttf");
        }

        .box {
          font-family: "shy";
        }
      </style>
    </head>
    <body>
      <div class="box">我是div元素</div>
    </body>
  </html>
  ```

### web-fonts 的兼容性

- 我们刚才使用的字体文件是 .ttf，它是 TrueType 字体
  - 在开发中某些浏览器可能不支持该字体，所以为了浏览器的兼容性问题，我们需要有对应其他格式的字体
- TrueType 字体：拓展名是 .ttf

  - <b>OpenType/TrueType 字体：</b>拓展名是 .ttf、.otf，建立在 TrueType 字体之上
  - <b>Embedded OpenType 字体：</b>拓展名是 .eot，OpenType 字体的压缩版
  - <b>SVG 字体：</b>拓展名是 .svg、 .svgz
  - <b>WOFF 表示 Web Open Font Format web 开放字体：</b>拓展名是 .woff，建立在 TrueType 字体之上

- 这个网站来生产对应的字体文件
  - https://font.qqe2.com

### web fonts 兼容性写法

- 如果我们具备很强的兼容性，那么可以如下格式编写

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        @font-face {
          font-family: "shy";
          src: url("./fonts/xxx.eot"); /* IE9 */
          src: url("./fonts/xxx.eot?#iefix") format("embedded-opentype"), /* IE6-IE8 */
              url("./fonts/xxx.woff") format("woff"),
            /* chrome、firefox */ url("./fonts/xxx.ttf") format("truetype"), /* chrome、firefox、opera、Safari, Android, iOS 4.2+ */
              url("./fonts/xxx.svg#uxfonteditor") format("svg"); /* iOS 4.1- */
          font-style: normal;
          font-weight: 400;
        }

        body {
          font-family: "shy";
        }
      </style>
    </head>
    <body>
      <div class="box">我是div元素</div>
    </body>
  </html>
  ```

- src 用于指定字体资源

  - url 指定资源的路径
  - format 用于帮助浏览器快速识别字体的格式

## 认识字体图标

- 字体可以**设计成各式各样的形状**，那么**能不能把字体直接设计成图标的样子**呢？
  - 当然可以，这个就叫做**字体图标**
- 字体图标的好处
  - 放大不会失真
  - 可以任意切换颜色
  - 用到很多个图标时，文件相对图片较小
- 字体图标的使用

  - 登录阿里 icons（https://www.iconfont.cn/）
  - 下载代码，并且拷贝到项目中

- 字体图标的使用步骤
  - 第一步：通过 link 引入**iconfont.css**文件
  - 第二步：使用字体图标
- 使用字体图标常见的有两种方式
  - 方式一： 通过对应字体**图标的 Unicode**来显示代码
  - 方式二：利用已经编写好的 class，**直接使用即可**

## 认识精灵图 CSS Sprite

- 什么是 CSS Sprite
  - 是一种**CSS 图像合成技术**，将**各种小图片合并到一张图片上**，然后**利用 CSS 的背景定位来显示对应的图片部分**
  - 有人翻译为：**CSS 雪碧、CSS 精灵**
- 使用 CSS Sprite 的好处

  - 减少网页的**http 请求数量**，**加快网页响应速度**，**减轻服务器压力**
  - 减小**图片总大小**
  - 解决了**图片命名的困扰**，只需要针对一张集合的图片命名

- Sprite 图片制作（雪碧图、精灵图）
  - 方法 1：Photoshop，设计人员提供
  - 方法 2：https://www.toptal.com/developers/css/sprite-generator

### 精灵图的使用

- 精灵图如何使用呢?
  - 精灵图的原理是**通过只显示图片的很小一部分来展示**的
  - 通常使用背景
    - 设置对应元素的宽度和高度
    - 设置精灵图作为背景图片
    - 调整背景图片的位置来展示
- 如何获取精灵图的位置
  - http://www.spritecow.com

## cusor

- cursor 可以设置鼠标指针（光标）在元素上面时的显示样式
- cursor 常见的设值有
  - auto：浏览器根据上下文决定指针的显示样式，比如根据文本和非文本切换指针样式
  - default：由操作系统决定，一般就是一个小箭头
  - pointer：一只小手，鼠标指针挪动到链接上面默认就是这个样式
  - text：一条竖线，鼠标指针挪动到文本输入框上面默认就是这个样式
  - none：没有任何指针显示在元素上面

## CSS 样式的字符编码

- 之前我们有制定过 HTML 页面的编码，但是并没有制定 CSS 样式的编码

  - 那么 CSS 样式的字符编码会按照什么规则来使用呢？

- 在样式表中有多种方法去声明字符编码，浏览器会按照以下顺序尝试下边的方法（一旦找到就停止并得出结果）

  - 文件的开头的 Unicode byte-order（字节顺序标记） 字符值
    - https://en.wikipedia.org/wiki/Byte_order_mark
  - 由 Content-Type：HTTP header 中的 charset 属性给出的值或用于提供样式表的协议中的等效值

  - CSS @ 规则 @charset
  - 使用参考文档定义的字符编码： `<link>` 元素的 charset 属性
    - 该方法在 HTML5 标准中已废除，无法使用
  - 假设文档是 UTF-8

- 开发中推荐在 CSS 的开头编写 @charset 指定编码

  ```css
  @charset "UTF-8";
  ```

## CSS 元素定位

### 标准流（Normal Flow）

- 默认情况下，元素都是按照<b>normal flow（标准流、常规流、正常流、文档流【document flow】）</b>进行排布
  - **从左到右、从上到下**按顺序摆放好
  - 默认情况下，**互相之间不存在层叠现象**

### 认识元素的定位

- 定位允许您从**正常的文档流布局中取出元素**，并使它们具有不同的行为
  - 例如**放在另一个元素的上面**
  - 或者**始终保持在浏览器视窗内的同一位置**

### 相对定位 - relative

- 元素按照**文档流**布局
- 可以通过**left、right、top、bottom**进行定位
- 定位**参照对象**是元素**自己原来的位置**

- 相对定位的应用场景

  - 在**不影响其他元素位置的前提**下，对**当前元素位置进行微调**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        div {
          font-size: 20px;
        }

        span {
          font-size: 12px;
          position: relative;
          bottom: 8px;
        }
      </style>
    </head>
    <body>
      <div>3<span>2</span> + 2<span>3</span> = 17</div>
    </body>
  </html>
  ```

### 绝对定位 - absolute

- 元素**脱离文档流**

- 可以通过**left、right、top、bottom**进行定位

  - 定位参照对象是**最近的定位祖先元素**
  - 如果**找不到这样的祖先元素，参照对象是视口（文档的可视区域）**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .container {
          width: 800px;
          height: 800px;
          background-color: #f00;

          position: relative;
        }

        .box {
          width: 500px;
          height: 500px;
          background-color: #0f0;

          position: absolute;
          right: 0;
          bottom: 0;
        }

        strong {
          position: absolute;
          left: 0;
          bottom: 0;
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="box">
          <span>我是span元素</span>
          <strong>我是strong元素</strong>
          <div>我是div元素</div>
        </div>
      </div>
    </body>
  </html>
  ```

### 固定定位 - fixed

- 元素**脱离文档流**
- 可以通过**left、right、top、bottom**进行定位
  - 定位**参照对象**是**视口（文档的可视区域）**
- 当页面滚动时，固定不动

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .handle {
          position: fixed;
          right: 30px;
          bottom: 30px;
        }

        .handle .item {
          width: 80px;
          height: 40px;
          text-align: center;
          line-height: 40px;
          background-color: brown;
          color: #fff;
          border-radius: 8px;
          cursor: pointer;
        }

        .handle .item:hover {
          background-color: red;
        }

        .top {
          margin-bottom: 10px;
        }
      </style>
    </head>

    <body>
      <div class="handle">
        <div class="item top">顶部</div>
        <div class="item bottom">反馈</div>
      </div>
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
      <br /><br /><br /><br /><br />
    </body>
  </html>
  ```

### absolute/fixed 元素的特点（一）

- 可以随意设置宽高

```html
<!DOCTYPE html>
<html lang="zh">
  <head>
    <style>
      span {
        position: absolute;
        width: 200px;
        height: 200px;
        background-color: #0f0;
      }
    </style>
  </head>
  <body>
    <span>我是span元素</span>
  </body>
</html>
```

- 宽高默认由内容决定

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          position: absolute;
          background-color: #0f0;
        }
      </style>
    </head>
    <body>
      <div class="box">我是box元素</div>
    </body>
  </html>
  ```

- 不再受文档流的约束

  - 不再**严格按照从上到下、从左到右**排布
  - 不再**严格区分块级(block)、行内级(inline)，行内块级(inline-block)的很多特性**都会消失

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box span {
          position: absolute;
          top: 150px;
          left: 150px;
          width: 200px;
          height: 200px;
          background-color: #0f0;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <span>我是span元素</span>
        <strong>我是strong元素</strong>
      </div>
    </body>
  </html>
  ```

- 不再给父元素汇报宽高数据

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          background-color: #f00;
        }

        .box span {
          /* 没加 position: absolute 时，父元素高度是由内容撑起的 */
          position: absolute;
          background-color: #0f0;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <span>我是span元素</span>
      </div>
    </body>
  </html>
  ```

### absolute/fixed 元素的特点（二）

- 绝对定位元素（absolutely positioned element）

  - position 值为**absolute**或者**fixed**的元素

- 对于绝对定位元素来说

  - 定位参照对象的宽度 = left + right + margin-left + margin-right + 绝对定位元素的实际占用宽度
  - 定位参照对象的高度 = top + bottom + margin-top + margin-bottom + 绝对定位元素的实际占用高度

- 如果希望绝对定位元素在定位参照对象中居中显示，可以给绝对定位元素设置以下属性

  - left: 0、right: 0、top: 0、bottom: 0、margin: auto
  - 另外，还得**设置具体的宽高值**（宽高小于定位参照对象的宽高）

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          width: 800px;
          height: 300px;
          background-color: #f00;
          position: relative;
        }

        .container {
          width: 200px;
          height: 100px;
          background-color: #0f0;

          position: absolute;
          left: 0;
          right: 0;
          top: 0;
          bottom: 0;
          margin: auto;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <div class="container"></div>
      </div>
    </body>
  </html>
  ```

### auto 到底是什么?

- 800 = 200 + margin-left（0）+ margin-right（0）+ left（0）+ right（0）
- auto -> 交给浏览器你来处理
- width: auto
  - 行内非替换元素 width：包裹内容
  - 块级元素 width：包含块的宽度
  - 绝对定位元素 width：包裹内容

### 粘性定位 - sticky

- 另外还有一个定位的值是**position: sticky**，比起**其他定位值要新一些**

  - 可以看做是**相对定位和固定(绝对)定位的结合体**
  - 它允许被定位的元素**表现得像相对定位一样**，直到它滚动到某个阈值点
  - 当**达到这个阈值点**时，就会**变成固定(绝对)定位**

- 最近的祖先滚动容器的滚动视口的

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          width: 500px;
          height: 500px;
          margin: 100px auto 0;
          overflow: scroll;
          background-color: #ccc;
        }

        .nav {
          background-color: #f00;
          color: #fff;
          position: sticky;
          top: 0;
        }

        ul {
          padding: 0;
          margin: 0;
        }

        ul li {
          list-style: none;
          height: 100px;
          line-height: 100px;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <h1>我是标题</h1>
        <div class="nav">
          <span>电脑</span>
          <span>手机</span>
          <span>衣服</span>
          <span>鞋子</span>
        </div>
        <ul>
          <li>电脑列表1</li>
          <li>电脑列表2</li>
          <li>电脑列表3</li>
          <li>电脑列表4</li>
          <li>电脑列表5</li>
          <li>电脑列表6</li>
          <li>电脑列表7</li>
          <li>电脑列表8</li>
          <li>电脑列表9</li>
          <li>电脑列表10</li>
        </ul>
      </div>
    </body>
  </html>
  ```

### z-index

- z-index 属性用来设置定位元素的<b>层叠顺序（仅对定位元素有效）</b>
  - 取值可以是**正整数、负整数、0**
- 比较原则

  - 如果是**兄弟关系**
    - z-index 越大，**层叠在越上面**
    - z-index 相等，**写在后面的那个元素层叠在上面**
  - 如果**不是兄弟关系**
    - 各自从**元素自己**以及**祖先元素**中，找出**最近的 2 个定位元素**进行**比较**
    - 而且**这 2 个定位元素必须有设置 z-index 的具体数值**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .children {
          width: 200px;
          height: 100px;
          background-color: pink;
          position: absolute;
          z-index: 1;
        }

        .box {
          width: 200px;
          height: 100px;
          background-color: blueviolet;
          position: absolute;
        }
      </style>
    </head>
    <body>
      <!--  body
        parent   box
        children
        -->
      <div class="parent">
        <div class="children"></div>
      </div>
      <div class="box"></div>
    </body>
  </html>
  ```

## CSS 元素浮动

### 认识浮动

- float 属性可以指定一个元素**沿其容器**的**左侧**或**右侧**放置，允许**文本和内联元素环绕它**

  - float 属性最初只用于在一段文本内**浮动图像，实现文字环绕的效果（图文环绕）**
  - 但是早期的 CSS 标准中并没有提供好的**左右布局方案**，因此在一段时间里面它成为**网页多列布局的最常用方法**

- **绝对定位、浮动**都会让元素**脱离标准流**，以达到灵活布局的效果

- float 的常用取值
  - none：不浮动，默认值
  - left：向左浮动
  - right：向右浮动

### 浮动规则一、二

- 元素一旦浮动后，脱离标准流

  - **朝着向左或向右方向移动**，直到**自己的边界紧贴着包含块**（一般是父元素）或者**其他浮动元素的边界**为止
  - **定位元素会层叠在浮动元素上面**
  - 定位元素 > 浮动元素 > 非定位元素

- 如果元素是向左浮动，浮动元素的左边界**不能超出包含块的左边界**（向右也是同理）

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          width: 200px;
          height: 200px;
          background-color: orange;
          margin: 0 auto;
        }

        .item1,
        .item2 {
          background-color: #f00;
        }

        .item1 {
          /* 脱离标准流 */
          float: left;
          background-color: #0f0;
        }

        .item2 {
          float: right;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <div class="item1">1</div>
        <div class="item2">2</div>
      </div>
    </body>
  </html>
  ```

### 浮动规则三

- 浮动元素之间不能层叠

  - 如果一个元素浮动，另一个浮动元素已经在那个位置了，后浮动的元素将紧贴着前一个浮动元素（左浮找左浮，右浮找右浮）
  - 如果水平方向剩余的空间不够显示浮动元素，浮动元素将向下移动，直到有充足的空间为止

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .container {
          width: 500px;
          height: 500px;
          background-color: orange;
        }

        .item {
          width: 100px;
          height: 100px;
          background-color: #f00;
          float: left;
        }

        .box1 {
          background-color: #0f0;
        }

        .box4 {
          width: 220px;
          height: 100px;
          background-color: purple;
        }
      </style>
    </head>
    <body>
      <!-- 浮动元素之间不能层叠 -->
      <div class="container">
        <div class="item box1">1</div>
        <div class="item box2">2</div>
        <div class="item box3">3</div>

        <div class="item box4">4</div>
      </div>
    </body>
  </html>
  ```

### 浮动规则四

- 浮动元素不能与行内级内容层叠，**行内级内容将会被浮动元素推出**

  - 比如行内级元素、inline-block 元素、块级元素的文字内容

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          width: 1000px;
          height: 400px;
          background-color: orange;
        }

        .box span {
          margin-right: 10px;
        }

        .box .No-2 {
          float: left;
        }
      </style>
    </head>
    <body>
      <div class="box">
        <span>No.1</span>
        <span class="No-2">No.2</span>
        <span>No.3</span>
        <span>No.4</span>
      </div>
    </body>
  </html>
  ```

### 浮动规则五

- 行内级元素、inline-block 元素浮动后，**其顶部将与所在行的顶部对齐**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          width: 300px;
          background: orange;
        }

        .box span {
          float: left;
          background-color: #0f0;
        }

        .box img {
          width: 100px;
        }
      </style>
    </head>
    <body>
      <div class="box">
        中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，
        中国<span>上海市</span>，
        <img
          src="https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
        />
        中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市，中国上海市
      </div>
    </body>
  </html>
  ```

### 空隙的解决方案

- 换行符，浏览器给解析成像空格一样的东西了，所以才产生了缝隙

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .box {
          /* 2. font-size: 0; */
          /* 4. display: flex; */
        }

        span {
          background-color: orange;
          /* 2. font-size: 16px; */
          /* 3. float: left; */
        }
      </style>
    </head>
    <body>
      <!-- 
      将多个行内级元素中间的空格(间隙)去除的方法
        1. 删除换行符(不推荐)
        2. 将父级元素的font-size设置为0, 但是需要子元素设置回来
        3. 通过子元素(span)统一向一个方向浮动即可
        4. flex布局
      -->
      <div class="box">
        <span>aaa</span>
        <span>bbb</span>
        <span>ccc</span>
      </div>
    </body>
  </html>
  ```

### 浮动的问题 – 高度塌陷

- 由于浮动元素脱离了文档流，变成了脱标元素，所以**不再向父元素汇报高度**，父元素**计算总高度**时，就**不会计算浮动元素的高度**，导致了**高度坍塌**的问题
- 解决父元素高度坍塌问题的过程，一般叫做**清浮动（清理浮动、清除浮动）**
- 清浮动的目的是：让**父元素计算高度的时候**，把**浮动元素的高度计算进去**

#### 清除浮动的方法

- 方法一：给父元素设置固定高度，扩展性不好，不推荐
- 方法二：在父元素最后增加一个空的块级子元素，并且让它设置 clear: both
  - 会**增加很多无意义的空标签**，维护麻烦
  - 违反了结构与样式分离的原则
- 方法三：给父元素添加一个伪元素 **（推荐）**

#### clear

- clear 属性是做什么的呢？

  - clear 属性可以指定一个元素**必须移动到在它之前的浮动元素**下面

- clear 的常用取值

  - left：要求元素的顶部低于之前生成的所有左浮动元素的底部
  - right：要求元素的顶部低于之前生成的所有右浮动元素的底部
  - both：要求元素的顶部低于之前生成的所有浮动元素的底部
  - none：默认值，无特殊要求

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .content {
          width: 1200px;
          margin: 0 auto;
          background: #f00;
        }

        .item {
          width: 290px;
          height: 180px;
          background-color: purple;
          margin-bottom: 10px;
          margin-right: 10px;

          float: left;
        }

        /* 其他的内容 */
        .other {
          height: 100px;
          background: #0f0;
        }

        /* 解决办法一 */
        .line {
          clear: both;
        }

        /* 最终的解决方案 */
        .clear_fix::after {
          content: "";
          clear: both;
          display: block;

          /* 浏览器兼容 */
          visibility: hidden;
          height: 0;
        }

        .clear_fix {
          /* IE6/7 */
          *zoom: 1;
        }
      </style>
    </head>
    <body>
      <!-- 因为所有的后代item元素都是浮动的, 脱离了文档流 -->
      <!-- 不会向父元素汇报高度, 那么content元素压根就没有高度 -->
      <div class="content">
        <div class="wrapper clear_fix">
          <div class="item left"></div>
          <div class="item left"></div>
          <div class="item right"></div>
          <div class="item right"></div>
          <div class="item right"></div>
          <div class="item right"></div>

          <!-- <div class="line"></div> -->
        </div>
      </div>

      <!-- 我认为content没有高度, 那么我就会直接在上面显示 -->
      <div class="other"></div>
    </body>
  </html>
  ```

## CSS Flex 布局

### 认识 flexbox

- Flexbox 翻译为弹性盒子

  - **弹性盒子**是一种用于**按行或按列布局元素**的**一维布局方法**
  - 元素可以**膨胀以填充额外的空间**，**收缩以适应更小的空间**
  - 通常我们使用 Flexbox 来进行布局的方案称之为**flex 布局（flex layout）**

- flex 布局是目前 web 开发中使用最多的布局方案

  - flex 布局（Flexible 布局，弹性布局）
  - 目前特别在**移动端**可以说已经完全普及
  - 在**PC 端**也几乎已经完全普及和使用，只有**非常少数的网站依然在用浮动来布局**

- 为什么需要 flex 布局呢？
  - 长久以来，CSS 布局中唯一可靠且跨浏览器兼容的**布局工具只有 float 和 position**
  - 但是这两种方法本身**存在很大的局限性**，并且他们用于布局实在是无奈之举

### 原先的布局存在的痛点

- 原来的布局存在哪些痛点呢？举例说明
  - 比如在父内容里面**垂直居中一个块内容**
  - 比如使容器的**所有子项等分可用宽度/高度，而不管有多少宽度/高度可用**
  - 比如使**多列布局中的所有列采用相同的高度**，即使**它们包含的内容量不同**

### flex 布局的重要概念

- 两个重要的概念

  - 开启了 flex 布局的元素叫 **flex container**
  - flex container 里面的直接子元素叫做 **flex item**

- 当 flex container 中的子元素变成了 flex item 时，具备一下特点

  - flex item 的布局将**受 flex container 属性的设置来进行控制和布局**
  - flex item **不再严格区分块级元素和行内级元素**
  - flex item **默认情况下是包裹内容的**，**但是可以设置宽度和高度**

- 设置 display 属性为 flex 或者 inline-flex 可以成为 flex container

  - flex：flex container 以 **block-level** 形式存在
  - inline-flex：flex container 以 **inline-level** 形式存在

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/01-container.svg" style="width:50%;" />

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/02-items.svg" style="width:50%;" />

### flex 布局的模型

- main axis：主轴

- cross axis：交叉轴

  <img src="https://css-tricks.com/wp-content/uploads/2018/11/00-basic-terminology.svg" style="width:50%;" />

### flex 相关的属性

- 应用在 **flex container** 上的 CSS 属性
  - flex-flow
  - flex-direction
  - flex-wrap
  - flex-flow
  - justify-content
  - align-items
  - align-content
- 应用在 **flex items** 上的 CSS 属性
  - flex-grow
  - flex-basis
  - flex-shrink
  - order
  - align-self
  - flex

### flex container

#### flex-direction

- flex items 默认都是沿着 main axis（主轴）从 main start 开始往 main end 方向排布

  - flex-direction 决定了 **main axis** 的方向，有 4 个取值
  - row（默认值）、row-reverse、column、column-reverse

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/flex-direction.svg" style="width:50%;" />

#### flex-wrap

- flex-wrap 决定了 flex container 是单行还是多行

  - nowrap（默认）：单行
  - wrap：多行
  - wrap-reverse：多行（对比 wrap，cross start 与 cross end 相反）

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/flex-wrap.svg" style="width:50%;" />

#### flex-flow

- flex-flow 属性是 flex-direction 和 flex-wrap 的简写
  - 顺序任何，并且都可以省略

#### justify-content

- justify-content 决定了 flex items 在 main axis 上的对齐方式

  - flex-start（默认值）：与 main start 对齐
  - flex-end：与 main end 对齐
  - center：居中对齐
  - space-between
    - flex items 之间的距离相等
    - 与 main start、main end 两端对齐
  - space-around
    - flex items 之间的距离相等
    - flex items 与 main start、main end 之间的距离是 flex items 之间距离的一半
  - space-evenly
    - flex items 之间的距离相等
    - flex items 与 main start、main end 之间的距离 等于 flex items 之间的距离

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/justify-content.svg" style="width:50%;" />

#### align-item

- align-items 决定了 flex items 在 cross axis 上的对齐方式

  - normal：在弹性布局中，效果和 stretch 一样
  - stretch：当 flex items 在 cross axis 方向的 size 为 auto 时，会自动拉伸至填充 flex container
  - flex-start：与 cross start 对齐
  - flex-end：与 cross end 对齐
  - center：居中对齐
  - baseline：与基准线对齐

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/align-items.svg" style="width:50%;" />

#### align-content

- align-content 决定了多行 flex items 在 cross axis 上的对齐方式，用法与 justify-content 类似

  - stretch（默认值）：与 align-items 的 stretch 类似
  - flex-start：与 cross start 对齐
  - flex-end：与 cross end 对齐
  - center：居中对齐
  - space-between
    - flex items 之间的距离相等
    - 与 cross start、cross end 两端对齐
  - space-around
    - flex items 之间的距离相等
    - flex items 与 cross start、cross end 之间的距离是 flex items 之间距离的一半
  - space-evenly
    - flex items 之间的距离相等
    - flex items 与 cross start、cross end 之间的距离 等于 flex items 之间的距离

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/align-content.svg" style="width:50%;" />

### flex item

#### order

- order 决定了 flex items 的排布顺序

  - 可以设置**任意整数**（正整数、负整数、0），**值越小就越排在前面**
  - 默认值是 0

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/order.svg" style="width:50%;" />

#### align-self

- flex items 可以通过 align-self 覆盖 flex container 设置的 align-items

  - auto（默认值）：遵从 flex container 的 align-items 设置
  - stretch、flex-start、flex-end、center、baseline，效果跟 align-items 一致

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/align-self.svg" style="width:50%;" />

#### flex-grow

- flex-grow 决定了 flex items 如何扩展(拉伸/成长)

  - 可以设置**任意非负数字（正小数、正整数、0），默认值是 0**
  - 当 flex container 在 main axis 方向上**有剩余 size** 时，**flex-grow 属性才会有效**

- 如果所有 flex items 的 flex-grow **总和超过 1**，每个 flex item 扩展的 size 为

  - flex container 的剩余 size \* flex-grow / sum（总和）

- flex items 扩展后的最终 size 不能超过 max-width\max-height

  <img src="https://css-tricks.com/wp-content/uploads/2018/10/flex-grow.svg" style="width:50%;" />

#### flex-shrink

- flex-shrink 决定了 flex items 如何收缩(缩小)
  - 可以设置**任意非负数字（正小数、正整数、0），默认值是 1**
  - 当 flex items 在 main axis 方向上**超过了 flex container 的 size，flex-shrink 属性才会有效**
- 如果所有 flex items 的 flex-shrink 总和超过 1，每个 flex item 收缩的 size 为
  - flex items 超出 flex container 的 size \* 收缩比例 / 所有 flex items 的收缩比例之和
- flex items 收缩后的最终 size 不能小于 min-width\min-height

#### flex-basis

- flex-basis 用来设置 flex items 在 main axis 方向上的 base size
  - **auto**（默认值）、**具体的宽度数值**（100px）
- 决定 flex items 最终 base size 的因素，从优先级高到低
  - max-width\max-height\min-width\min-height
  - flex-basis
  - width\height
  - 内容本身的 size

#### flex

- flex 是 flex-grow || flex-shrink || flex-basis 的简写，flex 属性可以指定 1 个，2 个或 3 个值
- 单值语法：值必须为以下其中之一
  - 一个无单位数：它会被当作 flex-grow 的值
  - 一个有效的宽度值：它会被当作 flex-basis 的值
  - 关键字 none，auto 或 initial
    - flex-grow - flex-shrink - flex-basis
    - none：0 - 0 - auto
    - auto： 1 - 1 - auto
- 双值语法：第一个值必须为一个无单位数，并且它会被当作 flex-grow 的值
  - 第二个值必须为以下之一
    - 一个无单位数：它会被当作 flex-shrink 的值
    - 一个有效的宽度值：它会被当作 flex-basis 的值
- 三值语法
  - 第一个值必须为一个无单位数，并且它会被当作 flex-grow 的值
  - 第二个值必须为一个无单位数，并且它会被当作 flex-shrink 的值
  - 第三个值必须为一个有效的宽度值， 并且它会被当作 flex-basis 的值
- 添加元素的个数是**列数减 - 2**

## transform

- CSS transform 属性允许对某一个元素进行某些形变，包括**旋转，缩放，倾斜或平移等**

- 注意事项，并非所有的盒子都可以进行 transform 的转换（通常**行内级元素**不能进行形变）
- 所以，transform 对于**行内级非替换元素**是无效的
  - 比如对 span、a 元素等

### translate

- 平移：translate(x, y)
  - 这个 CSS 函数用于移动元素在平面上的位置
  - translate 本身可以表示翻译的意思，在物理上也可以表示平移
- 值个数
  - 一个值时，设置 x 轴上的位移
  - 二个值时，设置 x 轴和 y 轴上的位移
- 值类型
  - 数字：100px
  - 百分比：参照元素本身

### scale

- 缩放：scale(x, y)

  - 这个 CSS 函数可改变元素的大小

- 值个数

  - 一个值时，设置 x 轴上的缩放
  - 二个值时，设置 x 轴和 y 轴上的缩放

- 值类型

  - 数字

    - 1：保持不变
    - 2：放大一倍
    - 0.5：缩小一半

  - 百分比：百分比不常用

### rotate

- 旋转：rotate(angle)
- 一个值：表示旋转的角度
- 值类型
  - 常用单位 deg：旋转的角度（ degrees ）
  - 正数为顺时针
  - 负数为逆时针

### transform-origin

- transform-origin：形变的原点
  - 比如在进行 scale 缩放或者 rotate 旋转时，都会有一个原点
- 值个数
  - 一个值，设置 x 轴的原点
  - 两个值，设置 x 轴和 y 轴的原点
- 必须是**具体值/百分百**，或 left, center, right, top, bottom 关键字中的一个

  - left, center, right, top, bottom 关键字
  - 具体值：从左上角开始计算
  - 百分比：参考元素本身大小

- 默认值：50%,50%

### skew

- 倾斜：skew(x, y)
  - 函数定义了一个元素在二维平面上的倾斜转换
- 值个数
  - 一个值时，表示 x 轴上的倾斜
  - 二个值时，表示 x 轴和 y 轴上的倾斜
- 值类型
  - deg：倾斜的角度
  - 正数为顺时针
  - 负数为逆时针
- 注意：倾斜的原点受 transform-origin 的影响

## 认识 transition 动画

- 什么是 transition 动画呢？
  - CSS transitions 提供了一种在更改**CSS 属性**时控**制动画速度的方法**
  - 可以让 CSS 属性变化成为一个**持续一段时间的过程**，而**不是立即生效**的
  - 比如将一个元素从**一个位置移动到另外一个位置**，默认在修改完 CSS 属性后会立即生效
  - 但是我们可以通过 CSS transition，让**这个过程加上一定的动画效果**，包括**一定的曲线速率变化**
- 通常将两个状态之间的过渡称为隐式过渡（implicit transitions），因为开始与结束之间的状态**由浏览器决定**
- CSS transitions 可以决定
  - 哪些属性发生动画效果 (明确地列出这些属性)
  - 何时开始 (设置 delay）
  - 持续多久 (设置 duration)
  - 如何动画 (定义 timing function，比如匀速地或先快后慢)

### 哪些 CSS 属性可以做动画呢？

- 并非所有的 CSS 属性都可以执行动画的，那么我们如何知道哪些属性支持动画呢？
- 方法一：在 MDN 可**执行动画的 CSS 属性**中查询
  - https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_animated_properties
- 方法二：阅读 CSS 属性的文档说明

### 过渡动画 - transition

- transition CSS 属性是 transition-property，transition-duration，transition-timing-function 和 transition-delay 的一个简写属性
- transition-property：指定应用过渡属性的名称
  - all：所有属性都执行动画
  - none：所有属性都不执行动画
  - CSS 属性名称：要执行动画的 CSS 属性名称，比如 width、left、transform 等
- transition-duration：指定过渡动画所需的时间
  - 单位可以是秒（s）或毫秒（ms）
- transition-timing-function：指定动画的变化曲线
  - https://developer.mozilla.org/zh-CN/docs/Web/CSS/transition-timing-function
- transition-delay：指定过渡动画执行之前的等待时间

## 认识 CSS Animation

- 之前我们学习了 transition 来进行过渡动画，但是过渡动画有如下的缺点

  - transition**只能定义开始状态和结束状态**，不能定义中间状态，也就是说只有两个状态
  - transition**不能重复执行**，除非一再触发动画
  - transition 需要在**特定状态下会触发才能执行**，比如某个属性被修改了

- 如果我们希望可以有更多状态的变化，我们可以使用 CSS Animation
- CSS Animation 的使用分成两个步骤
  - 步骤一：使用 keyframes 定义动画序列（每一帧动画如何执行）
  - 步骤二：配置动画执行的名称、持续时间、动画曲线、延迟、执行次数、方向等等

### @keyframes 规则

- 可以使用@keyframes 来定义多个变化状态，并且使用 animation-name 来声明匹配
  - 关键帧使用**percentage**来指定动画发生的时间点
  - <b>0%</b>表示动画的第一时刻，<b>100%</b>表示动画的最终时刻
  - 因为这两个时间点十分重要，所以还有特殊的别名：**from**和**to**
- 也就是说可以使用 from 和 to 关键字
  - from 相当于 0%
  - to 相当于 100%

### animation 属性

- CSS animation 属性是 animation-name，animation-duration, animation-timing-function，animation-delay，animationiteration-count，animation-direction，animation-fill-mode 和 animation-play-state 属性的一个简写属性形式

  - animation-name：指定执行哪一个关键帧动画

  - animation-duration：指定动画的持续时间

  - animation-timing-function：指定动画的变化曲线

  - animation-delay：指定延迟执行的时间

  - animation-iteration-count：指定动画执行的次数，执行 infinite 表示无限动画

  - animation-direction：指定方向，常用值 normal 和 reverse

    - animation-fill-mode：执行动画最后保留哪一个值
      - none：回到没有执行动画的位置
      - forwards：动画最后一帧的位置
      - backwards：动画第一帧的位置

  - animation-play-state：指定动画运行或者暂停（在 JavaScript 中使用，用于暂停动画）

## vertical-align

- 官方文档的翻译：vertical-align 会影响 **行内（块）级元素** 在一个 **行盒** 中垂直方向的位置

### line boxes（行盒）

- 一个 div 没有设置高度的时候，会不会有高度？
  - 没有内容，没有高度
  - 有内容，内容撑起来高度
- 但是内容撑起来高度的本质是什么呢？
  - 内容由行高（line-height），撑起来了 div 的高度
- 行高为什么可以撑起 div 的高度？
  - 这是因为**line boxes**的存在，并且 line-boxes 有一个特性，**包裹每行的内容**
  - 而其中的文字是有行高的，必须将整个行高包裹进去

### 不同情况分析

- 情况一：只有文字时，line boxes 如何包裹内容？

  - **行盒包裹内容，文字的 bottom-line 和行盒底部对齐**

- 情况二：有图片，文字，line-boxes 如何包裹内容？

  - **图片的底部 对齐 文字的 baseline**

- 情况三：有图片，文字，inline-block（比图片要大）如何包裹内容？

  - **图片的底部 和 行内块的底部 对齐 文字的 baseline**

- 情况四：有图片，文字，inline-block（比图片要大）而且设置了 margin-bottom 如何包裹内容？

  - **图片的底部 和 行内块的 margin-bottom 底部 对齐 文字的 baseline**

- 情况五：有图片、文字、inline-block（比图片要大）而且设置了 margin-bottom 并且有文字，如何包裹内容？

  - **文字的基线 和 图片的底部 对齐 行内块最后一行文字的 baseline**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        body {
          margin: 0;
          padding: 0;
        }

        .box {
          background-color: orange;
          margin-bottom: 20px;
        }

        img {
          width: 100px;
        }

        span {
          display: inline-block;
          width: 200px;
          height: 200px;
          background-color: #f00;
        }

        .box4 span {
          margin-bottom: 20px;
        }
      </style>
    </head>
    <body>
      <div class="box">div元素中的文本</div>

      <div class="box">
        <img
          src="https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
        />
        div元素中的文本
      </div>

      <div class="box">
        <img
          src="https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
        />
        div元素中的文本
        <span></span>
      </div>

      <div class="box box4">
        <img
          src="https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
        />
        div元素中的文本
        <span></span>
      </div>

      <div class="box box4">
        <img
          src="https://scpic.chinaz.net/files/pic/pic9/202009/apic27858.jpg"
        />
        div元素中的文本
        <span>span元素中的文本xxqg</span>
      </div>
    </body>
  </html>
  ```

### baseline

- 结论：line-boxes 一定会想办法包裹住**当前行中所有的内容**
- 但是，但是为什么对齐方式千奇百怪呢？
  - 你认为的千奇百怪，其实有它的内在规律
  - 答案就是 **baseline** 对齐
- 我们来看官方 vertical-align 的**默认值**就是**baseline**

- 但是 baseline 都是谁呢？

  - 文本的 baseline 是字母 x 的下方
  - Inline-block 默认的 baseline 是 margin-bottom 的底部（没有，就是盒子的底部）
  - Inline-block 有文本时，baseline 是最后一行文本的 x 的下方

  ![](https://s3.bmp.ovh/imgs/2023/03/04/b36fcad21938047d.png)

### vertical-align 的其他值

- 现在，对于不同的取值就非常容易理解了

- 基线：**小写字母 x 最底部对齐的线**

  - baseline（默认值）：基线对齐

  - top：把行内级盒子的顶部跟 line boxes 顶部对齐

  - middle：行内级盒子的中心点与父盒子**基线减去 x 高度一半的线**对齐

  - bottom：把行内级盒子的底部跟 line box 底部对齐

- 解决图片下边缘的间隙方法

  - 原因

    - 是因为 vertical-align 默认值是 baseline 基线对齐
    - 而基线是小写字母 x 最底部的线，有些字母（q，g，p）超出了基线，但是**行盒必须包裹所有的内容**
    - 所以就往行盒下面多加了一点像素

  - 方法一：vertical-align 设置成 top/middle/bottom
  - 方法二：将图片设置为 block 元素

## white-space

- white-space 用于设置空白处理和换行规则
  - normal：合并所有连续的空白，**允许**单词超屏时自动换行
  - nowrap：合并所有连续的空白，**不允许**单词超屏时自动换行
  - pre：**阻止**合并所有连续的空白，**不允许**单词超屏时自动换行
  - pre-wrap：**阻止**合并所有连续的空白，**允许**单词超屏时自动换行
  - pre-line：合并所有连续的空白（但保留换行），**允许**单词超屏时自动换行

## text-overflow

- text-overflow 通常用来设置文字溢出时的行为
  - clip：溢出的内容直接裁剪掉（字符可能会显示不完整）
  - ellipsis：溢出那行的结尾处用省略号表示
- text-overflow 生效的前提是 overflow 不为 visible

- 常见的是将 white-space、text-overflow、overflow 一起使用

## 浏览器前缀

- 有时候可能会看到有些 CSS 属性名前面带有：**-o-、-xv-、-ms-、mso-、-moz-、-webkit-**
- 官方文档专业术语叫做：vendor-specific extensions（供应商特定扩展）

- 为什么需要浏览器前缀了？

  - CSS 属性刚开始**并没有成为标准**，浏览器为了**防止后续会修改/删除名字给新的属性添加了浏览器前缀**

- 上述前缀叫做浏览器私有前缀，只有对应的浏览器才能解析使用
  - -o-、-xv-：Opera 等
  - -ms-、mso-：IE 等
  - -moz-：Firefox 等
  - -webkit-：Safari、Chrome 等
- 注意：不需要手动添加，学习了模块化打包工具会自动添加浏览器前缀

## FC

- 什么是 FC 呢？
  - FC 的全称是 Formatting Context（格式化上下文），元素在标准流里面都是属于一个 FC 的
  - 它是页面中的一块渲染区域，并且有⼀套渲染规则，它决定了子元素将如何定位，以及与其他元素之间的排列和布局之间的关系
  - https://www.w3.org/TR/CSS21/visuren.html#normal-flow
- 块级元素的布局属于 Block Formatting Context
  - 也就是 **block level box** 都是在 **BFC** 中布局的
- 行内级元素的布局属于 Inline Formatting Context
  - 也就是 **inline level box** 都是在 **IFC** 中布局的

### BFC

- block format context（块级格式化上下⽂）

  - BFC 是一个独立的布局环境，可以理解为一个容器，在这个容器中按照一定的规则对块级元素进行摆放，并且不会影响其他的布局环境中的盒子。如果一个元素触发了 BFC 的条件，则 BFC 中的元素布局不受外部影响

- block level box 都是在 BFC 中布局的，那么这个 BFC 在哪里呢？

  - https://www.w3.org/TR/CSS21/visuren.html#block-formatting

- MDN 上有整理出在哪些具体的情况下会创建 BFC
  - 根元素（html）
  - 浮动元素（元素的 float 不是 none）
  - 绝对定位元素（元素的 position 为 absolute 或 fixed）
  - 行内块元素（元素的 display 为 inline-block）
  - 表格单元格（元素的 display 为 table-cell，HTML 表格单元格默认为该值），表格标题（元素的 display 为 table-caption，HTML 表格标题默认为该值）
  - 匿名表格单元格元素（元素的 display 为 table、table-row、 table-row-group、table-header-group、table-footer-group（分别是 HTML table、row、tbody、thead、tfoot 的默认属性）或 inline-table）
  - overflow 值不为 visible 的块元素
  - 弹性元素（display 为 flex 或 inline-flex 元素的直接子元素）
  - 网格元素（display 为 grid 或 inline-grid 元素的直接子元素）
  - display 值为 flow-root 的元素

#### BFC 有什么作用呢

- 简单概况如下

  - 在 BFC 中，盒子会在**垂直方向上一个挨着一个**的排布

  - **垂直方向的间距由 margin 属性**决定

  - 在同一个 BFC 中，**相邻的两个盒子之间的 margin 会折叠**

  - 在 BFC 中，每个元素的**左边缘是紧挨着包含块的左边缘**的

  - 计算 BFC 的高度时，需要计算浮动元素的高度

  - BFC 区域不会与浮动的容器发生重叠

  - BFC 是独立的容器，容器内部元素不会影响外部元素

- 那么这个东西有什么用呢？

  - 解决 margin 的折叠问题

    - 由于 BFC 是一个独立的区域，内部的元素和外部的元素互不影响，将两个元素变为两个 BFC，就解决了 margin 的折叠问题

  - 解决浮动高度塌陷问题
    - 在对子元素设置浮动后，父元素会发生高度塌陷，也就是父元素的高度变为 0。解决这个问题，只需要把父元素变成一个 BFC。常用的办法是给父元素设置 overflow:hidden

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <title>BFC-解决折叠</title>
      <style>
        .container {
          overflow: auto;
        }

        .box1 {
          width: 400px;
          height: 100px;
          background-color: orange;

          margin-bottom: 50px;
        }

        .box2 {
          height: 100px;
          background-color: purple;

          margin-top: 100px;
        }
      </style>
    </head>
    <body>
      <!-- 让 container box 触发BFC -->
      <div class="container">
        <div class="box1"></div>
      </div>
      <div class="box2"></div>
    </body>
  </html>
  ```

#### 解决浮动高度塌陷

- 事实上，BFC 解决高度塌陷需要满足两个条件
  - 浮动元素的父元素触发 BFC，形成独立的块级格式化上下文（Block Formatting Context）
  - 浮动元素的父元素的高度是 auto 的
- BFC 的高度是 auto 的情况下，是如下方法计算高度的

  - 如果只有 inline-level，是行高的顶部和底部的距离
  - 如果有 block-level，是由最底层的块上边缘和最底层块盒子的下边缘之间的距离
  - 如果有绝对定位元素，将被忽略
  - **如果有浮动元素，那么会增加高度以包裹这些浮动元素的下边缘**

  - https://www.w3.org/TR/CSS21/visudet.html#root-height

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <title>BFC-解决浮动高度塌陷</title>
      <style>
        .container {
          background-color: orange;
          overflow: auto;
        }

        .item {
          width: 600px;
          height: 200px;
          float: left;
          border: 1px solid #000;
          background-color: pink;
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="item"></div>
        <div class="item"></div>
        <div class="item"></div>
        <div class="item"></div>
      </div>
    </body>
  </html>
  ```

## 媒体查询

- 媒体查询是一种提供给**开发者**针对**不同设备需**求进行**定制化开发**的一个接口
- 你可以根据**设备的类型**（比如屏幕设备、打印机设备）或者**特定的特性**（比如屏幕的宽度）来修改你的页面

- 媒体查询的使用方式主要有三种

  - 方式一：通过<b>@media 和@import</b>使用不同的 CSS 规则（常用）

  ```html
  <style>
    @import url(./css/body_bgc.css) (max-width: 800px);
  </style>
  ```

  - 方式二：使用 media 属性为`<style>, <link>, <source>`和其他 HTML 元素指定特定的媒体类型

  ```html
  <link
    rel="stylesheet"
    media="screen and (max-width: 800px)"
    href="./css/body_bgc.css"
  />
  ```

  - 方式三：使用 Window.matchMedia() 和 MediaQueryList.addListener() 方法来测试和监控媒体状态

- 比较常用的是通过@media 来使用不同的 CSS 规则，目前掌握这个即可

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        /* 
        @media (min-width: 320px) and (max-width: 375px) {
        .box { font-size: 15px; }
        }
  
        @media (min-width: 375px) and (max-width: 414px) {
          .box { font-size: 18px; }
        }
  
        @media (min-width: 414px) and (max-width: 480px) {
          .box { font-size: 21px; }
        }
  
        @media (min-width: 480px) {
          .box { font-size: 24px; }
        } 
        */

        /* CSS层叠性 */
        @media (min-width: 320px) {
          .box {
            font-size: 15px;
          }
        }
        @media (min-width: 375px) {
          .box {
            font-size: 18px;
          }
        }
        @media (min-width: 414px) {
          .box {
            font-size: 21px;
          }
        }
        @media (min-width: 480px) {
          .box {
            font-size: 24px;
          }
        }
      </style>
    </head>
    <body>
      <div class="box">我是box</div>
    </body>
  </html>
  ```

### 媒体类型

- 在使用媒体查询时，你必须指定要使用的媒体类型
  - 媒体类型是可选的，并且会（隐式地）应用 all 类型
- 常见的媒体类型值如下
  - all：适用于所有设备
  - print：适用于在打印预览模式下在屏幕上查看的分页材料和文档
  - screen（掌握）：主要用于屏幕
  - speech：主要用于语音合成器

### 媒体特性

- 媒体特性（Media features）描述了 浏览器、输出设备，或是预览环境的具体特征

  - 通常会将媒体特性描述为一个表达式
  - 每条媒体特性表达式都必须用括号括起来

  | 特征                         | 价值                        | 最小/最大 | 描述               |
  | ---------------------------- | --------------------------- | --------- | ------------------ |
  | 宽度 width                   | 长度                        | 是的      | 渲染表面的宽度     |
  | 高度 height                  | 长度                        | 是的      | 渲染表面的高度     |
  | 颜色 color                   | 整数                        | 是的      | 每个颜色分量的位数 |
  | 设备比例 device-aspect-ratio | 整数/整数                   | 是的      | 长宽比             |
  | 设备高度 device-width        | 长度                        | 是的      | 输出设备的高度     |
  | 设备宽度 device-height       | 长度                        | 是的      | 输出设备的宽度     |
  | 方向 orientation             | portrait 或 landscape       | 不        | 屏幕方向           |
  | 分辨率 resolution            | 分辨率（dpi，dpcm 或 dppx） | 是的      | 解析度             |

### 逻辑操作符

- 媒体查询的表达式最终会获得一个 Boolean 值，也就是真（true）或者假（false）
  - 如果结果为真（true），那么就会生效
  - 如果结果为假（false），那么就不会生效
- 如果有多个条件，我们可以通过逻辑操作符联合复杂的媒体查询
  - <b>and：</b>and 操作符用于将多个媒体查询规则组合成单条媒体查询
  - not：not 运算符用于否定媒体查询，如果不满足这个条件则返回 true，否则返回 false
  - only：only 运算符仅在整个查询匹配时才用于应用样式
  - , (逗号)：逗号用于将多个媒体查询合并为一个规则

### 常见的移动端设备

- 我们以 iPhone 为例

  | 手机机型          | 屏幕尺寸 | 逻辑分辨率 | 设备分辨率 | 缩放因子 |
  | ----------------- | -------- | ---------- | ---------- | -------- |
  | 3G(s)             | 3.5      | 320x480    | 320x480    | @1x      |
  | 4(s)              | 3.5      | 320x480    | 640x960    | @2x      |
  | 5(s/se)           | 4        | 320x568    | 640x1136   | @2x      |
  | 6(s)/7/8          | 4.7      | 375x667    | 750x1334   | @2x      |
  | X/Xs /11 Pro      | 5.8      | 375x812    | 1125x2436  | @3x      |
  | 6(s)/7/8 Plus     | 5.5      | 414x736    | 1242x2208  | @3x      |
  | Xr/11             | 6.1      | 414x896    | 828×1792   | @2x      |
  | Xs Max/11 Pro Max | 6.5      | 414x896    | 1242×2688  | @3x      |

# 额外知识补充（二）

## CSS 中的单位

- 我们经常会使用 px 来表示一个长度（大小），比如 font-size 设置为 18px，width 设置为 100px
- px 是一个长度（length）单位，事实上 CSS 中还有非常多的长度单位
- 整体可以分成两类
  - **绝对长度单位**（Absolute length units）
  - **相对长度单位**（Relative length units）

### CSS 中的绝对单位

- 绝对单位

  - 它们**与其他任何东西都没有关系**，通常**被认为总是相同的大小**
  - 这些值中的大多数在**用于打印时**比用于屏幕输出时更有用，例如，我们通常不会在屏幕上使用 cm

  - 唯一一个您经常使用的值，就是**px（像素）**

### CSS 中的相对单位

- 相对单位

  - 相对长度单位**相对于其他一些东西**
  - 比如**父元素的字体大小**，或者**视图端口的大小**
  - 使用相对单位的好处是，经过一些**仔细的规划**，您可以**使文本或其他元素的大小与页面上的其他内容**相对应

- em：相对自己的字体大小属性的**计算值**

  ```html
  <!DOCTYPE html>
  <html lang="zh">
    <head>
      <style>
        .container {
          font-size: 15px;
        }

        .box {
          /* 1.em: 相对自己的font-size */
          /* 2.如果自己没有设置, 那么会继承父元素的font-size */
          /* 3.如果font-size中有写em单位, 可以理解成相对于父元素
               但是更准确的理解依然是相对于自己的
          */
          font-size: 2em; /* 先继承父元素的font-size: 15px * 2em = 30px */

          width: 10em;
          height: 5em;
          background-color: orange;
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="box">我是box</div>
      </div>
    </body>
  </html>
  ```

- rem：相对根元素的字体大小

- vw/vh：视口宽度的 1%，视口高度的 1%

## pixel

- 前面我们已经一直在使用 px 单位了，px 是 pixel 单词的缩写，翻译为像素
- 那么像素到底是什么呢？
  - **像素是影响显示的基本单位**。（比如屏幕上看到的画面、一幅图片）
  - pix 是英语单词**picture**的常用简写，加上英语单词 “元素” **element**，就得到 pixel
  - “像素” 表示 “画像元素” 之意，有时亦被称为**pel（picture element）**

### 像素的不同分类

- 但是这个 100 个 pixel 到底是多少呢？

  - 我们确实可以在屏幕上看到一个大小，但是这个大小代表的真实含义是什么呢？
  - 我们经常说一个电脑的分辨率、手机的分辨率，这个和 CSS 当中的像素又是什么关系呢？

  ```css
  .box {
    width: 100px;
    height: 100px;
  }
  ```

- 这里我们要深入到不同的像素概念中，来理解 CSS 中的 pixel 到底代表什么含义

- 像素单位常见的有三种像素名称

  - **设备像素**（也称之为物理像素）
  - **设备独立像素**（也称之为逻辑像素）
  - **CSS 像素**

### 物理像素和逻辑像素

- **设备像素**，也叫**物理像素**
  - 设备像素指的是**显示器上的真实像素，每个像素的大小是屏幕固有的属性，屏幕出厂以后就不会改变**了
  - 我们在购买**显示器或者手机的时候**，提到的**设备分辨率就是设备像素的大小**
  - 比如**iPhone X 的分辨率 1125x2436，指的就是设备像素**
- **设备独立像素**，也叫**逻辑像素**
  - 如果**面向开发者**我们使用**设备像素显示一个 100px 的宽度**，那么在**不同屏幕上显示效果会是不同**的
  - 开发者**针对不同的屏幕**很难进行较好的适配，编写程序必须**了解用户的分辨率**来进行开发
  - 所以在设备像素之上，**操作系统为开发者进行抽象，提供了逻辑像素的概念**
  - 比如你购买了一台显示器，在**操作系统上是以 1920x1080 设置的显示分辨率**，那么无论你购买的是**2k、4k 的显示器**，对于开发者来说，都是 1920x1080 的大小
- CSS 像素
  - CSS 中我们经常**使用的单位也是 pixel**，它在**默认情况下等同于设备独立像素**（也就是逻辑像素）
  - 毕竟逻辑像素才是面向我们开发者的
- 我们可以通过 JavaScript 中的**screen.width 和 screen.height**获取到电脑的逻辑分辨率

### DPR、PPI

- DPR：device pixel ratio

  - 2010 年，iPhone4 问世，不仅仅带来了**移动互联网**，还带来了**Retina 屏幕**
  - Retina 屏幕翻译为**视网膜显示屏**，可以为用户带来**更好的显示**
  - 在 Retina 屏幕中，**一个逻辑像素在长度**上对应**两个物理像素**，这个比例称之为**设备像素比**（device pixel ratio）
  - 我们可以通过**window.devicePixelRatio**获取到当前屏幕上的 DPR 值
    - DPR 计算公式：物理像素 / 操作系统设置的逻辑像素 = DPR
    - DPR = 3
    - 1 个逻辑像素 \* DPR = 3 个物理像素

- PPI：每英寸像素（英语：Pixels Per Inch，缩写：PPI）
  - 通常用来表示一个打印图像或者显示器上像素的密度
  - 1 英寸=2.54 厘米，在工业领域被广泛应用

## CSS 编写的痛点

- CSS 作为一种**样式语言**，本身用来**给 HTML 元素添加样式**是没有问题的
- 但是目前前端项目已经越来越复杂，不再是简简单单的几行 CSS 就可以搞定的，我们需要几千行甚至上万行的 CSS 来完成页面的美化工作
- 随着代码量的增加，必然会造成很多的编写不便
  - 比如大量的重复代码，虽然可以用**类来勉强管理和抽取**，但是**使用起来依然不方便**
  - 比如**无法定义变量（当然目前已经支持）**，如果一个值被修改，那么需要**修改大量代码，可维护性很差** (比如主题颜色)
  - 比如**没有专门的作用域和嵌套**，需要**定义大量的 id/class 来保证选择器的准确性**，避免样式混淆
- 所以有一种对 CSS 称呼是 **“面向命名编程”**

- 社区为了解决 CSS 面临的大量问题，出现了一系列的**CSS 预处理器**(CSS_preprocessor)
  - CSS 预处理器是一个能让你通过**预处理器自己独有的语法**来生成 CSS 的程序
  - 市面上有很多**CSS 预处理器可供选择**，且绝大多数 CSS 预处理器会**增加一些原生 CSS 不具备的特性**
  - 代码最终**会转化为 CSS 来运行**，因为**对于浏览器来说只识别 CSS**

## 常见的 CSS 预处理器

- 常见的预处理器有哪些呢？目前使用较多的是三种预处理器
- Sass/Scss
  - 2007 年诞生，最早也是最成熟的 CSS 预处理器，拥有 ruby 社区的支持，是属于 Haml（一种模板系统）的一部分
  - 目前受 LESS 影响，已经进化到了**全面兼容 CSS 的 SCSS**
- Less
  - 2009 年出现，受 SASS 的影响较大，但又**使用 CSS 的语法**，让大部分**开发者更容易上手**
  - 比起 SASS 来，可编程功能不够，不过优点是使用方式简单、便捷，兼容 CSS，并且已经足够使用
  - 另外反过来也影响了 SASS 演变到了 SCSS 的时代
  - 著名的 Twitter Bootstrap 就是采用 LESS 做底层语言的，也包括 React 的 UI 框架 AntDesign
- Stylus
  - 2010 年产生，来自 Node.js 社区，主要用来给 Node 项目进行 CSS 预处理支持
  - 语法偏向于 Python，使用率相对于 Sass/Less 少很多

## Less

- 什么是 Less 呢？我们来看一下官方的介绍
  - It's CSS, with just a little more
- Less （Leaner Style Sheets 的缩写） 是一门 CSS 扩展语言，并且兼容 CSS
  - Less 增加了很多**相比于 CSS 更好用的特性**
  - 比如**定义变量、混入、嵌套、计算**等等
  - **Less 最终需要被编译成 CSS 运行于浏览器**中（包括部署到服务器中）

### 变量

- 在一个大型的网页项目中，我们 CSS 使用到的某几种属性值往往是特定的

  - 比如我们使用到的主题颜色值，那么每次编写类似于 **#f3c258** 格式的语法

  - 一方面是记忆不太方便，需要重新编写或者拷贝样式

  - 另一方面如果有一天主题颜色改变，我们需要修改大量的代码

  - 所以，我们可以将常见的颜色或者字体等定义为变量来使用

- 在 Less 中使用如下的格式来定义变量

  - **@变量名: 变量值**

  ```less
  @mainColor: #a40011;
  @normalFontSize: 14px;

  .box {
    color: @mainColor;
    font-size: @normalFontSize;
  }
  ```

### 运算

- 在 Less 中，算术运算符 +、-、\*、/ 可以对任何数字、颜色或变量进行运算

  - 算术运算符在加、减或比较之前会进行单位换算，计算的结果**以最左侧操作数的单位类型**为准
  - 如果**单位换算无效或失去意义，则忽略单位**

  ```less
  .box {
    color: 100px + 10%;
    background-color: #ff0000 + #00ff00;
  }
  ```

### 混入、映射、继承

- 在原来的 CSS 编写过程中，多个选择器中可能会有大量相同的代码

  - 我们希望可以将这些**代码进行抽取到一个独立的地方，任何选择器都可以进行复用**
  - 在 less 中提供了 **混入（Mixins）** 来帮助我们完成这样的操作

- 混合（Mixin）是一种将一组属性从一个规则集（或混入）到另一个规则集的方法

  ```less
  .nowrap_ellipsis {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }

  .box {
    width: 150px;
    .nowrap_ellipsis();
  }
  ```

- 注意：混入在没有参数的情况下，**小括号可以省略，但是不建议这样使用**

- 混入也可以传入变量

  ```less
  .box_border(@borderWidth: 1px, @borderColor: purple) {
    border: @borderWidth solid @borderColor;
  }

  .box {
    width: 150px;
    .box_border(5px, orange);
  }
  ```

- 映射（Maps）

  ```less
  .box_size {
    width: 100px;
    height: 100px;
  }

  .box {
    width: .box_size() [width];
  }
  ```

- 继承（extend）

  - 和 mixins 作用类似，用于**复用代码**
  - 和 mixins 相比，继承代码最终会转化成**并集选择器**

  ```less
  .box_size {
    width: 100px;
    height: 100px;
  }

  .box:extend(.box_border) {
    background-color: pink;
  }

  /*
    .box_size, .box {
      width: 100px;
      height: 100px;
    }
  */
  ```

### 作用域

- 在查找一个变量时，首先在**本地查找变量和混合（mixins）**

- 如果**找不到，则从 “父” 级作用域继承**

  ```less
  @mainColor: #f00;
  .box_mixin {
    @mainColor: orange;
  }

  .box {
    // @mainColor: #0f0;
    .item {
      color: @mainColor;
      .box_mixin();
      // @mainColor: #00f;
    }
  }
  ```

## 什么是移动端适配？

- 移动互联网的快速发展，让人们已经越来越习惯于使用手机来完成大部分日常的事务
  - 前面我们已经学习了大量 HTML、CSS 的前端开发知识
  - 这些知识也同样**适用于移动端开发**，但是如果想让一个页面**真正适配于移动端，我们最好多了解一些移动端的知识**
- 移动端开发目前主要包括三类

  - **原生 App 开发**（iOS、Android、RN、uniapp、Flutter 等）
  - **小程序开发**（原生小程序、uniapp、Taro 等）
  - **Web 页面**（移动端的 Web 页面，可以使用浏览器或者 webview 浏览）

- 因为目前移动端设备较多，所以我们需要对其进行一些适配
- 这里有两个概念
  - **自适应：**根据不同的设备屏幕大小来**自动调整尺寸、大小**
  - **响应式：**会**随着屏幕的实时变动而自动调整，是一种自适应**

## 认识视口 viewport

- 在前面我们已经简单了解过视口的概念了
  - 在一个浏览器中，我们可以**看到的区域就是视口（viewport）**
  - 我们说过**fixed 就是相对于视口来进行定位**的
  - 在**PC 端的页面**中，我们是**不需要对视口进行区分**，因为我们的**布局视口和视觉视口**是同一个
- 但是在移动端，不太一样，你布局的视口和你可见的视口是不太一样的
  - 这是因为**移动端的网页窗口往往比较小**，我们可能会**希望一个大的网页在移动端可以完整的显示**
  - 所以在默认情况下，**移动端**的**布局视口**是**大于视觉视口**的
- 所以在移动端，我们可以将视口划分为三种情况
  - **布局视口**（layout viewport）
  - **视觉视口**（visual layout）
  - **理想视口**（ideal layout）
- 这些概念的区分，事实上来自 ppk，他也是对前端贡献比较大的一个人（特别是在移动端浏览器）
  - https://www.quirksmode.org/mobile/viewports2.html

### 布局视口和视觉视口

- 布局视口（layout viewport）

  - 默认情况下，一个 PC 端的网页在移动端会如何显示呢？
    - 第一，它会**按照宽度为 980px 来布局一个页面的盒子和内容**
    - 第二，为了**可以完整的显示在页面中，对整个页面进行等比例缩小**
  - 我们相对于 980px 布局的这个视口，称之为**布局视口（layout viewport）**
    - 布局视口的默认宽度是**980px**

  <img src="https://www.quirksmode.org/mobile/pix/viewport/mobile_layoutviewport.jpg" />

- 视觉视口（visual viewport）

  - 如果默认情况下，我们按照 980px 显示内容，那么**右侧有一部分区域就会无法显示**，所以**手机端浏览器会默认对页面进行缩放以显示到用户的可见区域**中
  - 那么**显示在可见区域的这个视口**，就是**视觉视口（visual viewport）**

  <img src="https://www.quirksmode.org/mobile/pix/viewport/mobile_visualviewport.jpg" />

- 在 Chrome 上按 shift+鼠标左键可以进行缩放

### 理想视口

- 如果所有的网页都按照 980px 在移动端布局，那么最终页面都会被缩放显示

  - 事实上这种方式是**不利于我们进行移动的开发**的，我们希望的是**设置 100px，那么显示的就是 100px**
  - 如何做到这一点呢？通过设置**理想视口（ideal viewport）**

- 理想视口（ideal viewport）

  - 默认情况下的**layout viewport 并不适合我们进行布局**
  - 我们可以对**layout viewport 进行宽度和缩放的设置**，以满足**正常在一个移动端窗口的布局**
  - 这个时候可以设置**meta 中的 viewport**
  - 把**布局视口**设置成**视觉视口**，那么就称之为是**理想视口**

  ```html
  <!-- width: 设置布局视口的宽度 -->
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />
  ```

  | 值            | 可能的附加值                         | **描述**                                                            |
  | ------------- | ------------------------------------ | ------------------------------------------------------------------- |
  | width         | 一个正整数，或者字符串 device-width  | 定义 viewport 的宽度                                                |
  | height        | 一个正整数，或者字符串 device-height | 定义 viewport 的高度。未被任何浏览器使用                            |
  | initial-scale | 一个 0.0 和 10.0 之间的正数          | 定义设备宽度与 viewport 大小之间的缩放比例                          |
  | maximum-scale | 一个 0.0 和 10.0 之间的正数          | 定义缩放的最大值，必须大于等于 minimum-scale，否则表现将不可预测    |
  | minimum-scale | 一个 0.0 和 10.0 之间的正数          | 定义缩放的最小值，必须小于等于 maximum-scale，否则表现将不可预测    |
  | user-scalable | yes 或者 no                          | 默认为 yes，如果设置为 no，将无法缩放当前页面。浏览器可以忽略此规则 |

  <img src="https://www.quirksmode.org/mobile/pix/viewport/mobile_viewportzoomedout.jpg" />

## 移动端适配方案

- 移动端的屏幕尺寸通常是非常繁多的，很多时候我们希望在不同的屏幕尺寸上显示不同的大小

  - 比如我们设置一个 100 x 100 的盒子
    - 在 320 的屏幕上显示是 90+ x 90+
    - 在 375 的屏幕上显示是 100 x 100
    - 在 414 的屏幕上显示是 100+ x 100+
  - 其他尺寸也是类似，比如**padding、margin、border、left，甚至是 font-size**等等

- 这个时候，我们可能可以想到一些方案来处理尺寸
  - **方案一：百分比设置**
    - 因为不同属性的百分比值，相对的可能是不同参照物，所以百分比往往很难统一
    - 所以百分比在移动端适配中使用是非常少的
  - **方案二：rem 单位+动态 html 的 font-size**
  - **方案三：vw 单位**
  - **方案四：flex 的弹性布局**

### 方案二

- rem 单位是相对于 html 元素的 font-size 来设置的，那么如果我们需要在不同的屏幕下有不同的尺寸，可以动态的修改 html 的 font-size 尺寸

- 比如如下案例

  - 设置一个**盒子的宽度是 2rem**
  - 设置**不同的屏幕上 html 的 font-size 不同**

  | 屏幕尺寸 | html 的 font-size | 盒子的设置宽度 | 盒子的最终宽度 |
  | -------- | ----------------- | -------------- | -------------- |
  | 375px    | 37.5px            | 1rem           | 37.5px         |
  | 320px    | 32px              | 1rem           | 32px           |
  | 320px    | 41.4px            | 1rem           | 41.4px         |

- 这样在开发中，我们只需要考虑两个问题

  - 问题一：针对**不同的屏幕，设置 html 不同的 font-size**
  - 问题二：将**原来要设置的尺寸，转化成 rem 单位**

#### rem 的 font-size 尺寸

- 方案一：媒体查询

  - 可以通过**媒体查询来设置不同尺寸范围内的屏幕 html 的 font-size 尺寸**
  - 缺点
  - 我们需要**针对不同的屏幕编写大量的媒体查询**
  - 如果**动态改变尺寸，不会实时的进行更新**

  ```css
  @media screen and (min-width: 320px) {
    html {
      font-size: 32px;
    }
  }

  @media screen and (min-width: 375px) {
    html {
      font-size: 37.5px;
    }
  }

  @media screen and (min-width: 414px) {
    html {
      font-size: 41.1px;
    }
  }
  ```

- 方案二：编写 js 代码

  - 如果希望**实时改变屏幕尺寸时，font-size 也可以实时更改，可以通过 js 代码**
  - 方法
    - 根据 html 的宽度计算出**font-size 的大小**，并且**设置到 html**上
    - 监听**页面的实时改变**，并且**重新设置 font-size 的大小到 html**上

  ```js
  // 1.获取html的元素
  const htmlEl = document.documentElement;

  function setRemUnit() {
    // 2.获取html的宽度(视口的宽度)
    const htmlWidth = htmlEl.clientWidth;
    // 3.根据宽度计算一个html的font-size的大小
    const htmlFontSize = htmlWidth / 10;
    // 4.将font-size设置到html上
    htmlEl.style.fontSize = htmlFontSize + "px";
  }
  // 保证第一次进来时, 可以设置一次font-size
  setRemUnit();

  // 当屏幕尺寸发生变化时, 实时来修改html的font-size
  window.addEventListener("resize", setRemUnit);
  ```

- 方案三：lib-flexible 库
  - 事实上，**lib-flexible 库做的事情是相同**的，你也可以直接引入它

#### rem 的单位换算

- 方案一：手动换算

  - 比如有一个在 375 屏幕上，100px 宽度和高度的盒子
  - 我们需要将 100px 转成对应的 rem 值
  - 100 / 37.5 = 2.6667，其他也是相同的方法计算即可

- 方案二：less/scss 函数

  ```less
  .pxToRem(@px) {
    result: 1rem * (@px / 37.5);
  }

  .box {
    width: .pxToRem(100) [result];
    height: .pxToRem(100) [result];
    background-color: orange;
  }

  p {
    font-size: .pxToRem(14) [result];
  }
  ```

- 方案三：postcss-pxtorem

  - 目前在前端的工程化开发中，我们可以借助于 webpack 的工具来完成自动的转化

- 方案四：VSCode 插件

  - px to rem 的插件，在编写时自动转化

### 方案三

- 在 flexible GitHub 上已经有写过这样的一句话

  > 由于`viewport`单位得到众多浏览器的兼容，`lib-flexible`这个过渡方案已经可以放弃使用，不管是现在的版本还是以前的版本，都存有一定的问题。建议大家开始使用`viewport`来替代此方

- 所以它更推荐使用 viewport 的两个单位 vw、vh

- vw 的兼容性如何呢？

  - https://caniuse.com/?search=vw

#### vw 和 rem 的对比

- rem 事实上是作为一种过渡的方案，它利用的也是 vw 的思想

  - 前面不管是我们**自己编写的 js**，**还是 flexible 的源码**
  - 都是将**1rem 等同于设计稿的 1/10**，在利用**1rem 计算相对于整个屏幕的尺寸大小**
  - 那么我们来思考，**1vw 不是刚好等于屏幕的 1/100**吗？
  - 而且**相对于 rem 还更加有优势**

- vw 相比于 rem 的优势

  - 优势一：不需要去计算 html 的 font-size 大小，也不需要给 html 设置这样一个 font-size

  - 优势二：不会因为设置 html 的 font-size 大小，而必须给 body 再设置一个 font-size，防止继承

  - 优势三：因为不依赖 font-size 的尺寸，所以不用担心某些原因 html 的 font-size 尺寸被篡改，页面尺寸混乱

  - 优势四：vw 相比于 rem 更加语义化，1vw 刚好是 1/100 的 viewport 的大小

  - 优势五：可以具备 rem 之前所有的优点

- vw 我们只面临一个问题，将尺寸换算成 vw 的单位即可

- 所以，目前相比于 rem，更加**推荐大家使用 vw**（但是理解 rem 依然很重要）

#### vw 的单位换算

- 方案一：手动换算

  - 比如有一个在 375 屏幕上，100px 宽度和高度的盒子
  - 我们需要将 100px 转成对应的 vw 值
  - 100 / 3.75 = 26.667，其他也是相同的方法计算即可

- 方案二：less/scss 函数

  ```less
  .pxToVw(@px) {
    result: 1vw * (@px / 3.75);
  }

  .box {
    width: .pxToVw(100) [result];
    height: .pxToVw(100) [result];
    background-color: orange;
  }

  p {
    font-size: .pxToVw(14) [result];
  }
  ```

- 方案三：postcss-px-to-viewport-8-plugin

  - 和 rem 一样，在前端的工程化开发中，我们可以借助于 webpack 的工具来完成自动的转化

- 方案四：VSCode 插件

  - px to rem 的插件，在编写时自动转化
