---
  title: React
  date: "2023-04-14 14:27"
  updated: "2023-04-14 14:27"
  tags: [React]
  categories: "系统课笔记"
---

# 邂逅 React 开发

- React 是什么？
  - <b>React：</b>用于构建用户界面的 JavaScript 库
  - <b>React 的官网文档：</b>https://zh-hans.reactjs.org
- 声明式
  - React 使创建交互式 UI 变得轻而易举。为你应用的每一个状态设计简洁的视图，当数据变动时 React 能高效更新并渲染合适的组件。
  - 以声明式编写 UI，可以让你的代码更加可靠，且方便调试。
- 组件化
  - 构建管理自身状态的封装组件，然后对其组合以构成复杂的 UI。
  - 由于组件逻辑使用 JavaScript 编写而非模板，因此你可以轻松地在应用中传递数据，并保持状态与 DOM 分离。
- 一次学习，跨平台编写
  - 无论你现在使用什么技术栈，在无需重写现有代码的前提下，通过引入 React 来开发新功能。
  - React 还可以使用 Node 进行服务器渲染，或使用 React Native 开发原生移动应用。

## 声明式编程

- 声明式编程是目前**整个大前端开发的模式**：Vue、React、Flutter、SwiftUI

- 它允许我们**只需要维护自己的状态，当状态改变时，React 可以根据最新的状态去渲染我们的 UI 界面**

  ![](https://s3.bmp.ovh/imgs/2022/09/07/c45f4f138b3e0ae8.png)

## 组件化开发

- 组件化开发页面目前**前端的流行趋势**，我们会将复杂的界面拆分成**一个个小的组件**

  ![](https://s3.bmp.ovh/imgs/2022/09/07/199b272e29928039.jpg)

## 多平台适配

- 2013 年，React 发布之初主要是**开发 Web 页面**
- 2015 年，Facebook 推出了**ReactNative**，用于**开发移动端跨平台**
- 2017 年，Facebook 推出**ReactVR**，用于开发**虚拟现实 Web 应用程序**

## React 的开发依赖

- 开发 React 必须依赖三个库
  - <b>react：</b>包含 react 所必须的核心代码
  - <b>react-dom：</b>react 渲染在不同平台所需要的核心代码
  - <b>babel：</b>将 jsx 转换成 React 代码的工具
- 第一次接触 React 会被它繁琐的依赖搞蒙，居然依赖这么多东西
- 对于 Vue 来说，我们只是依赖一个 vue.js 文件即可，但是 react 居然要**依赖三个包**
- 其实呢，这三个库是**各司其职**的，目的就是**让每一个库只单纯做自己的事情**
- 在 React 的 0.14 版本**之前是没有 react-dom 这个概念**的，所有功能都包含在 react 里
- 为什么要进行拆分呢？原因就是 react-native
  - react 包中包含了**react web 和 react-native**所共同拥有的**核心代码**
  - react-dom 针对**web 和 native**所完成的事情不同：
    - web 端：react-dom 会将 jsx 最终渲染成真实的 DOM，显示在浏览器中
    - native 端：react-dom 会将 jsx 最终渲染成原生的控件（比如 Android 中的 Button，iOS 中的 UIButton）

## Babel 和 React 的关系

- babel 是什么呢？

  - Babel ，又名 Babel.js
  - 是目前前端使用非常广泛的**编译器、转移器**
  - 比如当下**很多浏览器并不支持 ES6 的语法**，但是**确实 ES6 的语法非常的简洁和方便，我们开发时希望使用它**
  - 那么编写源码时我们就可以**使用 ES6 来编写**，之后**通过 Babel 工具**，**将 ES6 转成大多数浏览器都支持的 ES5 的语法**

- React 和 Babel 的关系
  - 默认情况下**开发 React 其实可以不使用 babel**
  - 但是前提是我们**自己使用 React.createElement 来编写源代码**，它编写的代码**非常的繁琐和可读性差**
  - 那么我们就可以直接编写<b>jsx（JavaScript XML）</b>的语法，并且让**babel 帮助我们转换成 React.createElement**

## React 的依赖引入

- 所以，我们在编写 React 代码时，这三个依赖都是必不可少的

- 那么，如何添加这三个依赖

  - 方式一：直接 CDN 引入
  - 方式二：下载后，添加本地依赖
  - 方式三：通过 npm 管理

- 暂时我们直接通过 CDN 引入，来演练下面的示例程序

  - 这里有一个 crossorigin 的属性，这个属性的目的是为了拿到跨域脚本的错误信息

  ```html
  <script
    src="https://unpkg.com/react@18/umd/react.development.js"
    crossorigin
  ></script>
  <script
    src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"
    crossorigin
  ></script>
  <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
  ```

## Hello World

- 第一步：在界面上通过 React 显示一个 Hello World

  - 注意：这里我们编写 React 的 script 代码中，必须添加 type="text/babel"，作用是可以让 babel 解析 jsx 的语法

- ReactDOM.createRoot 函数：用于创建一个 React 根，之后渲染的内容会包含在这个根中

  - 参数：将渲染的内容，挂载到哪一个 HTML 元素上

- root.render 函数

  - 参数：要渲染的根组件

- 我们可以通过{}语法来引入外部的变量或者表达式

  ```html
  <script src="../lib/react.js"></script>
  <script src="../lib/react-dom.js"></script>
  <script src="../lib/babel.js"></script>

  <div id="root"></div>

  <script type="text/babel">
    // 编写React代码(jsx语法)
    // jsx语法 -> 普通的JavaScript代码 -> babel

    // 渲染Hello World
    // React18之前: ReactDOM.render
    // ReactDOM.render(<h2>Hello World</h2>, document.querySelector("#root"))

    // React18之后:
    const root = ReactDOM.createRoot(document.querySelector("#root"));
    root.render(<h2>Hello World</h2>);
  </script>
  ```

## 组件化开发

- 整个逻辑其实可以看做一个整体，那么我们就可以将其封装成一个组件

  - 我们说过**root.render 参数**是一个**HTML 元素或者一个组件**
  - 所以我们可以先将之前的业务逻辑封装到一个组件中，然后传入到 ReactDOM.render 函数中的第一个参数

- 在 React 中，如何封装一个组件呢？这里我们暂时使用**类的方式**封装组件

  - **定义一个类**（类名大写，组件的名称是必须大写的，小写会被认为是 HTML 元素），继承自 React.Component
  - **实现当前组件的 render 函数**
    - render 当中返回的 jsx 内容，就是之后 React 会帮助我们渲染的内容

  ```html
  <div id="root"></div>

  <script type="text/babel">
    class App extends React.Component {
      render() {
        return <h2>Hello World</h2>;
      }
    }

    const root = ReactDOM.createRoot(document.querySelector("#root"));
    root.render(<App />);
  </script>
  ```

### 数据依赖

- 组件化问题一：**数据在哪里定义？**
- 在组件中的数据，我们可以分成两类

  - <b>参与界面更新的数据：</b>当数据变量时，需要更新组件渲染的内容
  - <b>不参与界面更新的数据：</b>当数据变量时，不需要更新将组建渲染的内容

- 参与界面更新的数据我们也可以称之为是**参与数据流**，这个数据是**定义在当前对象的 state**中

  - 我们可以通过在**构造函数中 this.state = {定义的数据}**
  - 当我们的数据发生变化时，我们可以**调用 this.setState 来更新数据**，并且通知 React 进行 update 操作
    - 在进行 update 操作时，就会**重新调用 render 函数**，并且使用最新的数据，来渲染界面

  ```html
  <div id="root"></div>

  <script type="text/babel">
    class App extends React.Component {
      constructor() {
        super();
        this.state = { message: "Hello World" };
      }
      render() {
        return <h2>{this.state.message}</h2>;
      }
    }

    const root = ReactDOM.createRoot(document.querySelector("#root"));
    root.render(<App />);
  </script>
  ```

### 事件绑定

- 组件化问题二：事件绑定中的 this

  - 在类中直接定义一个函数，并且将这个函数绑定到**元素的 onClick 事件**上，当前**这个函数的 this 指向的是谁呢？**

- 默认情况下是 undefined

  - 很奇怪，居然是**undefined**
  - 因为在正常的 DOM 操作中，监听点击，监听函数中的 this 其实是节点对象（比如说是 button 对象）
  - 这是因为 React 并不是直接渲染成真实的 DOM，我们所编写的 button 只是一个语法糖，它的本质 React 的 Element 对象
  - 那么在这里发生监听的时候，react 在执行函数时并没有绑定 this，默认情况下就是一个 undefined

- 我们在绑定的函数中，可能想要使用当前对象，比如执行 this.setState 函数，就必须拿到当前对象的 this

  - 我们就需要在传入函数时，给这个函数直接绑定 this
  - 类似于下面的写法：`<button onClick={this.changeText.bind(this)}>改变文本</button>`

  ```jsx
  class App extends React.Component {
    constructor() {
      super();
      this.state = { message: "Hello World" };
    }
    // 默认情况下在class里面定义的所有函数都是严格模式
    changeText() {
      this.setState({ message: "Hello React" });
    }

    render() {
      return (
        <div>
          <h2>{this.state.message}</h2>
          <button onClick={this.changeText.bind(this)}>改变文本</button>
        </div>
      );
    }
  }

  // this绑定的问题
  const app = new App();
  const foo = app.btnClick;
  // foo(); // 默认绑定 => window => 严格模式下 => undefined

  function bar() {
    console.log("bar:", this);
  }
  bar();

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

# JSX

- 这段 element 变量的声明右侧赋值的标签语法是什么呢？

  ```jsx
  <script type="text/babel">
    const element = <div>哈哈哈哈</div>; const root =
    ReactDOM.createRoot(document.querySelector("#root")); root.render(element);
  </script>
  ```

  - 它不是一段字符串（因为没有使用引号包裹）
  - 它看起来是一段 HTML 元素，但是我们能在 js 中直接给一个变量赋值 html 吗？
  - 其实是不可以的，如果我们将 type="text/babel" 去除掉，那么就会出现语法错误
  - 它到底是什么呢？其实它是一段**jsx 的语法**

- JSX 是什么？

  - JSX 是**一种 JavaScript 的语法扩展（eXtension），也在很多地方称之为 JavaScript XML，因为看起就是一段 XML 语法**
  - 它用于**描述我们的 UI 界面**，并且其**完全可以和 JavaScript 融合在一起使用**

## 为什么 React 选择了 JSX

- React 认为**渲染逻辑**本质上**与其他 UI 逻辑**存在内在耦合
  - 比如**UI 需要绑定事件**（button、a 原生等等）
  - 比如**UI 中需要展示数据状态**
  - 比如**在某些状态发生改变时，又需要改变 UI**
- 他们之间是**密不可分**，所以 React**没有将标记分离到不同的文件**中，而是**将它们组合到了一起**，这个地方就是**组件（Component）**
- 在这里，我们只需要知道，JSX 其实是嵌入到 JavaScript 中的一种结构语法
- JSX 的书写规范：
  - JSX 的顶层**只能有一个根元素**，所以**我们很多时候会在外层包裹一个 div 元素**
  - 为了方便阅读，我们通常在 jsx 的外层包裹一个小括号()，这样可以方便阅读，并且 jsx 可以进行换行书写
  - JSX 中的标签可以是**单标签**，也可以是**双标签**
  - 注意：如果是单标签，必须以/>结尾

## 插入内容

- jsx 中的注释：`{/**/}`

- JSX 嵌入变量作为子元素

  - **情况一：**当变量是**Number、String、Array 类型**时，可以直接显示
  - **情况二：**当变量是**null、undefined、Boolean 类型**时，内容为空
    - 如果希望可以显示 null、undefined、Boolean，那么需要转成字符串
    - 转换的方式有很多，比如 toString 方法、和空字符串拼接，String(变量)等方式
  - **情况三：Object 对象类型**不能作为子元素（not valid as a React child）

- JSX 嵌入表达式

  - 运算表达式
  - 三元运算符
  - 执行一个函数

  ```jsx
  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        counter: 100,
        message: "Hello World",
        names: ["the shy", "rookie", "杰克爱"],

        aaa: undefined,
        bbb: null,
        ccc: true,

        friend: { name: "the shy" },

        firstName: "the",
        lastName: "shy",

        age: 24,

        movies: ["流浪地球", "星际穿越", "独行月球"],
      };
    }

    render() {
      // 1.插入标识符
      const { counter, message, names, aaa, bbb, ccc, friend } = this.state;

      // 2.对内容进行运算后显示(插入表示)
      const { firstName, lastName, age } = this.state;

      const fullName = firstName + " " + lastName;
      const ageText = age >= 18 ? "成年人" : "未成年人";
      const liEls = this.state.movies.map((movie) => <li>{movie}</li>);

      // 3.返回jsx的内容
      return (
        <div>
          {/* 1.Number/String/Array直接显示出来 */}
          <h2>{counter}</h2>
          <h2>{message}</h2>
          <h2>{names}</h2>

          <h2>------------------------------------</h2>

          {/* 2.undefined/null/Boolean */}
          <h2>{String(aaa)}</h2>
          <h2>{bbb + ""}</h2>
          <h2>{ccc.toString()}</h2>

          <h2>------------------------------------</h2>

          {/* 3.Object类型不能作为子元素进行显示*/}
          {/* <h2>{friend}</h2> */}
          <h2>{friend.name}</h2>
          <h2>{Object.keys(friend)[0]}</h2>

          <h2>------------------------------------</h2>

          {/* 4.可以插入对应的表达式*/}
          <h2>{10 + 20}</h2>
          <h2>{firstName + " " + lastName}</h2>
          <h2>{fullName}</h2>

          <h2>------------------------------------</h2>

          {/* 5.可以插入三元运算符*/}
          <h2>{ageText}</h2>
          <h2>{age >= 18 ? "成年人" : "未成年人"}</h2>

          <h2>------------------------------------</h2>

          {/* 6.可以调用方法获取结果*/}
          <ul>{liEls}</ul>
          <ul>
            {this.state.movies.map((movie) => (
              <li>{movie}</li>
            ))}
          </ul>
          <ul>{this.getMovieEls()}</ul>
        </div>
      );
    }

    getMovieEls() {
      const liEls = this.state.movies.map((movie) => <li>{movie}</li>);
      return liEls;
    }
  }

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

## 绑定属性

- jsx 绑定属性

  - 比如元素都会有**title 属性**
  - 比如 img 元素会有**src 属性**
  - 比如 a 元素会有**href 属性**
  - 比如元素可能需要**绑定 class**
  - 比如原生使用**内联样式 style**

  ```jsx
  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        title: "哈哈哈",
        imgURL:
          "http://p1.music.126.net/agGc1qkogHtJQzjjyS-kAA==/109951167643767467.jpg",
        href: "https://www.baidu.com",
        isActive: true,
        objStyle: { color: "red", fontSize: "30px" },
      };
    }

    render() {
      const { title, imgURL, href, isActive, objStyle } = this.state;

      // 需求: isActive: true -> active
      // 1.class绑定的写法一: 字符串的拼接
      const className = `abc cba ${isActive ? "active" : ""}`;
      // 2.class绑定的写法二: 将所有的class放到数组中
      const classList = ["abc", "cba"];
      if (isActive) classList.push("active");
      // 3.class绑定的写法三: 第三方库classnames -> npm install classnames

      return (
        <div>
          {/* 1.基本属性绑定 */}
          <h2 title={title}>我是h2元素</h2>
          <img src={imgURL} />
          <a href={href}>百度一下</a>

          {/* 2.绑定class属性: 最好使用className */}
          <h2 className={className}>哈哈哈哈</h2>
          <h2 className={classList.join(" ")}>哈哈哈哈</h2>

          {/* 3.绑定style属性: 绑定对象类型 */}
          <h2 style={{ color: "red", fontSize: "30px" }}>呵呵呵呵</h2>
          <h2 style={objStyle}>呵呵呵呵</h2>
        </div>
      );
    }
  }

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

## 事件绑定

- 如果原生 DOM 添加一个监听事件，我们可以如何操作呢？
  - 方式一：获取元素 DOM，添加监听事件
  - 方式二：在 HTML 元素中，直接绑定 onclick
- 在 React 中是如何操作呢？我们来实现一下 React 中的事件监听，这里主要有两点不同
  - React 事件的**命名采用小驼峰式（camelCase），而不是纯小写**
  - 我们需要**通过{}传入一个事件处理函数**，这个函数会在事件发生时被执行

### this 的绑定问题

- 在事件执行后，我们可能需要获取当前类的对象中相关的属性，这个时候需要用到 this

  - 如果我们这里直接打印 this，会发现它是一个 undefined

- 为什么是 undefined 呢？

  - 原因是 btnClick 函数**并不是我们主动调用**的，而且当 button 发生点击时，**React 内部调用了 btnClick 函数**
  - 而它内部调用时，并不知道要如何绑定正确的 this

- 如何解决 this 的问题呢？

  - 方案一：bind 给 btnClick 显示绑定 this
  - 方案二：使用 ES6 class fields 语法
  - 方案三：事件监听时传入箭头函数（推荐）

  ```jsx
  const obj = {
    name: "obj",
    foo: function () {
      console.log("foo:", this);
    },
  };

  obj.foo();

  const config = {
    onClick: obj.foo.bind(obj),
  };

  const click = config.onClick;
  click();

  /*
  this的四种绑定规则:
    1.默认绑定 独立执行 foo()
    2.隐式绑定 被一个对象执行 obj.foo() -> obj
    3.显式绑定: call/apply/bind foo.call("aaa") -> String("aaa")
    4.new绑定: new Foo() -> 创建一个新对象, 并且赋值给this
  */

  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        message: "Hello World",
        counter: 100,
      };
      this.btn1Click = this.btn1Click.bind(this);
    }

    btn1Click() {
      this.setState({ counter: this.state.counter + 1 });
    }

    // class fields
    btn2Click = () => {
      this.setState({ counter: 1000 });
    };

    btn3Click() {
      this.setState({ counter: 9999 });
    }

    render() {
      const { message } = this.state;

      return (
        <div>
          {/* 1.this绑定方式一: bind绑定 */}
          <button onClick={this.btn1Click}>按钮1</button>

          {/* 2.this绑定方式二: ES6 class fields */}
          <button onClick={this.btn2Click}>按钮2</button>

          {/* 3.this绑定方式三: 直接传入一个箭头函数(重要) */}
          <button onClick={() => this.btn3Click()}>按钮3</button>

          <h2>当前计数: {this.state.counter}</h2>
        </div>
      );
    }
  }

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

### 参数传递

- 在执行事件函数时，有可能我们需要获取一些参数信息：比如 event 对象、其他参数
- 情况一：获取 event 对象

  - 很多时候我们需要拿到**event 对象**来做一些事情（比如阻止默认行为）
  - 那么默认情况下，**event 对象有被直接传入**，函数就可以获取到 event 对象

- 情况二：获取更多参数

  - 有更多参数时，我们最好的方式就是**传入一个箭头函数，主动执行的事件函数，并且传入相关的其他参数**

  ```jsx
  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        message: "Hello World",
      };
    }

    btnClick(event, name, age) {
      console.log("event:", event);
      console.log("name, age:", name, age);
    }

    render() {
      const { message } = this.state;

      return (
        <div>
          {/* 1.event参数的传递 */}
          <button onClick={this.btnClick.bind(this)}>按钮1</button>
          <button onClick={(event) => this.btnClick(event)}>按钮2</button>

          {/* 2.额外的参数传递 */}
          <button onClick={this.btnClick.bind(this, "kobe", 30)}>
            按钮3(不推荐)
          </button>

          <button onClick={(event) => this.btnClick(event, "shy", 18)}>
            按钮4
          </button>
        </div>
      );
    }
  }

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

## 条件渲染

- 某些情况下，界面的内容会根据不同的情况显示不同的内容，或者决定是否渲染某部分内容
  - 在 vue 中，我们会通过指令来控制：比如 v-if、v-show
  - 在 React 中，**所有的条件判断都和普通的 JavaScript 代码一致**

* 常见的条件渲染的方式有哪些呢？

* 方式一：条件判断语句
  - 适合逻辑较多的情况
* 方式二：三元运算符
  - 适合逻辑比较简单
* 方式三：与运算符&&
  - 适合如果条件成立，渲染某一个组件；如果条件不成立，什么内容也不渲染
* v-show 的效果
  - 主要是控制 display 属性是否为 none

```jsx
class App extends React.Component {
  constructor() {
    super();
    this.state = {
      message: "Hello World",
      isReady: false,
      friend: undefined,
    };
  }

  render() {
    const { isReady, friend } = this.state;

    // 1.条件判断方式一: 使用if进行条件判断
    let showElement = null;
    if (isReady) {
      showElement = <h2>准备开始比赛吧</h2>;
    } else {
      showElement = <h1>请提前做好准备!</h1>;
    }

    return (
      <div>
        {/* 1.方式一: 根据条件给变量赋值不同的内容 */}
        <div>{showElement}</div>

        {/* 2.方式二: 三元运算符 */}
        <div>{isReady ? <button>开始战斗!</button> : <h3>赶紧准备</h3>}</div>

        {/* 3.方式三: &&逻辑与运算 */}
        {/* 场景: 当某一个值, 有可能为undefined时, 使用&&进行条件判断 */}
        <div>{friend && <div>{friend.name + " " + friend.desc}</div>}</div>
      </div>
    );
  }
}

const root = ReactDOM.createRoot(document.querySelector("#root"));
root.render(<App />);
```

## 列表渲染

- 在 React 中并没有像 Vue 模板语法中的 v-for 指令，而且需要我们通过 JavaScript 代码的方式组织数据，转成 JSX

  - 很多从**Vue 转型到 React 的同学非常不习惯**，认为**Vue 的方式更加的简洁明了**
  - 但是**React 中的 JSX 正是因为和 JavaScript 无缝的衔接，让它可以更加的灵活**
  - 另外我经常会提到**React 是真正可以提高我们编写代码能力的一种方式**

- 如何展示列表呢？

  - 在 React 中，展示列表最多的方式就是使用数组的**map 高阶函数**

  ```jsx
  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        students: [
          { id: 111, name: "shy", score: 199 },
          { id: 112, name: "kobe", score: 98 },
          { id: 113, name: "james", score: 199 },
          { id: 114, name: "curry", score: 188 },
        ],
      };
    }

    render() {
      const { students } = this.state;

      return (
        <div>
          <h2>学生列表数据</h2>
          <div className="list">
            {students
              .filter((item) => item.score > 100)
              .slice(0, 2)
              .map((item) => {
                return (
                  <div className="item" key={item.id}>
                    <h2>学号: {item.id}</h2>
                    <h3>姓名: {item.name}</h3>
                    <h1>分数: {item.score}</h1>
                  </div>
                );
              })}
          </div>
        </div>
      );
    }
  }

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(<App />);
  ```

## JSX 的本质

- 实际上，jsx 仅仅只是 React.createElement(component, props, ...children) 函数的语法糖

  - 所有的 jsx 最终都会被转换成**React.createElement 的函数**调用

- createElement 需要传递三个参数

  - 参数一：type
    - 当前 ReactElement 的类型
    - 如果是标签元素，那么就使用字符串表示 “div”
    - 如果是组件元素，那么就直接使用组件的名称
  - 参数二：config
    - 所有 jsx 中的属性都在 config 中以对象的属性和值的形式存储
    - 比如传入 className 作为元素的 class
  - 参数三：children
    - 存放在标签中的内容，以 children 数组的方式进行存储

  ```html
  <script src="../lib/react.js"></script>
  <script src="../lib/react-dom.js"></script>

  <div id="root"></div>

  <script>
    class App extends React.Component {
      constructor() {
        super();
        this.state = {
          message: "Hello World",
        };
      }

      divClick() {
        console.log(1);
      }

      render() {
        const { message } = this.state;

        const element = React.createElement(
          "div",
          null,
          React.createElement(
            "div",
            { className: "content" },
            React.createElement("div", { onClick: this.divClick }, message)
          )
        );

        console.log(element); // Virtual DOM

        return element;
      }
    }

    const root = ReactDOM.createRoot(document.querySelector("#root"));
    root.render(React.createElement(App, null));
  </script>
  ```

## 虚拟 DOM 的创建过程

- 我们通过 React.createElement 最终创建出来一个 ReactElement 对象
- 这个 ReactElement 对象是什么作用呢？React 为什么要创建它呢？
  - 原因是 React 利用 ReactElement 对象组成了一个**JavaScript 的对象树**
  - JavaScript 的对象树就是**虚拟 DOM（Virtual DOM）**
- 如何查看 ReactElement 的树结构呢？
  - 我们可以将**之前的 jsx 返回结果进行打印**
- 而 ReactElement 最终形成的树结构就是 Virtual DOM

## 声明式编程

- 虚拟 DOM 帮助我们从命令式编程转到了声明式编程的模式
- React 官方的说法：Virtual DOM 是一种编程理念
  - 在这个理念中，UI 以一种理想化或者说虚拟化的方式保存在内存中，并且它是一个相对简单的 JavaScript 对象
  - 我们可以通过 ReactDOM.render 让 虚拟 DOM 和 真实 DOM 同步起来，这个过程中叫做协调（Reconciliation）
- 这种编程的方式赋予了 React 声明式的 API
  - 你只需要告诉 React 希望让 UI 是什么状态
  - React 来确保 DOM 和这些状态是匹配的
  - 你不需要直接进行 DOM 操作，就可以从手动更改 DOM、属性操作、事件处理中解放出来

# React 脚手架

## 前端工程的复杂化

- 如果我们只是开发几个小的 demo 程序，那么永远不需要考虑一些复杂的问题
  - 比如目录结构如何组织划分、如何管理文件之间的相互依赖、如何管理第三方模块的依赖、项目发布前如何压缩、打包项目
- 现代的前端项目已经越来越复杂了
  - 不会再是在 HTML 中引入几个 css 文件，引入几个编写的 js 文件或者第三方的 js 文件这么简单
  - 比如 css 可能是使用 less、sass 等预处理器进行编写，我们需要将它们转成普通的 css 才能被浏览器解析
  - 比如 JavaScript 代码不再只是编写在几个文件中，而是通过模块化的方式，被组成在**成百上千**个文件中，我们需要通过模块化的技术来管理它们之间的相互依赖
  - 比如项目需要依赖很多的第三方库，如何更好的管理它们（比如管理它们的依赖、版本升级等）
- 为了解决上面这些问题，我们需要再去学习一些工具
  - 比如 babel、webpack、gulp，配置它们转换规则、打包依赖、热更新等等一些的内容
  - 脚手架的出现，就是帮助我们解决这一系列问题的

## 脚手架是什么呢

- 传统的脚手架指的是建筑学的一种结构：在搭建楼房、建筑物时，临时搭建出来的一个框架
- 编程中提到的脚手架（Scaffold），其实是一种工具，帮我们快速生成项目的工程化结构
  - 每个项目做出完成的效果不同，但是它们的**基本工程化结构**是相似的
  - 既然相似，就没有必要每次都**从零开始搭建**，完全可以**使用一些工具，帮助我们生产基本的工程化模板**
  - 不同的项目，**在这个模板的基础之上进行项目开发或者进行一些配置的简单修改即可**
  - 这样也可以间接保证**项目的基本结构一致性，方便后期的维护**
- 总结：**脚手架让项目从搭建到开发，再到部署，整个流程变得快速和便捷**

## 前端脚手架

- 对于现在比较流行的三大框架都有属于自己的脚手架

  - Vue 的脚手架：**@vue/cli**
  - Angular 的脚手架：**@angular/cli**
  - React 的脚手架：**create-react-app**

- 它们的作用都是帮助我们生成一个通用的目录结构，并且已经将我们所需的工程环境配置好
- 使用这些脚手架需要依赖什么呢？
  - 目前这些脚手架都是**使用 node 编写**的，并且都是**基于 webpack 的**
  - 所以我们必须在自己的电脑上**安装 node 环境**

## 创建项目

- 创建 React 项目的命令如下

  - 注意：项目名称**不能包含大写字母**
  - 另外还有更多创建项目的方式，可以参考 GitHub 的 readme
  - **create-react-app 项目名称**

- 创建完成后，进入对应的目录，就可以将项目跑起来
  - **cd xxx**
  - **npm run start**

## PWA

- 整个目录结构都非常好理解，只是有一个 PWA 相关的概念
  - PWA 全称**Progressive Web App**，即**渐进式 WEB 应用**
  - 一个 PWA 应用首先是**一个网页**, 可以**通过 Web 技术编写出一个网页应用**
  - 随后添加上 **App Manifest** 和 **Service Worker** 来实现 PWA 的**安装和离线**等功能
  - 这种 Web 存在的形式，我们也称之为是 **Web App**
- PWA 解决了哪些问题呢？
  - 可以**添加至主屏幕**，点击主屏幕图标可以实现启动动画以及隐藏地址栏
  - 实现**离线缓存功能**，即使用户手机没有网络，依然可以使用一些离线功能
  - 实现了**消息推送**
  - 等等一系列类似于 Native App 相关的功能
- 更多 PWA 相关的知识，可以自行去学习更多
  - https://developer.mozilla.org/zh-CN/docs/Web/Progressive_web_apps

## 脚手架中的 webpack

- React 脚手架默认是基于 Webpack 来开发的
- 但是，很奇怪：我们并没有在目录结构中看到任何 webpack 相关的内容？
  - 原因是 React 脚手架**将 webpack 相关的配置隐藏起来了**（其实从 Vue CLI3 开始，也是进行了隐藏）
- 如果我们希望看到 webpack 的配置信息，应该怎么来做呢？
- 我们可以执行一个 package.json 文件中的一个脚本：**"eject": "react-scripts eject"**
- 这个操作是不可逆的，所以在执行过程中会给与我们提示
- **npm run eject**

# React 组件化

## 什么是组件化开发呢

- 组件化是一种分而治之的思想

  - 如果我们将**一个页面中所有的处理逻辑全部放在一起**，**处理起来就会变得非常复杂**，而且不利于后续的管理以及扩展
  - 但如果，我们将**一个页面拆分成一个个小的功能块**，每个功能块完成属于自己这部分独立的功能，那么之后整个页面的管理和维护就变得非常容易了

- 我们需要通过组件化的思想来思考整个应用程序
  - 我们将一个完整的页面分成很多个组件
  - 每个组件都用于实现页面的一个功能块
  - 而每一个组件又可以进行细分
  - 而组件本身又可以在多个地方进行复用

## React 的组件化

- 组件化提供了一种抽象，让我们可以开发出一个个独立可复用的小组件来构造我们的应用

- 任何的应用都会被抽象成一颗组件树

  ![](https://s3.bmp.ovh/imgs/2022/09/07/199b272e29928039.jpg)

- 组件化思想的应用

  - 有了组件化的思想，我们在之后的开发中就要充分的利用它
  - 尽可能的将页面拆分成一个个小的、可复用的组件
  - 这样让我们的代码更加方便组织和管理，并且扩展性也更强

- React 的组件相对于 Vue 更加的灵活和多样，按照不同的方式可以分成很多类别的组件

  - **根据组件的定义方式**，可以分为：**函数组件**和**类组件**

  - **根据组件内部是否有状态需要维护**，可以分成：**无状态组件**和**有状态组件**

  - **根据组件的不同职责**，可以分成：**展示型组件**和**容器型组件**

- 这些概念有很多重叠，但是他们最主要是关注数据逻辑和 UI 展示的分离
  - **函数组件、无状态组件、展示型组件**主要关注 UI 的展示
  - **类组件、有状态组件、容器型组件**主要关注数据逻辑
- 当然还有很多组件的其他概念：比如异步组件、高阶组件等

## 类组件

- 类组件的定义有如下要求

  - **组件的名称是大写字符开头**（无论类组件还是函数组件）
  - 类组件需要**继承自 React.Component**
  - 类组件必须实现**render 函数**

- 在 ES6 之前，可以通过 create-react-class 模块来定义类组件，但是目前官网建议我们使用 ES6 的 class 类定义
- 使用 class 定义一个组件
  - constructor 是可选的，我们通常在 constructor 中初始化一些数据
  - this.state 中维护的就是我们组件内部的数据
  - **render()** 函数是 class 组件中**唯一必须实现的方法**

## render 函数的返回值

- 当 render 被调用时，它会检查 this.props 和 this.state 的变化并返回以下类型之一

  - **React 元素：**

    - 通常通过 JSX 创建
    - 例如，`<div />` 会被 React 渲染为 DOM 节点，`<MyComponent />` 会被 React 渲染为自定义组件
    - 无论是 `<div />` 还是 `<MyComponent />` 均为 React 元素

  - <b>数组或 fragments：</b>使得 render 方法可以返回多个元素
  - <b>Portals：</b>可以渲染子节点到不同的 DOM 子树中
  - <b>字符串或数值类型：</b>它们在 DOM 中会被渲染为文本节点
  - <b>布尔类型或 null：</b>什么都不渲染

  ```jsx
  import React from "react";

  class App extends React.Component {
    constructor() {
      super();
      this.state = {
        message: "App Component",
      };
    }

    render() {
      // const { message } = this.state
      // 1.react元素: 通过jsx编写的代码就会被编译成React.createElement, 所以返回的就是一个React元素
      // return <h2>{message}</h2>

      // 2.组件或者fragments(后续学习)
      // return ["abc", "cba", "nba"]
      // return [
      //   <h1>h1元素</h1>,
      //   <h2>h2元素</h2>,
      //   <div>哈哈哈</div>
      // ]

      // 3.字符串/数字类型
      // return "Hello World"

      return true;
    }
  }

  export default App;
  ```

## 函数组件

- 函数组件是**使用 function 来进行定义的函数**，只是**这个函数会返回和类组件中 render 函数返回一样的内容**

- 函数组件有自己的特点（当然，配合 hooks，就不一样了）

  - 没有生命周期，也会被更新并挂载，但是没有生命周期函数
  - this 关键字不能指向组件实例（因为没有组件实例）
  - 没有内部状态（state）

- 我们来定义一个函数组件

  ```jsx
  function App(props) {
    // 返回值: 和类组件中render函数返回的是一致
    return <h1>App Functional Component</h1>;
  }

  export default App;
  ```

## 认识生命周期

- 很多的事物都有从创建到销毁的整个过程，这个过程称之为是**生命周期**
- React 组件也有自己的生命周期，了解组件的生命周期可以让我们**在最合适的地方完成自己想要的功能**

- 生命周期和生命周期函数的关系
  - **生命周期**是一个**抽象的概念**，在生命周期的整个过程，分成了很多个阶段
    - 比如装载阶段（Mount），组件第一次在 DOM 树中被渲染的过程
    - 比如更新过程（Update），组件状态发生变化，重新更新渲染的过程
    - 比如卸载过程（Unmount），组件从 DOM 树中被移除的过程
- React 内部为了告诉我们当前处于哪些阶段，会对我们组件内部实现的**某些函数进行回调**，这些函数就是**生命周期函数**
  - 比如实现 componentDidMount 函数：组件已经挂载到 DOM 上时，就会回调
  - 比如实现 componentDidUpdate 函数：组件已经发生了更新时，就会回调
  - 比如实现 componentWillUnmount 函数：组件即将被移除时，就会回调
  - 我们可以在这些回调函数中编写自己的逻辑代码，来完成自己的需求功能
- 我们谈 React 生命周期时，主要谈的类的生命周期，因为函数式组件是没有生命周期函数的（后面我们可以通过 hooks 来模拟一些生命周期的回调）

### 生命周期解析

- 我们先来学习一下最基础、最常用的生命周期函数

  ![](https://s3.bmp.ovh/imgs/2022/09/16/8560fb6c599c8085.png)

### 生命周期函数

- constructor
  - 如果不初始化 state 或不进行方法绑定，则不需要为 React 组件实现构造函数
  - constructor 中通常只做两件事情
    - 通过给 this.state 赋值对象来初始化内部的 state
    - 为事件绑定实例（this）
- componentDidMount

  - componentDidMount() 会在组件挂载后（插入 DOM 树中）立即调用
    - 依赖于 DOM 的操作可以在这里进行
    - 在此处发送网络请求就最好的地方（官方建议）
    - 可以在此处添加一些订阅（会在 componentWillUnmount 取消订阅）

- componentDidUpdate

  - componentDidUpdate() 会在更新后会被立即调用，首次渲染不会执行此方法
    - 当组件更新后，可以在此处对 DOM 进行操作
    - 如果你对更新前后的 props 进行了比较，也可以选择在此处进行网络请求；（例如，当 props 未发生变化时，则不会执行网络请求）

- componentWillUnmount
  - componentWillUnmount() 会在组件卸载及销毁之前直接调用
    - 在此方法中执行必要的清理操作
    - 例如，清除 timer，取消网络请求或清除在 componentDidMount() 中创建的订阅等

### 不常用生命周期函数

- 除了上面介绍的生命周期函数之外，还有一些不常用的生命周期函数

  - getDerivedStateFromProps：state 的值在任何时候都依赖于 props 时使用；该方法返回一个对象来更新 state

  - getSnapshotBeforeUpdate：在 React 更新 DOM 之前回调的一个函数，可以获取 DOM 更新前的一些信息（比如说滚动位置）

  - shouldComponentUpdate：该生命周期函数很常用

  ![](https://s3.bmp.ovh/imgs/2022/09/16/a8fc58ec84fd5595.png)

- 更详细的生命周期相关的内容，可以参考官网：https://zh-hans.reactjs.org/docs/react-component.html

  ```jsx
  import React from "react";
  import HelloWorld from "./HelloWorld";

  class App extends React.Component {
    constructor() {
      super();

      this.state = { isShowHW: true };
    }

    switchHWShow() {
      this.setState({ isShowHW: !this.state.isShowHW });
    }

    render() {
      const { isShowHW } = this.state;

      return (
        <div>
          哈哈哈
          <button onClick={(e) => this.switchHWShow()}>切换</button>
          {isShowHW && <HelloWorld />}
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React from "react";

  class HelloWorld extends React.Component {
    // 1.构造方法: constructor
    constructor() {
      console.log("HelloWorld constructor");
      super();

      this.state = {
        message: "Hello World",
      };
    }

    changeText() {
      this.setState({ message: "你好啊, 李银河" });
    }

    // 2.执行render函数
    render() {
      console.log("HelloWorld render");
      const { message } = this.state;

      return (
        <div>
          <h2>{message}</h2>
          <p>{message}是程序员的第一个代码!</p>
          <button onClick={(e) => this.changeText()}>修改文本</button>
        </div>
      );
    }

    // 3.组件被渲染到DOM: 被挂载到DOM
    componentDidMount() {
      console.log("HelloWorld componentDidMount");
    }

    // 4.组件的DOM被更新完成： DOM发生更新
    componentDidUpdate(prevProps, prevState, snapshot) {
      console.log(
        "HelloWorld componentDidUpdate:",
        prevProps,
        prevState,
        snapshot
      );
    }

    // 5.组件从DOM中卸载掉： 从DOM移除掉
    componentWillUnmount() {
      console.log("HelloWorld componentWillUnmount");
    }

    // 不常用的生命周期补充
    shouldComponentUpdate() {
      return true;
    }

    getSnapshotBeforeUpdate() {
      console.log("getSnapshotBeforeUpdate");
      return {
        scrollPosition: 1000,
      };
    }
  }

  export default HelloWorld;
  ```

## 认识组件间的通信

- 父组件在展示子组件，可能会传递一些数据给子组件

  - 父组件通过 **属性=值** 的形式来传递给子组件数据
  - 子组件通过 **props** 参数获取父组件传递过来的数据

  ```jsx
  import React, { Component } from "react";
  import MainBanner from "./MainBanner";

  export class Main extends Component {
    render() {
      return (
        <div className="main">
          <div>Main</div>
          <MainBanner title="轮播图" />
        </div>
      );
    }
  }

  export default Main;
  ```

  ```jsx
  import React, { Component } from "react";

  export class MainBanner extends Component {
    render() {
      return <div className="banner">{this.props.title}</div>;
    }
  }

  export default MainBanner;
  ```

### propTypes

- 对于传递给子组件的数据，有时候我们可能希望进行验证，特别是对于大型项目来说

  - 当然，如果你项目中默认继承了 Flow 或者 TypeScript，那么直接就可以进行类型验证
  - 但是，即使我们没有使用 Flow 或者 TypeScript，也可以通过 prop-types 库来进行参数验证

- 从 React v15.5 开始，React.PropTypes 已移入另一个包中：prop-types 库

- 更多的验证方式，可以参考官网：https://zh-hans.reactjs.org/docs/typechecking-with-proptypes.html

  - 比如验证数组，并且数组中包含哪些元素
  - 比如验证对象，并且对象中包含哪些 key 以及 value 是什么类型
  - 比如某个原生是必须的，使用 requiredFunc: PropTypes.func.isRequired

- 如果没有传递，我们希望有默认值呢？

  - 我们使用 defaultProps 就可以了

  ```jsx
  import React, { Component } from "react";
  import PropTypes from "prop-types";

  export class MainBanner extends Component {
    render() {
      return <div className="banner">{this.props.title}</div>;
    }
  }

  // MainBanner传入的props类型进行验证
  MainBanner.propTypes = {
    title: PropTypes.string,
  };

  // MainBanner传入的props的默认值
  MainBanner.defaultProps = {
    title: "默认标题",
  };

  export default MainBanner;
  ```

### 子传父

- 某些情况，我们也需要子组件向父组件传递消息

  - 在 React 中同样是通过 props 传递消息，只是让父组件给子组件传递一个回调函数，在子组件中调用这个函数即可

  ```jsx
  import React, { Component } from "react";
  import AddCounter from "./AddCounter";
  import SubCounter from "./SubCounter";

  export class App extends Component {
    constructor() {
      super();
      this.state = {
        counter: 100,
      };
    }

    changeCounter(count) {
      this.setState({ counter: this.state.counter + count });
    }

    render() {
      const { counter } = this.state;

      return (
        <div>
          <h2>当前计数: {counter}</h2>
          <AddCounter addClick={(count) => this.changeCounter(count)} />
          <SubCounter subClick={(count) => this.changeCounter(count)} />
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { Component } from "react";

  export class AddCounter extends Component {
    render() {
      return <button onClick={(e) => this.props.addClick(1)}>+1</button>;
    }
  }

  export default AddCounter;
  ```

  ```jsx
  import React, { Component } from "react";

  export class SubCounter extends Component {
    render() {
      return <button onClick={(e) => this.props.subClick(-1)}>-1</button>;
    }
  }

  export default SubCounter;
  ```

## 插槽

- 在开发中，我们抽取了一个组件，但是为了让这个组件具备更强的通用性，我们不能将组件中的内容限制为固定的 div、span 等等这些元素
- 我们应该让使用者可以决定某一块区域到底存放什么内容
- 这种需求在 Vue 当中有一个固定的做法是通过 slot 来完成的，React 呢？
- React 对于这种需要插槽的情况非常灵活，有两种方案可以实现
  - 组件的**children**子元素
  - **props**属性传递 React 元素

### children

- 每个组件都可以获取到 props.children：它包含组件的开始标签和结束标签之间的内容

  ```jsx
  import React, { Component } from "react";
  import NavBar from "./nav-bar";

  export class App extends Component {
    render() {
      return (
        <div>
          <NavBar>
            <button>按钮</button>
            <h2>哈哈哈</h2>
            <i>斜体文本</i>
          </NavBar>
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { Component } from "react";

  export class NavBar extends Component {
    render() {
      const { children } = this.props;
      console.log(children);

      return (
        <div className="nav-bar">
          <div className="left">{children[0]}</div>
          <div className="center">{children[1]}</div>
          <div className="right">{children[2]}</div>
        </div>
      );
    }
  }

  export default NavBar;
  ```

### props

- 通过 children 实现的方案虽然可行，但是有一个弊端：通过索引值获取传入的元素很容易出错，不能精准的获取传入的原生

- 另外一个种方案就是使用 props 实现

  - 通过具体的属性名，可以让我们在传入和获取时更加的精准

  ```jsx
  import React, { Component } from "react";
  import NavBar from "./nav-bar";

  export class App extends Component {
    getTabItem(item) {
      if (item === "span") {
        return <span>{item}</span>;
      } else if (item === "button") {
        return <button>{item}</button>;
      } else {
        return <i>{item}</i>;
      }
    }

    render() {
      const btn = <button>按钮</button>;

      return (
        <div>
          <NavBar
            leftSlot={btn}
            // 作用域插槽
            centerSlot={(item) => this.getTabItem(item)}
            rightSlot={<i>斜体</i>}
          />
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { Component } from "react";

  export class NavBar extends Component {
    render() {
      const { leftSlot, centerSlot, rightSlot } = this.props;

      return (
        <div className="nav-bar">
          <div className="left">{leftSlot}</div>
          <div className="center">{centerSlot("span")}</div>
          <div className="right">{rightSlot}</div>
        </div>
      );
    }
  }

  export default NavBar;
  ```

## context

- 非父子组件数据的共享
  - 在开发中，比较常见的数据传递方式是通过 props 属性自上而下（由父到子）进行传递
  - 但是对于有一些场景：比如一些数据需要在多个组件中进行共享（地区偏好、UI 主题、用户登录状态、用户信息等）
  - 如果我们在顶层的 App 中定义这些信息，之后一层层传递下去，那么对于一些中间层不需要数据的组件来说，是一种冗余的操作
- 我们实现一个一层层传递的案例

  - 我这边顺便补充一个小的知识点：[Spread Attributes](https://legacy.reactjs.org/docs/jsx-in-depth.html#spread-attributes)

- 如果层级更多的话，一层层传递是非常麻烦，并且代码是非常冗余的
  - React 提供了一个 API：**Context**
  - Context 提供了一种**在组件之间共享此类值的方式**，而**不必显式地通过组件树的逐层传递 props**
  - Context 设计目的是为了**共享那些对于一个组件树而言是 "全局" 的数据**，例如当前认证的用户、主题或首选语言

### API

- React.createContext
  - 创建一个需要共享的 Context 对象
  - 如果一个组件订阅了 Context，那么这个组件会从离自身最近的那个匹配的 Provider 中读取到当前的 context 值
  - defaultValue 是组件在顶层查找过程中没有找到对应的 Provider，那么就使用默认值
- Context.Provider

  - 每个 Context 对象都会返回一个 Provider React 组件，它允许消费组件订阅 context 的变化
  - Provider 接收一个 value 属性，传递给消费组件
  - 一个 Provider 可以和多个消费组件有对应关系
  - 多个 Provider 也可以嵌套使用，里层的会覆盖外层的数据
  - 当 Provider 的 value 值发生变化时，它内部的所有消费组件都会重新渲染

- Class.contextType
  - 挂载在 class 上的 contextType 属性会被重新赋值为一个由 React.createContext() 创建的 Context 对象
  - 这能让你使用 this.context 来消费最近 Context 上的那个值
  - 你可以在任何生命周期中访问到它，包括 render 函数中
- Context.Consumer
  - 这里，React 组件也可以订阅到 context 变更。这能让你在 函数式组件 中完成订阅 context
  - 这里需要 函数作为子元素（function as child）这种做法
  - 这个函数接收当前的 context 值，返回一个 React 节点

### 代码演练

- 什么时候使用 Context.Consumer 呢？

  - 当使用 value 的组件是一个**函数式组件**时
  - 当组件中需要使用**多个 Context**时

  ```js
  import React from "react";

  const ThemeContext = React.createContext({
    message: "ThemeContext - 默认值",
  });
  export default ThemeContext;
  ```

  ```js
  import React from "react";

  const UserContext = React.createContext({ message: "UserContext  - 默认值" });
  export default UserContext;
  ```

  ```jsx
  import React, { Component } from "react";

  import ThemeContext from "./context/theme-context";
  import UserContext from "./context/user-context";

  import Home from "./Home";

  export class App extends Component {
    constructor() {
      super();
      this.state = { name: "张三", age: 18 };
    }

    render() {
      return (
        <div>
          <h2>App</h2>
          <UserContext.Provider value={this.state}>
            <ThemeContext.Provider value={{ color: "red", size: 20 }}>
              <Home />
            </ThemeContext.Provider>
          </UserContext.Provider>
          {/* <Home /> 这种情况下才会使用默认值 */}
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { Component } from "react";
  import ThemeContext from "./context/theme-context";
  import UserContext from "./context/user-context";

  export class Home extends Component {
    render() {
      return (
        <div>
          <h2>
            ThemeContext: {this.context.color} - {this.context.size}
          </h2>
          {/* 在函数组件中使用下面这种方式 */}
          <UserContext.Consumer>
            {(value) => {
              return (
                <h2>
                  UserContext: {value.name} - {value.age}
                </h2>
              );
            }}
          </UserContext.Consumer>
        </div>
      );
    }
  }

  Home.contextType = ThemeContext;

  export default Home;
  ```

## setState

- 开发中我们并不能直接通过修改 state 的值来让界面发生更新

  - 因为我们修改了 state 之后，希望 React 根据最新的 State 来重新渲染界面，但是这种方式的修改 React 并不知道数据发生了变化
  - React 并没有实现类似于 Vue2 中的 Object.defineProperty 或者 Vue3 中的 Proxy 的方式来监听数据的变化
  - 我们**必须通过 setState 来告知 React 数据已经发生了变化**

- 疑惑：在组件中并没有实现 setState 的方法，为什么可以调用呢？
  - 原因很简单，**setState 方法**是从**Component 中继承过来**的

### 异步更新

- setState 的更新是异步的？

  - 最终打印结果是 Hello World
  - 可见 setState 是异步的操作，我们并不能在执行完 setState 之后立马拿到最新的 state 的结果

  ```jsx
  import React, { Component } from "react";

  class App extends Component {
    constructor(props) {
      super(props);
      this.state = { message: "Hello World" };
    }

    changeText() {
      this.setState({ message: "你好啊, 李银河" });
      console.log(this.state.message); // Hello World
    }

    render() {
      return (
        <div>
          <h2>{this.state.message}</h2>
          <button onClick={() => this.changeText()}>changeText</button>
        </div>
      );
    }
  }

  export default App;
  ```

- 为什么 setState 设计为异步呢？

  - setState 设计为异步其实之前在 GitHub 上也有很多的讨论
  - React 核心成员（Redux 的作者）Dan Abramov 也有对应的回复
  - https://github.com/facebook/react/issues/11527#issuecomment-360199710

- 我对其回答做一个简单的总结

  - setState 设计为异步，可以显著的**提升性能**
  - 如果每次调用 setState 都进行一次更新，那么意味着 render 函数会被频繁调用，界面重新渲染，这样效率是很低的

  * 最好的办法应该是**获取到多个更新**，之后进行**批量更新**

- **如果同步更新了 state，但是还没有执行 render 函数，那么 state 和 props 不能保持同步**

  - state 和 props 不能保持一致性，会在开发中产生很多的问题

  ```jsx
  import React, { Component } from "react";

  function Hello(props) {
    return <h2>Hello: {props.counter}</h2>;
  }

  export class App extends Component {
    constructor(props) {
      super(props);
      this.state = { counter: 0 };
    }

    increment() {
      this.setState((state) => ({ counter: state.counter + 1 }));
      this.setState((state) => ({ counter: state.counter + 1 }));
      this.setState((state) => ({ counter: state.counter + 1 }));
    }

    render() {
      const { counter } = this.state;
      console.log("render被执行");

      return (
        <div>
          <h2>App: {counter}</h2>
          <button onClick={() => this.increment()}>increment</button>

          <Hello counter={counter} />
        </div>
      );
    }
  }

  export default App;
  ```

### 获取异步的结果

- 那么如何可以获取到更新后的值呢？

  - setState 的回调
    - setState 接受两个参数：第二个参数是一个回调函数，这个回调函数会在更新后会执行
    - 格式如下：setState(partialState, callback)

  ```jsx
  import React, { Component } from "react";

  export class App extends Component {
    constructor(props) {
      super(props);
      this.state = { message: "Hello World" };
    }

    changeText() {
      // 1.基本使用
      // this.setState({ message: "你好啊, 李银河" });

      // 2.传入一个回调函数
      // 好处一: 可以在回调函数中编写新的state的逻辑
      // 好处二: 当前的回调函数会将之前的state和props传递进来
      // this.setState((state, props) => {
      //   // 1.编写一些对新的state处理逻辑
      //   // 2.可以获取之前的state和props值
      //   console.log(this.state.message, this.props);

      //   return { message: "你好啊, 李银河" };
      // });

      // 3.setState在React的事件处理中是一个异步调用
      // 如果希望在数据更新之后(数据合并), 获取到对应的结果执行一些逻辑代码
      // 那么可以在setState中传入第二个参数: callback
      this.setState({ message: "你好啊, 李银河" }, () => {
        console.log("callback", this.state.message);
      });
      console.log(this.state.message);
    }
    render() {
      return (
        <div>
          <h2>{this.state.message}</h2>
          <button onClick={() => this.changeText()}>changeText</button>
        </div>
      );
    }
  }

  export default App;
  ```

### React18 之前

- 验证一：在 setTimeout 中的更新
- 验证二：原生 DOM 事件
- 其实分成两种情况
  - 在组件**生命周期或 React 事件**中，setState 是**异步**
  - 在**setTimeout**，**Promise.then**，**原生 dom 事件**中，setState 是**同步**

### React18 之后

- 在 React18 之后，默认所有的操作都被放到了批处理中（异步处理）

  - https://react.docschina.org/blog/2022/03/29/react-v18.html#whats-new-in-react-18

- 如果希望代码可以同步会拿到，则需要执行特殊的 flushSync 操作

  ```jsx
  import React, { Component } from "react";
  import { flushSync } from "react-dom";

  function Hello(props) {
    return <h2>Hello: {props.message}</h2>;
  }

  export class App extends Component {
    constructor(props) {
      super(props);
      this.state = { message: "Hello World" };
    }

    changeText() {
      setTimeout(() => {
        // 在react18之前, setTimeout中setState操作, 是同步操作
        // 在react18之后, setTimeout中setState异步操作(批处理)
        flushSync(() => {
          this.setState({ message: "你好啊, 李银河" });
        });
        console.log("setTimeout", this.state.message);
      }, 0);
    }

    render() {
      const { message } = this.state;
      console.log("render被执行");

      return (
        <div>
          <h2>App: {message}</h2>
          <button onClick={() => this.changeText()}>changeText</button>

          <Hello message={message} />
        </div>
      );
    }
  }

  export default App;
  ```

## 性能优化

### 更新机制

- React 的**渲染流程**

  ![](https://s3.bmp.ovh/imgs/2022/09/21/538c8291721e97ad.png)

- React 的**更新流程**

  ![](https://s3.bmp.ovh/imgs/2022/09/21/d083d541662f30a2.png)

### 更新流程

- React 在 props 或 state 发生改变时，会调用 React 的 render 方法，会创建一颗不同的树

- React 需要基于这两颗不同的树之间的差别来判断如何有效的更新 UI

  - 如果一棵树参考另外一棵树进行完全比较更新，那么即使是最先进的算法，该算法的复杂程度为 O (n²)，其中 n 是树中元素的数量

  - 如果在 React 中使用了该算法，那么展示 1000 个元素所需要执行的计算量将在十亿的量级范围
  - 这个开销太过昂贵了，React 的更新性能会变得非常低效
  - https://grfia.dlsi.ua.es/ml/algorithms/references/editsurvey_bille.pdf

- 于是，React 对这个算法进行了优化，将其优化成了 O(n)，如何优化的呢？

  - 同层节点之间相互比较，不会**垮节点比较**
  - 不同类型的节点，产生不同的树结构（div 节点，span 节点）
  - 开发中，可以通过 key 来指定哪些节点在不同的渲染下保持稳定

### keys 的优化

- 方式一：在最后位置插入数据
  - 这种情况，有无 key 意义并不大
- 方式二：在前面插入数据
  - 这种做法，在没有 key 的情况下，所有的 li 都需要进行修改
- 当子元素(这里的 li)拥有 key 时，React 使用 key 来匹配原有树上的子元素以及最新树上的子元素
  - 在下面这种场景下，key 为 111 和 222 的元素仅仅进行位移，不需要进行任何的修改
  - 将 key 为 333 的元素插入到最前面的位置即可
- key 的注意事项
  - key 应该是唯一的
  - key 不要使用随机数（随机数在下一次 render 时，会重新生成一个数字）
  - 使用 index 作为 key，对性能是没有优化的

### render 函数被调用

- 我们使用之前的一个嵌套案例

  - 在 App 中，我们增加了一个计数器的代码
  - 当点击+1 时，会重新调用 App 的 render 函数
  - 而当 App 的 render 函数被调用时，所有的子组件的 render 函数都会被重新调用

- 那么，我们可以思考一下，在以后的开发中，我们只要是修改了 App 中的数据，**所有的组件都需要重新 render，进行 diff 算法，性能必然是很低的**
  - 事实上，**很多的组件没有必须要重新 render**
  - 它们调用 render 应该有一个前提，就是依赖的数据（state、props）发生改变时，再调用自己的 render 方法
- 如何来控制 render 方法是否被调用呢？
  - 通过**shouldComponentUpdate**方法即可

### shouldComponentUpdate

- React 给我们提供了一个生命周期方法 shouldComponentUpdate（很多时候，我们简称为 SCU），这个方法接受参数，并且需要有返回值
- 该方法有两个参数

  - 参数一：**newProps** 修改之后，最新的 props 属性
  - 参数二：**newState** 修改之后，最新的 state 属性

- 该方法返回值是一个 boolean 类型

  - 返回值为 true，那么就需要调用 render 方法
  - 返回值为 false，那么久不需要调用 render 方法
  - 默认返回的是 true，也就是只要 state 发生改变，就会调用 render 方法

- 比如我们在 App 中增加一个 message 属性

  - jsx 中并没有依赖这个 message，那么它的改变不应该引起重新渲染
  - 但是因为 render 监听到 state 的改变，就会重新 render，所以最后 render 方法还是被重新调用了

  ```jsx
  import React, { Component } from "react";
  import Home from "./Home";

  class App extends Component {
    constructor() {
      super();
      this.state = { message: "Hello World", counter: 0 };
    }

    shouldComponentUpdate(newProps, newState) {
      // App进行性能优化的点
      if (
        this.state.message !== newState.message ||
        this.state.counter !== newState.counter
      ) {
        return true;
      }
      return false;
    }

    changeText() {
      this.setState({ message: "你好啊,李银河!" });
    }

    increment() {
      this.setState({ counter: this.state.counter + 1 });
    }

    render() {
      console.log("App render");
      const { message, counter } = this.state;

      return (
        <div>
          <h2>
            App Page: {message} - {counter}
          </h2>
          <button onClick={() => this.changeText()}>changeText</button>
          <button onClick={() => this.increment()}>increment</button>

          <Home message={message} />
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import { memo } from "react";

  const Home = memo(function (props) {
    console.log("Home render");
    return (
      <div>
        <h2>Home Page: {props.message}</h2>
      </div>
    );
  });

  export default Home;
  ```

### PureComponent

- 如果所有的类，我们都需要手动来实现 shouldComponentUpdate，那么会给我们开发者增加非常多的工作量

  - 我们来设想一下 shouldComponentUpdate 中的各种判断的目的是什么
  - props 或者 state 中的数据是否发生了改变，来决定 shouldComponentUpdate 返回 true 或者 false

- 事实上 React 已经考虑到了这一点，所以 React 已经默认帮我们实现好了，如何实现呢

  - 将 class 继承自**PureComponent**

  - 这个方法中，调用 !shallowEqual(oldProps, newProps) || !shallowEqual(oldState, newState)，这个 shallowEqual 就是进行浅层比较

  ```jsx
  import React from "react";

  export class App extends React.PureComponent {
    constructor() {
      super();
      this.state = { list: [1, 2, 3, 4, 5] };
    }

    btn1Click() {
      this.state.list.push(6);
      this.setState({ list: this.state.list });
    }

    render() {
      return (
        <div>
          <button onClick={() => this.btn1Click()}>btn1Click</button>
          <h2>{this.state.list}</h2>
        </div>
      );
    }
  }

  export default App;
  ```

  ```js
  function checkShouldComponentUpdate(
    workInProgress,
    ctor,
    oldProps,
    newProps,
    oldState,
    newState,
    nextContext
  ) {
    if (ctor.prototype && ctor.prototype.isPureReactComponent) {
      return (
        !shallowEqual(oldProps, newProps) || !shallowEqual(oldState, newState)
      );
    }
    return true;
  }
  ```

  ```js
  function is(x, y) {
    return (x === y && (x !== 0 || 1 / x === 1 / y)) || (x !== x && y !== y);
  }

  var objectIs = typeof Object.is === "function" ? Object.is : is; // 判断你的浏览器支不支持 Object.is 方法
  // Object.is() 方法判断两个值是否为同一个值
  // https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Object/is#%E4%BD%BF%E7%94%A8_object.is

  function shallowEqual(objA, objB) {
    // objA {list: Array(6)}
    // objB {list: Array(6)}

    // 如果是同一个对象就不更新
    if (objectIs(objA, objB)) {
      console.log("objectIs");
      return true;
    }

    if (
      typeof objA !== "object" ||
      objA === null ||
      typeof objB !== "object" ||
      objB === null
    ) {
      console.log("不是引用类型");
      return false;
    }

    var keysA = Object.keys(objA);
    var keysB = Object.keys(objB);
    // 旧值 和 新值长度不一样直接更新
    if (keysA.length !== keysB.length) {
      console.log("长度不一样");
      return false;
    }

    for (var i = 0; i < keysA.length; i++) {
      var currentKey = keysA[i];
      // hasOwnProperty.call(objB, currentKey) 检查 新对象 有没有 旧对象 的属性
      // objectIs(objA[currentKey], objB[currentKey]) 判断是不是同一个值
      if (
        !hasOwnProperty.call(objB, currentKey) ||
        !objectIs(objA[currentKey], objB[currentKey])
      ) {
        return false;
      }
    }
    return true;
  }
  ```

### memo

- 目前我们是针对类组件可以使用 PureComponent，那么函数式组件呢？

  - 事实上函数式组件我们在 props 没有改变时，也是不希望重新渲染 DOM 树结构的

- 我们需要使用一个高阶组件 memo

  - 我们将函数组件都通过 memo 函数进行一层包裹

  ```jsx
  import { memo } from "react";

  const Home = memo(function (props) {
    console.log("Home render");
    return (
      <div>
        <h2>Home Page: {props.message}</h2>
      </div>
    );
  });

  export default Home;
  ```

### 不可变数据的力量

- 如果你的组件有继承自 PureComponent，是不允许**直接修改引用类型的 state**，再重新设置一遍，这样做不会引起重新渲染

  ```jsx
  import React, { PureComponent } from "react";

  export class App extends PureComponent {
    constructor() {
      super();
      this.state = {
        books: [
          { name: "你不知道JS", price: 99, count: 0 },
          { name: "JS高级程序设计", price: 88, count: 1 },
          { name: "React高级设计", price: 78, count: 2 },
          { name: "Vue高级设计", price: 95, count: 3 },
        ],
      };
    }

    addNewBook() {
      const newBook = { name: "Angular高级设计", price: 88, count: 4 };

      // 1.直接修改原有的state, 重新设置一遍
      // 在PureComponent是不能引起重新渲染(re-render)
      // this.state.books.push(newBook)
      // this.setState({ books: this.state.books })

      // 2.赋值一份books, 在新的books中修改, 设置新的books
      const books = [...this.state.books];
      books.push(newBook);

      this.setState({ books: books });
    }

    addBookCount(index) {
      // this.state.books[index].count++
      const books = [...this.state.books];
      books[index].count++;
      this.setState({ books: books });
    }

    render() {
      const { books } = this.state;

      return (
        <div>
          <h2>数据列表</h2>
          <ul>
            {books.map((item, index) => {
              return (
                <li key={index}>
                  <span>
                    name: {item.name} - price: {item.price} - count:{" "}
                    {item.count}
                  </span>
                  <button onClick={() => this.addBookCount(index)}>+1</button>
                </li>
              );
            })}
          </ul>
          <button onClick={() => this.addNewBook()}>添加新书籍</button>
        </div>
      );
    }
  }

  export default App;
  ```

## ref

- 在 React 的开发模式中，通常情况下不需要、也不建议直接操作 DOM 原生，但是某些特殊的情况，确实需要获取到 DOM 进行某些操作
  - **管理焦点，文本选择或媒体播放**
  - **触发强制动画**
  - **集成第三方 DOM 库**
  - 我们可以通过 refs 获取 DOM
- 如何创建 refs 来获取对应的 DOM 呢？目前有三种方式
  - 方式一：**传入字符串**
    - 使用时通过 this.refs.传入的字符串格式获取对应的元素
  - 方式二：**传入一个对象**
    - 对象是通过 React.createRef() 方式创建出来的
    - 使用时获取到创建的对象其中有一个 current 属性就是对应的元素
  - 方式三：**传入一个函数**
    - 该函数会在 DOM 被挂载时进行回调，这个**函数会传入一个 元素对象**，我们可以自己保存
    - 使用时，直接拿到之前保存的元素对象即可

### 类型

- ref 的值根据节点的类型而有所不同

  - 当 ref 属性**用于 HTML 元素**时，构造函数中使用 React.createRef() 创建的 ref 接收**原生 DOM 元素作为其 current 属性**

  ```jsx
  import React, { PureComponent, createRef } from "react";

  export class App extends PureComponent {
    constructor() {
      super();

      this.titleRef = createRef();
      this.titleEl = null;
    }

    getNativeDOM() {
      // 1.方式一: 在React元素上绑定一个ref字符串
      // console.log(this.refs.shy)

      // 2.方式二: 提前创建好ref对象, createRef(), 将创建出来的对象绑定到元素
      // console.log(this.titleRef.current)

      // 3.方式三: 传入一个回调函数, 在对应的元素被渲染之后, 回调函数被执行, 并且将元素传入
      console.log(this.titleEl);
    }

    render() {
      return (
        <div>
          <h2 ref="shy">Hello World</h2>
          <h2 ref={this.titleRef}>你好啊,李银河</h2>
          <h2 ref={(el) => (this.titleEl = el)}>你好啊, 世界</h2>
          <button onClick={() => this.getNativeDOM()}>获取DOM</button>
        </div>
      );
    }
  }

  export default App;
  ```

  - 当 ref 属性**用于自定义 class 组件**时，ref 对象接收**组件的挂载实例作为其 current 属性**

  ```jsx
  import React, { PureComponent, createRef } from "react";

  class HelloWorld extends PureComponent {
    test() {
      console.log("---test---");
    }

    render() {
      return <h1>Hello World</h1>;
    }
  }

  export class App extends PureComponent {
    constructor() {
      super();

      this.hwRef = createRef();
    }

    getComponent() {
      console.log(this.hwRef.current);
      this.hwRef.current.test();
    }

    render() {
      return (
        <div>
          <HelloWorld ref={this.hwRef} />
          <button onClick={() => this.getComponent()}>获取组件实例</button>
        </div>
      );
    }
  }

  export default App;
  ```

  - **你不能在函数组件上使用 ref 属性**，因为他们没有实例

- 函数式组件是没有实例的，所以无法通过 ref 获取他们的实例

  - 但是某些时候，我们可能想要获取函数式组件中的某个 DOM 元素
  - 这个时候我们可以通过 **React.forwardRef** ，后面我们也会学习 hooks 中如何使用 ref

  ```jsx
  import React, { PureComponent, createRef, forwardRef } from "react";

  const HelloWorld = forwardRef(function (props, ref) {
    return (
      <div>
        <h1 ref={ref}>Hello World</h1>
        <p>哈哈哈</p>
      </div>
    );
  });

  export class App extends PureComponent {
    constructor() {
      super();

      this.hwRef = createRef();
    }

    getComponent() {
      console.log(this.hwRef.current);
    }

    render() {
      return (
        <div>
          <HelloWorld ref={this.hwRef} />
          <button onClick={() => this.getComponent()}>获取组件实例</button>
        </div>
      );
    }
  }

  export default App;
  ```

## 受控组件

- 在 HTML 中，表单元素（如`<input>`、 `<textarea>` 和 `<select>`）之类的表单元素通常自己维护 state，并根据用户输入进行更新

- 而在 React 中，可变状态（mutable state）通常保存在组件的 **state 属性**中，并且**只能通过使用 setState() 来更新**

  - 我们将两者结合起来，使**React 的 state 成为 “唯一数据源”**
  - 渲染表单的 **React 组件还控制着用户输入过程中表单发生的操作**
  - **被 React 以这种方式控制取值的表单输入元素**就叫做 **“受控组件”**

  ```jsx
  import React, { PureComponent } from "react";

  class App extends PureComponent {
    constructor() {
      super();
      this.state = { sername: "coderlwh" };
    }

    inputChange(event) {
      console.log("inputChange:", event.target.value);
      this.setState({ username: event.target.value });
    }

    render() {
      const { username } = this.state;

      return (
        <div>
          {/* 受控组件 */}
          <input value={username} onChange={(e) => this.inputChange(e)} />

          {/* 非受控组件 */}
          <input type="text" />
          <h2>username: {username}</h2>
        </div>
      );
    }
  }

  export default App;
  ```

## 非受控组件

- React 推荐大多数情况下使用 受控组件 来处理表单数据
  - 一个**受控组件**中，表单数据是**由 React 组件来管理**的
  - 另一种替代方案是**使用非受控组件**，这时表单数据将**交由 DOM 节点**来处理
- 如果要使用非受控组件中的数据，那么我们需要使用 ref 来从 DOM 节点中获取表单数据
- 在非受控组件中通常使用 defaultValue 来设置默认值
- 同样，`<input type="checkbox">` 和 `<input type="radio">` 支持 defaultChecked，`<select>` 和 `<textarea>` 支持 defaultValue

## 高阶组件

- 什么是高阶组件呢？

  - 高阶组件的英文是 **Higher-Order Components**，简称为 **HOC**
  - 官方的定义：**高阶组件是参数为组件，返回值为新组件的函数**

- 我们可以进行如下的解析
  - 首先， **高阶组件 本身不是一个组件，而是一个函数**
  - 其次，**这个函数的参数是一个组件，返回值也是一个组件**
- 高阶组件并不是 React API 的一部分，它是基于 React 的组合特性而形成的设计模式

- 高阶组件在一些 React 第三方库中非常常见

  - 比如 redux 中的**connect**
  - 比如 react-router 中的**withRouter**

  ```jsx
  import React, { PureComponent } from "react";

  function hoc(OriginComponent) {
    // 定义类组件
    class NewComponent extends PureComponent {
      render() {
        return <OriginComponent {...this.props} />;
      }
    }
    return NewComponent;

    // 定义函数组件
    // function NewComponent2(props) {}
    // return NewComponent2
  }

  class HelloWorld extends PureComponent {
    render() {
      return <h1>Hello World - {this.props.name}</h1>;
    }
  }

  const HelloWorldHOC = hoc(HelloWorld);

  class App extends PureComponent {
    render() {
      return (
        <div>
          <HelloWorldHOC name="哈哈哈哈哈哈哈哈哈" />
        </div>
      );
    }
  }

  export default App;
  ```

## 高阶函数的意义

- 我们会发现利用高阶组件可以针对某些 React 代码进行更加优雅的处理

- 其实早期的 React 有提供组件之间的一种复用方式是 mixin，目前已经不再建议使用

  - Mixin 可能会**相互依赖，相互耦合，不利于代码维护**
  - **不同的 Mixin 中的方法可能会相互冲突**
  - Mixin 非常多时，组件处理起来会比较麻烦，甚至还要为其做相关处理，这样会给代码造成滚雪球式的复杂性

- 当然，HOC 也有自己的一些缺陷

  - HOC 需要在**原组件上进行包裹或者嵌套**，**如果大量使用 HOC**，**将会产生非常多的嵌套**，**这让调试变得非常困难**

  - HOC 可以**劫持 props**，**在不遵守约定的情况下也可能造成冲突**

- Hooks 的出现，是开创性的，它解决了很多 React 之前的存在的问题

  - 比如 this 指向问题、比如 hoc 的嵌套复杂度问题等等

## Portals

- 某些情况下，我们希望渲染的内容独立于父组件，甚至是独立于当前挂载到的 DOM 元素中（默认都是挂载到 id 为 root 的 DOM 元素上的）
- Portal 提供了一种将子节点渲染到存在于父组件以外的 DOM 节点的优秀的方案

  - 第一个参数（child）是**任何可渲染的 React 子元素**，例如一个元素，字符串或 fragment
  - 第二个参数（container）是**一个 DOM 元素**

  ```jsx
  import React from "react";
  import { createPortal } from "react-dom";

  export class App extends React.PureComponent {
    render() {
      return (
        <div>
          <h1>App H1</h1>
          {createPortal(<h2>App H2</h2>, document.querySelector("#other"))}
        </div>
      );
    }
  }

  export default App;
  ```

## Fragment

- 在之前的开发中，我们总是在一个组件中返回内容时包裹一个 div 元素
- 我们又希望可以不渲染这样一个 div 应该如何操作呢？
  - 使用 Fragment
  - Fragment 允许你将子列表分组，而无需向 DOM 添加额外节点
- React 还提供了 Fragment 的短语法
  - 它看起来像空标签 <> </>
  - 但是，如果我们需要在 Fragment 中添加 key，那么就不能使用短语法

## StrictMode

- StrictMode 是一个用来突出显示应用程序中潜在问题的工具
  - 与 Fragment 一样，StrictMode 不会渲染任何可见的 UI
  - 它为其后代元素触发额外的检查和警告
  - 严格模式检查仅在开发模式下运行；它们不会影响生产构建
- 严格模式检查的是什么？
- 识别不安全的生命周期
- 使用过时的 ref API
- 检查意外的副作用
  - 这个组件的 constructor 会被调用两次
  - 这是严格模式下故意进行的操作，让你来查看在这里写的一些逻辑代码被调用多次时，是否会产生一些副作用
  - 在生产环境中，是不会被调用两次的
- 使用废弃的 findDOMNode 方法
  - 在之前的 React API 中，可以通过 findDOMNode 来获取 DOM，不过已经不推荐使用了
- 检测过时的 context API
  - 早期的 Context 是通过 static 属性声明 Context 对象属性，通过 getChildContext 返回 Context 对象等方式来使用 Context 的
  - 目前这种方式已经不推荐使用

# React 中如何编写 CSS

## 内联样式

- 内联样式是官方推荐的一种 css 样式的写法

  - style 接受一个采用小驼峰命名属性的 JavaScript 对象，而不是 CSS 字符串
  - 并且可以引用 state 中的状态来设置相关的样式

- 内联样式的**优点**

  - 内联样式，样式之间不会有冲突
  - 可以动态获取当前 state 中的状态

- 内联样式的**缺点**

  - 写法上都需要使用驼峰标识
  - 某些样式没有提示
  - 大量的样式，代码混乱
  - 某些样式无法编写（比如伪类/伪元素）

- 所以官方依然是希望内联样式和普通的 css 来结合编写

  ```jsx
  import React, { PureComponent } from "react";

  class App extends PureComponent {
    constructor() {
      super();
      this.state = { titleSize: 30 };
    }

    addTitleSize() {
      this.setState({ titleSize: this.state.titleSize + 1 });
    }

    render() {
      const { titleSize } = this.state;

      return (
        <div>
          <h2 style={{ color: "red", fontSize: `${titleSize}px` }}>我是标题</h2>
          <p style={{ color: "blue", fontSize: "20px" }}>我是内容, 哈哈哈</p>

          <button onClick={() => this.addTitleSize()}>addTitleSize</button>
        </div>
      );
    }
  }

  export default App;
  ```

## 普通的 CSS

- 普通的 css 我们通常会编写到一个单独的文件，之后再进行引入

- 这样的编写方式和普通的网页开发中编写方式是一致的

  - 如果我们按照普通的网页标准去编写，那么也不会有太大的问题
  - 但是组件化开发中我们总是希望组件是一个独立的模块，即便是样式也只是在自己内部生效，不会相互影响
  - 但是普通的 css 都属于全局的 css，样式之间会相互影响

- 这种编写方式最大的问题是样式之间会相互层叠掉

  ```jsx
  // .title { font-size: 32px; color: green; }
  // .content { font-size: 22px;  color: orange; }

  import React, { PureComponent } from "react";
  import "./App.css";
  import Home from "./Home";

  class App extends PureComponent {
    render() {
      return (
        <div>
          <h2 className="title">App 标题</h2>
          <p className="content">App 内容</p>

          <Home />
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  // .title { border: 1px solid skyblue; }
  import React, { PureComponent } from "react";
  import "./Home.css";

  class Home extends PureComponent {
    render() {
      return <div className="title">Home 标题</div>;
    }
  }

  export default Home;
  ```

## CSS Modules

- css modules 并不是 React 特有的解决方案，而是所有使用了类似于**webpack 配置的环境**下都可以使用的
  - 如果在其他项目中使用它，那么我们需要自己来进行配置，比如**配置 webpack.config.js 中的 modules: true**等
- React 的脚手架已经内置了 css modules 的配置
  - **.css/.less/.scss 等样式文件**都需要**修改成 .module.css/.module.less/.module.scss** 等
  - 之后就可以引用并且进行使用了
- css modules 确实解决了局部作用域的问题，也是很多人喜欢在 React 中使用的一种方案

- 但是这种方案也有自己的缺陷

  - 引用的类名，**不能使用连接符(.home-title)**，在 JavaScript 中是不识别的
  - 所有的**className 都必须使用{style.className} 的形式**来编写
  - 不方便**动态来修改某些样式**，依然**需要使用内联样式的方式**

  ```jsx
  import React, { PureComponent } from "react";
  import appStyle from "./App.module.css";
  import Home from "./Home";

  class App extends PureComponent {
    render() {
      return (
        <div>
          <h2 className={appStyle.title}>App 标题</h2>
          <p className={appStyle.content}>App 内容</p>

          <Home />
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import homeStyle from "./Home.module.css";

  class Home extends PureComponent {
    render() {
      return <div className={homeStyle.title}>Home 标题</div>;
    }
  }

  export default Home;
  ```

## CSS in JS

- 官方文档也有提到过 CSS in JS 这种方案
  - “CSS-in-JS” 是指一种模式，其中 **CSS 由 JavaScript 生成而不是在外部文件中定义**
  - 注意此功能并不是 React 的一部分，而是由第三方库提供
  - React 对样式如何定义并没有明确态度
- 在传统的前端开发中，我们通常会将结构（HTML）、样式（CSS）、逻辑（JavaScript）进行分离

  - React 的思想中认为**逻辑本身和 UI 是无法分离**的，所以**才会有了 JSX 的语法**
  - 样式呢？**样式也是属于 UI 的一部分**
  - 事实上 CSS-in-JS 的模式就是**一种将样式（CSS）也写入到 JavaScript 中的方式，并且可以方便的使用 JavaScript 的状态**
  - 所以 React 有被人称之为 **All in JS**

- 当然，这种开发的方式也受到了很多的批评
  - Stop using CSS in JavaScript for web development
  - https://hackernoon.com/stop-using-css-in-javascript-for-web-development-fa32fb873dcc

## styled-components

- 批评声音虽然有，但是在我们看来很多优秀的 CSS-in-JS 的库依然非常强大、方便

  - CSS-in-JS 通过**JavaScript 来为 CSS 赋予一切能力**，包括**类似于 CSS 预处理器一样的样式嵌套、函数定义、逻辑复用、动态修改状态**等等
  - 虽然**CSS 预处理器也具备某些能力**，但是**获取动态状态依然是一个不好处理的点**
  - 所以，目前**可以说 CSS-in-JS 是 React 编写 CSS 最为受欢迎的一种解决方案**

- 目前比较流行的 CSS-in-JS 的库有哪些呢？
  - styled-components
  - emotion
  - glamorous
- 目前可以说 styled-components 依然是社区最流行的 CSS-in-JS 库
- 安装 styled-components：**npm install styled-components**

### 标签模板字符串

- ES6 中增加了模板字符串的语法，这个对于很多人来说都会使用

- 但是模板字符串还有另外一种用法：**标签模板字符串（Tagged Template Literals）**

- 我们一起来看一个普通的 JavaScript 的函数

  - 正常情况下，我们都是通过 **函数名()** 方式来进行调用的，其实函数还有另外一种调用方式

- 如果我们在调用的时候插入其他的变量

  - 模板字符串被拆分了
  - 第一个元素是数组，是被模块字符串拆分的字符串组合
  - 后面的元素是一个个模块字符串传入的内容

- 在 styled component 中，就是通过这种方式来解析模块字符串，最终生成我们想要的样式的

  ```js
  const name = "张三";
  const age = 30;
  const height = 1.83;

  function foo(...args) {
    // ['my name is ', ', age is ', ', height is ', '']
    console.log(args); // [Array(4), '张三', 30, 1.83]
  }

  foo`my name is ${name}, age is ${age}, height is ${height}`;
  ```

### 基本使用

- styled-components 的本质是通过函数的调用，最终创建出一个组件/标签

  - 这个组件会被自动添加上一个不重复的 class
  - styled-components 会给该 class 添加相关的样式

- 另外，它支持类似于 CSS 预处理器一样的样式嵌套

  - 支持**直接子代选择器或后代选择器，并且直接编写样式**
  - 可以**通过&符号获取当前元素**
  - 直接**伪类选择器、伪元素**等

  ```jsx
  import React, { PureComponent } from "react";
  import { AppWrapper, SectionWrapper } from "./style";

  export class App extends PureComponent {
    constructor() {
      super();
      this.state = { size: 18, color: "yellow" };
    }

    render() {
      const { size } = this.state;

      return (
        <AppWrapper>
          <SectionWrapper size={size}>
            <h2 className="title">App 标题</h2>
            <p className="content">App 内容</p>
            <button onClick={() => this.setState({ size: size + 1 })}>
              修改字体
            </button>
          </SectionWrapper>

          <div className="footer">
            <p>免责声明</p>
            <p>版权声明</p>
          </div>
        </AppWrapper>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import styled from "styled-components";

  // 基本使用
  export const AppWrapper = styled.div`
    .footer {
      border: 1px solid orange;
    }
  `;

  // 子元素单独抽取到一个样式组件
  // 可以接受外部传入的props
  // 可以通过attrs给标签模板字符串中提供的属性
  // 从一个单独的文件中引入变量
  export const SectionWrapper = styled.div.attrs((props) => ({
    tColor: props.color || "blue",
  }))`
    border: 1px solid red;

    .title {
      font-size: ${(props) => props.size}px;
      color: ${(props) => props.tColor};

      &:hover {
        background-color: purple;
      }
    }

    .content {
      font-size: 20px;
      color: #ff8822;
    }
  `;
  ```

#### props、attrs

- props 可以被传递给 styled 组件

  - 获取 props 需要通过${}传入一个插值函数，props 会作为该函数的参数
  - 这种方式可以有效的解决动态样式的问题

- attrs 给属性添加默认值

  ```jsx
  <SectionWrapper size="24" color="pink"></SectionWrapper>;

  export const SectionWrapper = styled.div.attrs((props) => ({
    tColor: props.color || "blue",
  }))`
    .title {
      font-size: ${(props) => props.size}px;
      color: ${(props) => props.tColor};
    }
  `;
  ```

## ClassNames

- React 在 JSX 给了我们开发者足够多的灵活性，你可以像编写 JavaScript 代码一样，通过一些逻辑来决定是否添加某些 class

- 这个时候我们可以借助于一个第三方的库：**classnames**

  - 很明显，这是一个用于动态添加 classnames 的一个库

  ```jsx
  import React, { PureComponent } from "react";
  import classNames from "classnames";

  class App extends PureComponent {
    constructor() {
      super();

      this.state = {
        isbbb: true,
        isccc: true,
      };
    }

    render() {
      const { isbbb, isccc } = this.state;

      const classList = ["aaa"];
      if (isbbb) classList.push("bbb");
      if (isccc) classList.push("ccc");
      const classname = classList.join(" ");

      return (
        <div>
          <h2 className={`aaa ${isbbb ? "bbb" : ""} ${isccc ? "ccc" : ""}`}>
            哈哈哈
          </h2>
          <h2 className={classname}>呵呵呵</h2>

          <h2 className={classNames("aaa", { bbb: isbbb, ccc: isccc })}>
            嘿嘿嘿
          </h2>
          <h2 className={classNames(["aaa", { bbb: isbbb, ccc: isccc }])}>
            嘻嘻嘻
          </h2>
        </div>
      );
    }
  }

  export default App;
  ```

# Redux

## 理解 JavaScript 纯函数

- **函数式编程**中有一个非常重要的概念叫**纯函数**，JavaScript 符合**函数式编程的范式**，所以也**有纯函数的概念**
  - 在**react 开发中纯函数是被多次提及**的
  - 比如**react 中组件就被要求像是一个纯函数**（为什么是像，因为还有 class 组件），**redux 中有一个 reducer 的概念**，也是要求必须是一个纯函数
  - 所以**掌握纯函数对于理解很多框架的设计**是非常有帮助的
- 纯函数的维基百科定义
  - 在程序设计中，若一个函数**符合以下条件**，那么这个函数被称为纯函数
  - 此函数**在相同的输入值时**，需**产生相同的输出**
  - 函数的**输出和输入值以外的其他隐藏信息或状态无关**，也和**由 I/O 设备产生的外部输出**无关
  - 该函数**不能有语义上可观察的函数副作用**，诸如 **“触发事件”**，**使输出设备输出**，**或更改输出值以外物件的内容**等
- 当然上面的定义会过于的晦涩，所以我简单总结一下
  - **确定的输入，一定会产生确定的输出**
  - **函数在执行过程中，不能产生副作用**

### 副作用概念的理解

- **那么这里又有一个概念，叫做副作用**，什么又是**副作用**呢？

  - <b>副作用（side effect）</b>其实本身是医学的一个概念，比如我们经常说吃什么药本来是为了治病，可能会产生一些其他的副作用
  - 在计算机科学中，也引用了副作用的概念，表示**在执行一个函数**时，除了**函数返回值**之外，还对**调用函数产生了附加的影响**，比如**修改了全局变量，修改参数或者改变外部的存储**

- 纯函数在执行的过程中就是不能产生这样的副作用
  - 副作用往往是产生**bug 的 “温床”**

### 纯函数的案例

- 我们来看一个对数组操作的两个函数

  - **slice**：slice 截取数组时不会对原数组进行任何操作，而是生成一个新的数组
  - **splice**：splice 截取数组，会返回一个新的数组，也会对原数组进行修改

- slice 就是一个纯函数，不会修改数组本身，而 splice 函数不是一个纯函数

  ```js
  var names = ["abc", "cba", "nba"];

  var newNames = names.slice(0, 2);
  console.log(newNames); // ['abc', 'cba']

  var newNames2 = names.splice(0, 2);
  console.log(newNames2); // ['abc', 'cba']
  console.log(names); // ['nba']
  ```

### 纯函数的作用和优势

- 为什么纯函数在函数式编程中非常重要呢？
  - 因为你可以**安心的编写**和**安心的使用**
  - 你在**写的时候**保证了函数的纯度，只是**单纯实现自己的业务逻辑**即可，**不需要关心传入的内容**是如何获得的或者**依赖其他的外部变量**是否已经发生了修改
  - 你在**用的时候**，你确定**你的输入内容不会被任意篡改**，并且**自己确定的输入**，一定会**有确定的输出**
- React 中就要求我们无论是**函数还是 class 声明一个组件**，这个组件都必须**像纯函数一样**，**保护它们的 props 不被修改**

## 为什么需要 redux

- JavaScript 开发的应用程序，已经变得越来越复杂了

  - JavaScript 需要**管理的状态越来越多，越来越复杂**
  - 这些状态包括**服务器返回的数据、缓存数据、用户操作产生的数据**等等，也包括一些**UI 的状态**，比如**某些元素是否被选中，是否显示加载动效，当前分页**

- 管理不断变化的 state 是非常困难的
  - **状态之间相互会存在依赖**，**一个状态的变化会引起另一个状态的变化**，**View 页面也有可能会引起状态的变化**
  - 当应用程序复杂时，**state 在什么时候，因为什么原因而发生了变化，发生了怎么样的变化**，会变得非常**难以控制和追踪**
- React 是在视图层帮助我们解决了 DOM 的渲染过程，但是 State 依然是留给我们自己来管理
  - 无论是**组件定义自己的 state**，还是**组件之间的通信通过 props 进行传递**；也包括**通过 Context 进行数据之间的共享**
  - React 主要负责帮助我们**管理视图**，state 如何维护最终**还是我们自己来决定**
- Redux 就是一个帮助我们管理 State 的容器：Redux 是**JavaScript 的状态容器**，提供了**可预测的状态管理**
- Redux 除了和 React 一起使用之外，它也可以和其他界面库一起来使用（比如 Vue），并且它非常小（包括依赖在内，只有 2kb）

## Store

- Redux 的核心理念非常简单

- 比如我们有一个朋友列表需要管理

  - 如果我们**没有定义统一的规范来操作这段数据**，那么**整个数据的变化就是无法跟踪的**
  - 比如页面的某处通过 friends.push 的方式增加了一条数据
  - 比如另一个页面通过 friends[0].age = 24 修改了一条数据

- 整个应用程序错综复杂，当出现 bug 时，很难跟踪到底哪里发生的变化

  ```js
  const initialState = {
    friends: [
      { name: "strive", age: 18 },
      { name: "shy", age: 20 },
    ],
  };
  ```

## Action

- Redux 要求我们通过 action 来更新数据

  - 所有数据的变化，必须通过**派发（dispatch）action 来更新**
  - **action 是一个普通的 JavaScript 对象**，用来描述这次**更新的 type 和 content**

- 比如下面就是一个更新 friends 的 action

  - 强制使用 action 的好处是可以**清晰的知道数据到底发生了什么样的变化，所有的数据变化都是可跟追、可预测的**
  - 当然，目前我们的**action 是固定的对象**
  - 真实应用中，我们**会通过函数来定义，返回一个 action**

  ```js
  const action = {
    type: "add_friends",
    playload: { name: "coderlwh", age: 20 },
  };
  ```

## Reducer

- 但是如何将 state 和 action 联系在一起呢？答案就是 reducer

  - reducer 是一个**纯函数**
  - reducer 做的事情就是**将传入的 state 和 action 结合起来生成一个新的 state**

  ```js
  function reducer(state = initialState.friends, action) {
    switch (action.type) {
      case "add_friends":
        return [...state, action.playload];
      default:
        return state;
    }
  }
  ```

## 三大原则

- 单一数据源
  - 整个应用程序的**state 被存储在一颗 object tree 中**，并且**这个 object tree 只存储在一个 store** 中
  - Redux**并没有强制让我们不能创建多个 Store**，但是**那样做并不利于数据的维护**
  - **单一的数据源**可以让整个应用程序的 state 变得**方便维护、追踪、修改**
- State 是只读的
  - **唯一修改 State 的方法一定是触发 action**，**不要试途在其他地方通过任何的方式来修改 State**
  - 这样就确保了 View 或网络请求都**不能直接修改 state**，它们只能**通过 action 来描述自己想要如何修改 state**
  - 这样可以**保证所有的修改都被集中化处理**，并且**按照严格的顺序来执行**，所以**不需要担心 race condition（竟态）的问题**（两处地方同时修改）
- 使用纯函数来执行修改
  - 通过 reducer 将 **旧 state 和 actions 联系在一起**，并且**返回一个新的 State**
  - 随着**应用程序的复杂度增加**，我们**可以将 reducer 拆分成多个小的 reducers**，**分别操作不同 state tree 的一部分**
  - 但是**所有的 reducer 都应该是纯函数**，不能产生任何的副作用

## 使用过程

- 创建一个对象，作为我们要保存的状态

- 创建 Store 来存储这个 state

  - 创建 store 时必须创建 reducer
  - 我们可以通过 store.getState 来获取当前的 state

- 通过 action 来修改 state

  - 通过 dispatch 来派发 action
  - 通常 action 中都会有 type 属性，也可以携带其他的数据

- 修改 reducer 中的处理代码

  - 这里一定要记住，reducer 是一个纯函数，不需要直接修改 state

- 可以在派发 action 之前，监听 store 的变化

  ```js
  // store/index.js
  const { createStore } = require("redux");
  const reducer = require("./reducer.js");

  // 创建的store
  const store = createStore(reducer);
  module.exports = store;
  ```

  ```js
  // store/reducer.js
  // 初始化的数据
  const initialState = { name: "shy", counter: 100 };

  // 定义reducer函数: 纯函数
  // 两个参数:
  // 参数一: store中目前保存的state
  // 参数二: 本次需要更新的action(dispatch传入的action)
  // 返回值: 它的返回值会作为store之后存储的state
  function reducer(state = initialState, action) {
    switch (action.type) {
      case "change_name":
        return { ...state, name: action.name };
      case "add_number":
        return { ...state, counter: state.counter + action.num };
      default:
        return state;
    }
  }

  module.exports = reducer;
  ```

  ```js
  // main.js
  const store = require("./store");

  console.log(store.getState());

  const unsubscribe = store.subscribe(() => {
    console.log("订阅数据的变化:", store.getState());
  });

  // 修改store中的数据: 必须action
  store.dispatch({ type: "change_name", name: "strive" });
  store.dispatch({ type: "change_name", name: "the shy" });

  // 修改counter
  store.dispatch({ type: "add_number", num: 10 });
  store.dispatch({ type: "add_number", num: 20 });
  store.dispatch({ type: "add_number", num: 30 });

  unsubscribe(); // 取消阅数

  store.dispatch({ type: "add_number", num: 100 });
  ```

## 结构划分

- 如果我们将所有的逻辑代码写到一起，那么当 redux 变得复杂时代码就难以维护
  - 接下来，我会对代码进行拆分，将 store、reducer、action、constants 拆分成一个个文件
  - 创建**store/index.js**文件
  - 创建**store/reducer.js**文件
  - 创建**store/actionCreators.js**文件
  - 创建**store/constants.js**文件
- 注意：node 中对 ES6 模块化的支持
  - 目前我使用的 node 版本是 v12.16.1，从 node v13.2.0 开始，node 才对 ES6 模块化提供了支持
  - node v13.2.0 之前，需要进行如下操作
    - 在 package.json 中添加属性： "type": "module"
    - 在执行命令中添加如下选项：node --experimental-modules src/index.js
  - node v13.2.0 之后，只需要进行如下操作
    - 在 package.json 中添加属性： "type": "module"
- 注意：导入文件时，需要跟上.js 后缀名

## redux 融入 react 代码

- 目前 redux 在 react 中使用是最多的，所以我们需要将之前编写的 redux 代码，融入到 react 当中去

- 核心代码主要是两个

  - 在 componentDidMount 中监听数据的变化，当数据发生变化时重新设置 counter
  - 在发生点击事件时，调用 store 的 dispatch 来派发对应的 action

  ```js
  // store/index.js
  import { createStore } from "redux";
  import reducer from "./reducer";

  const store = createStore(reducer);
  export default store;
  ```

  ```js
  // store/reducer.js
  const initialState = { counter: 100 };

  function reducer(state = initialState, action) {
    switch (action.type) {
      case "add_number":
        return { ...state, counter: state.counter + action.num };
      case "sub_number":
        return { ...state, counter: state.counter - action.num };
      default:
        return state;
    }
  }
  export default reducer;
  ```

  ```js
  // store/actionCreators.js
  export const addNumberAction = (num) => ({ type: "add_number", num });
  export const subNumberAction = (num) => ({ type: "sub_number", num });
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import store from "./store/index";
  import { addNumberAction, subNumberAction } from "./store/actionCreators";

  class App extends PureComponent {
    constructor() {
      super();
      this.state = { counter: store.getState().counter };
    }

    componentDidMount() {
      store.subscribe(() => {
        const state = store.getState();
        this.setState({ counter: state.counter });
      });
    }

    addNumber(num) {
      store.dispatch(addNumberAction(num));
    }

    subNumber(num) {
      store.dispatch(subNumberAction(num));
    }

    render() {
      const { counter } = this.state;

      return (
        <div>
          <h2>App Counter: {counter}</h2>

          <button onClick={() => this.addNumber(1)}>+1</button>
          <button onClick={() => this.subNumber(1)}>-1</button>
        </div>
      );
    }
  }

  export default App;
  ```

## react-redux

- 开始之前需要强调一下，redux 和 react 没有直接的关系，你完全可以在 React, Angular, Vue, jQuery, JavaScript 中使用 Redux

- 尽管这样说，redux 依然是和 React 库结合的更好，因为他们是通过 state 函数来描述界面的状态，Redux 可以改变状态的更新，让它们作出响应

- 虽然我们之前已经实现了 connect、Provider 这些帮助我们完成连接 redux、react 的辅助工具，但是实际上 redux 官方帮助我们提供了 react-redux 的库，可以直接在项目中使用，并且实现的逻辑会更加的严谨和高效

- 安装 react-redux

  - npm install react-redux

  ```jsx
  import ReactDOM from "react-dom/client";
  import App from "./App";
  import { Provider } from "react-redux";
  import store from "./store";

  const root = ReactDOM.createRoot(document.getElementById("root"));
  root.render(
    <Provider store={store}>
      <App />
    </Provider>
  );
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import { connect } from "react-redux";
  import { addNumberAction } from "./store/actionCreators";

  class App extends PureComponent {
    render() {
      const { counter } = this.props;
      return (
        <div>
          <h2>App Counter: {counter}</h2>
          <div>
            <button onClick={(e) => this.props.addNumber(1)}>+1</button>
            <button onClick={(e) => this.props.addNumber(5)}>+5</button>
            <button onClick={(e) => this.props.addNumber(8)}>+8</button>
          </div>
        </div>
      );
    }
  }

  const mapStateToProps = (state) => ({ counter: state.counter });

  const mapDispatchToProps = (dispatch) => ({
    addNumber(num) {
      dispatch(addNumberAction(num));
    },
  });

  export default connect(mapStateToProps, mapDispatchToProps)(App);
  ```

## redux 中异步操作

- 但是在 redux 中如何可以进行异步的操作呢？
  - 答案就是使用**中间件（Middleware）**
  - Middleware 可以帮助我们**在请求和响应之间嵌入一些操作的代码**，比如 cookie 解析、日志记录、文件压缩等操作

​

## 理解中间件

- redux 也引入了中间件（Middleware）的概念
  - 这个中间件的目的是**在 dispatch 的 action 和最终达到的 reducer 之间，扩展一些自己的代码**
  - 比如**日志记录、调用异步接口、添加代码调试功能**等等
- 我们现在要做的事情就是发送异步的网络请求，所以我们可以添加对应的中间件
  - 这里**官网推荐的、包括演示的网络请求的中间件**是**使用 redux-thunk**
- redux-thunk 是如何做到让我们可以发送异步的请求呢？
  - 我们知道，**默认情况下的 dispatch(action)，action 需要是一个 JavaScript 的对象**
  - redux-thunk 可以让**dispatch(action 函数)，action 可以是一个函数**
  - 该函数会被调用，并且会传给**这个函数一个 dispatch 函数和 getState 函数**
    - **dispatch 函数**用于我们之后再次派发 action
    - **getState 函数**考虑到我们之后的一些操作需要依赖原来的状态，用于让我们可以获取之前的一些状态

## redux-thunk

- 安装 redux-thunk

  - npm install redux-thunk

- 在创建 store 时传入应用了 middleware 的 enhance 函数

  - 通过 applyMiddleware 来结合多个 Middleware, 返回一个 enhancer
  - 将 enhancer 作为第二个参数传入到 createStore 中

- 定义返回一个函数的 action

  - 注意：这里不是返回一个对象了，而是一个**函数**
  - **该函数在 dispatch 之后会被执行**

  ```jsx
  import { createStore, applyMiddleware } from "redux";
  import thunk from "redux-thunk";
  import reducer from "./reducer";

  const store = createStore(reducer, applyMiddleware(thunk));
  export default store;
  ```

  ```jsx
  export const asyncAddNumber = (num) => {
    return function (dispatch, getState) {
      setTimeout(() => {
        dispatch({ type: "add_number", num });
      }, 500);
    };
  };
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import { connect } from "react-redux";
  import { asyncAddNumber } from "./store/actionCreators";

  class App extends PureComponent {
    render() {
      const { counter } = this.props;
      return (
        <div>
          <h2>App Counter: {counter}</h2>

          <button onClick={(e) => this.props.addNumber(1)}>+1</button>
        </div>
      );
    }
  }

  const mapStateToProps = (state) => ({ counter: state.counter });

  const mapDispatchToProps = (dispatch) => ({
    addNumber(num) {
      dispatch(asyncAddNumber(num));
    },
  });

  export default connect(mapStateToProps, mapDispatchToProps)(App);
  ```

## redux-devtools

- redux 可以方便的让我们对状态进行跟踪和调试，那么如何做到呢？

  - redux 官网为我们**提供了 redux-devtools 的工具**
  - 利用这个工具，我们可以知道**每次状态是如何被修改的，修改前后的状态变化**等等

- 安装该工具需要两步

  - 第一步：在对应的浏览器中安装相关的插件（比如 Chrome 浏览器扩展商店中搜索 Redux DevTools 即可）
  - 第二步：在 redux 中继承 devtools 的中间件

  ```jsx
  import { createStore, applyMiddleware, compose } from "redux";
  import thunk from "redux-thunk";
  import reducer from "./reducer";

  const composeEnhancers =
    window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__({ trace: true }) || compose;
  const store = createStore(reducer, composeEnhancers(applyMiddleware(thunk)));
  export default store;
  ```

## combineReducers

- redux 给我们提供了一个**combineReducers 函数**可以方便的让我们对多个 reducer 进行合并

- 那么 combineReducers 是如何实现的呢？

  - 事实上，它也是**将我们传入的 reducers 合并到一个对象**中，最终**返回一个 combination 的函数**（相当于我们之前的 reducer 函数了）
  - 在**执行 combination 函数的过程**中，它会**通过判断前后返回的数据是否相同来决定返回之前的 state 还是新的 state**
  - **新的 state 会触发订阅者发生对应的刷新，而旧的 state 可以有效的组织订阅者发生刷新**

  ```js
  import { createStore, combineReducers } from "redux";
  import counterReducer from "./counter";
  import homeReducer from "./home";

  // 将两个reducer合并在一起
  const reducer = combineReducers({
    counter: counterReducer,
    home: homeReducer,
  });

  // combineReducers实现原理(了解)
  // function reducer(state = {}, action) {
  //   // 返回一个对象, store的state
  //   return {
  //     counter: counterReducer(state.counter, action),
  //     home: homeReducer(state.home, action),
  //   };
  // }

  const store = createStore(reducer);
  export default store;
  ```

# Redux Toolkit

- Redux Toolkit 是官方推荐的编写 Redux 逻辑的方法
  - 在前面我们学习 Redux 的时候应该已经发现，redux 的编写逻辑过于的繁琐和麻烦
  - 并且代码通常分拆在多个文件中（虽然也可以放到一个文件管理，但是代码量过多，不利于管理）
  - Redux Toolkit 包只在成为编写 Redux 逻辑的标准方式，从而解决上面提到的问题
  - 在很多地方为了称呼方便，也将之称为 “RTK”
- 安装 Redux Toolkit
  - npm install @reduxjs/toolkit react-redux
- Redux Toolkit 的核心 API 主要是如下几个
  - **configureStore**：包装 createStore 以提供简化的配置选项和良好的默认值。它可以自动组合你的 slice reducer，添加你提供的任何 Redux 中间件，redux-thunk 默认包含，并启用 Redux DevTools Extension
  - **createSlice**：接受 reducer 函数的对象、切片名称和初始状态值，并自动生成切片 reducer，并带有相应的 actions
  - **createAsyncThunk**：接受一个动作类型字符串和一个返回承诺的函数，并生成一个 pending/fulfilled/rejected 基于该承诺分派动作类型的 thunk

## 重构代码

- 我们先对 counter 的 reducer 进行重构： **通过 createSlice**创建一个 slice

- **createSlice**主要包含如下几个参数

  - <b>name：</b>用户标记 slice 的名词
    - 在之后的 redux-devtool 中会显示对应的名词
  - <b>initialState：</b>初始化值
    - 第一次初始化时的值
  - <b>reducers：</b>相当于之前的 reducer 函数
    - 对象类型，并且可以添加很多的函数
    - 函数类似于 redux 原来 reducer 中的一个 case 语句
    - 函数的参数
      - 参数一：state
      - 参数二：调用这个 action 时，传递的 action 参数
  - **createSlice**返回值是一个对象，包含所有的 actions

  ```js
  import { createSlice } from "@reduxjs/toolkit";

  const counterSlice = createSlice({
    name: "counter",
    initialState: {
      counter: 888,
    },
    reducers: {
      addNumber(state, { payload }) {
        state.counter = state.counter + payload;
      },
      subNumber(state, { payload }) {
        state.counter = state.counter - payload;
      },
    },
  });
  export const { addNumber, subNumber } = counterSlice.actions;
  export default counterSlice.reducer;
  ```

## store

- configureStore 用于创建 store 对象，常见参数如下

  - <b>reducer：</b>将 slice 中的 reducer 可以组成一个对象传入此处
  - <b>middleware：</b>可以使用参数，传入其他的中间件（自行了解）
  - <b>devTools：</b>是否配置 devTools 工具，默认为 true

  ```js
  import { configureStore } from "@reduxjs/toolkit";
  import counterReducer from "./features/counter";

  const store = configureStore({
    reducer: {
      counter: counterReducer,
    },
  });

  export default store;
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import { connect } from "react-redux";
  import { addNumber, subNumber } from "./store/features/counter";

  class App extends PureComponent {
    render() {
      const { counter } = this.props;

      return (
        <div>
          <h2>App Counter: {counter}</h2>

          <button onClick={() => this.props.addNumber(5)}>+5</button>
          <button onClick={() => this.props.subNumber(5)}>-5</button>
        </div>
      );
    }
  }

  const mapStateToProps = (state) => ({
    counter: state.counter.counter,
  });

  const mapDispatchToProps = (dispatch) => ({
    addNumber(num) {
      dispatch(addNumber(num));
    },
    subNumber(num) {
      dispatch(subNumber(num));
    },
  });

  export default connect(mapStateToProps, mapDispatchToProps)(App);
  ```

## 异步操作

- 在之前的开发中，我们通过 redux-thunk 中间件让 dispatch 中可以进行异步操作

- Redux Toolkit 默认已经给我们继承了 Thunk 相关的功能：createAsyncThunk

- 当 createAsyncThunk 创建出来的 action 被 dispatch 时，会存在三种状态

  - <b>pending：</b>action 被发出，但是还没有最终的结果
  - <b>fulfilled：</b>获取到最终的结果（有返回值的结果）
  - <b>rejected：</b>执行过程中有错误或者抛出了异常

- 我们可以在 createSlice 的 entraReducer 中监听这些结果

  ```js
  import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
  import axios from "axios";

  export const fetchHomeMultidataAction = createAsyncThunk(
    "fetch/homemultidata",
    async (extraInfo, { dispatch, getState }) => {
      // console.log(extraInfo, dispatch, getState)
      // 1.发送网络请求, 获取数据
      const res = await axios.get("http://123.207.32.32:8000/home/multidata");

      // 2.取出数据, 并且在此处直接dispatch操作(可以不做)
      const banners = res.data.data.banner.list;
      const recommends = res.data.data.recommend.list;
      dispatch(changeBanners(banners));
      dispatch(changeRecommends(recommends));

      // 3.返回结果, 那么action状态会变成fulfilled状态
      return res.data;
    }
  );

  const homeSlice = createSlice({
    name: "home",
    initialState: {
      banners: [],
      recommends: [],
    },
    reducers: {
      changeBanners(state, { payload }) {
        state.banners = payload;
      },
      changeRecommends(state, { payload }) {
        state.recommends = payload;
      },
    },
    // extraReducers: {
    //   [fetchHomeMultidataAction.pending](state, action) {
    //     console.log("fetchHomeMultidataAction pending");
    //   },
    //   [fetchHomeMultidataAction.fulfilled](state, { payload }) {
    //     state.banners = payload.data.banner.list;
    //     state.recommends = payload.data.recommend.list;
    //   },
    //   [fetchHomeMultidataAction.rejected](state, action) {
    //     console.log("fetchHomeMultidataAction rejected");
    //   },
    // },
    // extraReducers: (builder) => {
    //   builder
    //     .addCase(fetchHomeMultidataAction.pending, (state, action) => {
    //       console.log("fetchHomeMultidataAction pending");
    //     })
    //     .addCase(fetchHomeMultidataAction.fulfilled, (state, { payload }) => {
    //       state.banners = payload.data.banner.list;
    //       state.recommends = payload.data.recommend.list;
    //     });
    // },
  });

  export const { changeBanners, changeRecommends } = homeSlice.actions;
  export default homeSlice.reducer;
  ```

## 数据不可变性

- 在 React 开发中，我们总是会强调数据的不可变性
  - 无论是类组件中的 state，还是 redux 中管理的 state
  - 事实上在整个 JavaScript 编码过程中，数据的不可变性都是非常重要的
- 所以在前面我们经常会进行浅拷贝来完成某些操作，但是浅拷贝事实上也是存在问题的
  - 比如过大的对象，进行浅拷贝也会造成性能的浪费
  - 比如浅拷贝后的对象，在深层改变时，依然会对之前的对象产生影响
- 事实上 Redux Toolkit 底层使用了 immerjs 的一个库来保证数据的不可变性
- 在我们公众号的一片文章中也有专门讲解 immutable-js 库的底层原理和使用方法（coderwhy）
  - https://mp.weixin.qq.com/s/hfeCDCcodBCGS5GpedxCGg
- 为了节约内存，又出现了一个新的算法：Persistent Data Structure（持久化数据结构或一致性数据结构）
  - 用一种数据结构来保存数据
  - 当**数据被修改**时，**会返回一个对象**，但是**新的对象会尽可能的利用之前的数据结构而不会对内存造成浪费**

## 手写 connect 函数

- 手写 connect 函数

  ```js
  // connect的参数:
  // 参数一: 函数
  // 参数二: 函数
  // 返回值: 函数 => 高阶组件

  import { PureComponent } from "react";
  import { StoreContext } from "./StoreContext";
  // import store from "../store"

  export function connect(mapStateToProps, mapDispatchToProps, store) {
    // 高阶组件: 函数
    return function (WrapperComponent) {
      class NewComponent extends PureComponent {
        constructor(props, context) {
          super(props);

          this.state = mapStateToProps(context.getState());
        }

        componentDidMount() {
          this.unsubscribe = this.context.subscribe(() => {
            this.setState(mapStateToProps(this.context.getState()));
          });
        }

        componentWillUnmount() {
          this.unsubscribe();
        }

        render() {
          const stateObj = mapStateToProps(this.context.getState());
          const dispatchObj = mapDispatchToProps(this.context.dispatch);
          return (
            <WrapperComponent {...this.props} {...stateObj} {...dispatchObj} />
          );
        }
      }

      NewComponent.contextType = StoreContext;

      return NewComponent;
    };
  }
  ```

## context 处理 store

- 但是上面的 connect 函数有一个很大的缺陷：依赖导入的 store

- 如果我们将其封装成一个独立的库，需要依赖用于创建的 store，我们应该如何去获取呢？
- 难道让用户来修改我们的源码吗？不太现实

- 正确的做法是我们提供一个 Provider，Provider 来自于我们创建的 Context，让用户将 store 传入到 value 中即可

  ```js
  // StoreContext.js
  import { createContext } from "react";
  export const StoreContext = createContext();

  // index.js
  import ReactDOM from "react-dom/client";
  import { StoreContext } from "./hoc";
  import App from "./App";
  import store from "./store";

  const root = ReactDOM.createRoot(document.getElementById("root"));
  root.render(
    <StoreContext.Provider value={store}>
      <App />
    </StoreContext.Provider>
  );
  ```

# React-Router

- 目前前端流行的三大框架, 都有自己的路由实现
  - **Angular**的**ngRouter**
  - **React**的**ReactRouter**
  - **Vue**的**vue-router**
- React Router 在最近两年版本更新的较快，并且在最新的 React Router6.x 版本中发生了较大的变化
  - 目前 React Router6.x 已经非常稳定，我们可以放心的使用
- 安装 React Router
  - 安装时，我们选择 react-router-dom
  - react-router 会包含一些 react-native 的内容，web 开发并不需要
  - npm install react-router-dom

## 基本使用

- react-router 最主要的 API 是给我们提供的一些组件

- BrowserRouter 或 HashRouter

  - Router 中包含了对路径改变的监听，并且会将相应的路径传递给子组件
  - **BrowserRouter**使用 history 模式
  - **HashRouter**使用 hash 模式

  ```jsx
  import ReactDOM from "react-dom/client";
  import App from "./App";
  import { HashRouter } from "react-router-dom";

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(
    <HashRouter>
      <App />
    </HashRouter>
  );
  ```

## 映射配置

- Routes：包裹所有的 Route，在其中匹配一个路由

  - Router5.x 使用的是 Switch 组件

- Route：Route 用于路径的匹配

  - <b>path 属性：</b>用于设置匹配到的路径
  - <b>element 属性：</b>设置匹配到路径后，渲染的组件
    - Router5.x 使用的是 component 属性

- exact：精准匹配，只有精准匹配到完全一致的路径，才会渲染对应的组件

  - Router6.x 默认已开启

  ```jsx
  // app.jsx
  <Routes>
    <Route path="/home" element={<Home />} />
    <Route path="/about" element={<About />} />
  </Routes>
  ```

## 配置和跳转

- Link 和 NavLink

  - 通常路径的跳转是使用 Link 组件，最终会被渲染成 a 元素
  - NavLink 是在 Link 基础之上增加了一些样式属性
  - to 属性：Link 中最重要的属性，用于设置跳转到的路径

  ```jsx
  // app.jsx
  <div className="nav">
    <Link to="/home">首页</Link>
    <Link to="/about">关于</Link>
  </div>
  ```

## NavLink

- 需求：路径选中时，对应的 a 元素变为红色

- 这个时候，我们要使用 NavLink 组件来替代 Link 组件

  - <b>style：</b>传入函数，函数接受一个对象，包含 isActive 属性
  - <b>className：</b>传入函数，函数接受一个对象，包含 isActive 属性

- 默认的 activeClassName

  - 事实上在默认匹配成功时，NavLink 就会添加上一个动态的 active class

- 当然，如果你担心这个 class 在其他地方被使用了，出现样式的层叠，也可以自定义 class

  ```jsx
  // app.jsx
  <NavLink to="/home"  style={({ isActive }) => ({ color: isActive ? "red" : "" })} >首页</NavLink>
  <NavLink to="/about" style={({ isActive }) => ({ color: isActive ? "red" : "" })}>关于</NavLink>


  <NavLink to="/home"  className={({ isActive }) => (isActive ? "link-active" : "")}>首页</NavLink>
  <NavLink to="/about" className={({ isActive }) => (isActive ? "link-active" : "")}>关于</NavLink>
  ```

## Navigate

- Navigate 用于路由的重定向，当这个组件出现时，就会执行跳转到对应的 to 路径中

- 我们也可以在匹配到/的时候，直接跳转到/home 页面

  ```jsx
  // app.jsx
  <Routes>
    <Route path="/" element={<Navigate to="/home" />} />
    <Route path="/home" element={<Home />} />
    <Route path="/about" element={<About />} />
  </Routes>
  ```

## Not Found

- 如果用户随意输入一个地址，该地址无法匹配，那么在路由匹配的位置将什么内容都不显示

- 很多时候，我们希望在这种情况下，让用户看到一个 Not Found 的页面

- 这个过程非常简单

  - 开发一个 Not Found 页面
  - 配置对应的 Route，并且设置<b>path为*</b>即可

  ```jsx
  // app.jsx
  <Routes>
    <Route path="/" element={<Navigate to="/home" />} />
    <Route path="/home" element={<Home />} />
    <Route path="/about" element={<About />} />
    <Route path="*" element={<NotFound />} />
  </Routes>
  ```

## 嵌套

- 在开发中，路由之间是存在嵌套关系的

- 这里我们假设 Home 页面中有两个页面内容

  - 推荐列表和排行榜列表
  - 点击不同的链接可以跳转到不同的地方，显示不同的内容

- `<Outlet> `组件用于在父路由元素中作为子路由的占位元素

  ```jsx
  // app.jsx
  <Routes>
    <Route path="/" element={<Navigate to="/home" />} />
    <Route path="/home" element={<Home />}>
      <Route path="/home" element={<Navigate to="/home/recommend" />} />
      <Route path="/home/recommend" element={<HomeRecommend />} />
      <Route path="/home/ranking" element={<HomeRanking />} />
    </Route>
    <Route path="/about" element={<About />} />
    <Route path="*" element={<NotFound />} />
  </Routes>
  ```

  ```jsx
  import React, { PureComponent } from "react";
  import { Link, Outlet } from "react-router-dom";

  class Home extends PureComponent {
    render() {
      return (
        <div>
          <h1>Home Page</h1>
          <div className="home-nav">
            <Link to="/home/recommend">推荐</Link>
            <Link to="/home/ranking">排行榜</Link>
          </div>

          {/* 占位的组件 */}
          <Outlet />
        </div>
      );
    }
  }

  export default Home;
  ```

## 手动跳转

- 目前我们实现的跳转主要是通过 Link 或者 NavLink 进行跳转的，实际上我们也可以通过**JavaScript 代码**进行跳转

  - 我们知道 Navigate 组件是可以进行路由的跳转的，但是依然是组件的方式
  - 如果我们希望通过**JavaScript 代码**逻辑进行跳转（比如点击了一个 button），那么就**需要获取到 navigate 对象**

- 在 Router6.x 版本之后，代码类的 API 都迁移到了 hooks 的写法

- 如果我们希望进行代码跳转，需要通过**useNavigate**的 Hook 获取到**navigate 对象**进行操作
- 那么如果是一个**函数式组件**，我们可以直接调用，但是**如果是一个类组件呢？**

```js
import { useNavigate } from "react-router-dom";

// 高阶组件: 函数
function withRouter(WrapperComponent) {
  return function (props) {
    // 1.导航
    const navigate = useNavigate();

    const router = { navigate };

    return <WrapperComponent {...props} router={router} />;
  };
}

export default withRouter;
```

```jsx
import React, { PureComponent } from "react";
import { Link, Outlet } from "react-router-dom";
import withRouter from "../hoc/with_router";

class Home extends PureComponent {
  navigateTo(path) {
    const { navigate } = this.props.router;
    navigate(path);
  }

  render() {
    return (
      <div>
        <h1>Home Page</h1>
        <div className="home-nav">
          <Link to="/home/recommend">推荐</Link>
          <button onClick={(e) => this.navigateTo("/home/ranking")}>
            排行榜
          </button>
        </div>

        {/* 占位的组件 */}
        <Outlet />
      </div>
    );
  }
}

export default withRouter(Home);
```

## 参数传递

- 传递参数有二种方式

  - 动态路由的方式
  - search 传递参数

- 动态路由的概念指的是路由中的路径并不会固定

  - 比如/detail 的 path 对应一个组件 Detail
  - 如果我们将 path 在 Route 匹配时写成/detail/:id，那么 /detail/abc、/detail/123 都可以匹配到该 Route，并且进行显示
  - 这个匹配规则，我们就称之为**动态路由**
  - 通常情况下，使用动态路由可以为路由传递参数

  ```jsx
  <Route path='/detail/:id' element={<Detail/>}/>

  <Link to="/detail/abc">abc</Link>
  <Link to="/detail/123">123</Link>
  ```

  - search 传递参数

  ```jsx
  import {
    useLocation,
    useNavigate,
    useParams,
    useSearchParams,
  } from "react-router-dom";

  // 高阶组件: 函数
  function withRouter(WrapperComponent) {
    return function (props) {
      // 1.导航
      const navigate = useNavigate();

      // 2.动态路由的参数: /detail/:id
      const params = useParams();

      // 3.查询字符串的参数: /user?name=why&age=18
      const location = useLocation();
      const [searchParams] = useSearchParams();
      const query = Object.fromEntries(searchParams);

      const router = { navigate, params, location, query };

      return <WrapperComponent {...props} router={router} />;
    };
  }

  export default withRouter;
  ```

  ```jsx
  // app.jsx
  <Route path='/user' element={<User/>}/>
  <Link to="/user?name=shy&age=18">用户</Link>

  // User.jsx
  import React, { PureComponent } from "react";
  import withRouter from "../hoc/with_router";

  class User extends PureComponent {
    render() {
      const { router } = this.props;
      const { query } = router;

      return (
        <div>
          <h1>
            User: {query.name}-{query.age}
          </h1>
        </div>
      );
    }
  }

  export default withRouter(User);
  ```

## 配置文件

- 目前我们所有的路由定义都是直接使用 Route 组件，并且添加属性来完成的

- 但是这样的方式会让路由变得非常混乱，我们希望将所有的路由配置放到一个地方进行集中管理

  - 在早期的时候，Router 并且没有提供相关的 API，我们需要借助于 react-router-config 完成
  - 在 Router6.x 中，为我们提供了**useRoutes API**可以完成相关的配置

  ```js
  // src/router/index.js
  const About = React.lazy(() => import("../pages/About"));

  const routes = [
    { path: "/", element: <Navigate to="/home" /> },
    {
      path: "/home",
      element: <Home />,
      children: [
        { path: "/home", element: <Navigate to="/home/recommend" /> },
        { path: "/home/recommend", element: <HomeRecommend /> },
        { path: "/home/ranking", element: <HomeRanking /> },
      ],
    },
    { path: "/about", element: <About /> },
    { path: "/detail/:id", element: <Detail /> },
    { path: "/user", element: <User /> },
    { path: "*", element: <NotFound /> },
  ];

  export default routes;
  ```

  ```jsx
  // app.jsx
  import { useRoutes } from "react-router-dom";
  import routes from "./router";

  <div className="content">{useRoutes(routes)}</div>;
  ```

- 如果我们对某些组件进行了异步加载（懒加载），那么需要使用 Suspense 进行包裹

  ```jsx
  // index.js
  import { Suspense } from "react";
  import { HashRouter } from "react-router-dom";
  import ReactDOM from "react-dom/client";
  import App from "./App";

  const root = ReactDOM.createRoot(document.querySelector("#root"));
  root.render(
    <HashRouter>
      <Suspense fallback={<h3>Loading...</h3>}>
        <App />
      </Suspense>
    </HashRouter>
  );
  ```

# React Hooks

## 为什么需要 Hook?

- Hook 是 React 16.8 的新增特性，它可以让我们在**不编写 class 的情况下使用 state 以及其他的 React 特性**（比如生命周期）

- 我们先来思考一下 class 组件相对于函数式组件有什么优势？比较常见的是下面的优势
  - class 组件可以**定义自己的 state**，用来**保存组件自己内部的状态**
    - 函数式组件不可以，因为函数每次调用都会产生新的临时变量
  - class 组件有**自己的生命周期**，我们可以在**对应的生命周期中完成自己的逻辑**
    - 比如在 componentDidMount 中发送网络请求，并且该生命周期函数只会执行一次
    - 在学习 hooks 之前，如果在函数组件中发送网络请求，意味着每次重新渲染都会重新发送一次网络请求
  - class 组件可以**在状态改变时只会重新执行 render 函数**以及**我们希望重新调用的生命周期函数 componentDidUpdate**等
    - 函数式组件在重新渲染时，整个函数都会被执行，似乎没有什么地方可以只让它们调用一次
  - 所以，在 Hook 出现之前，对于上面这些情况我们通常都会编写 class 组件

## class 组件存在的问题

- 复杂组件变得难以理解

  - 我们在最初编写一个 class 组件时，往往逻辑比较简单，并不会非常复杂。但是**随着业务的增多**，我们的**class 组件会变得越来越复杂**
  - 比如 componentDidMount 中，可能就会包含大量的逻辑代码：包括**网络请求、一些事件的监听**（还需要在 componentWillUnmount 中移除）
  - 而对于这样的 class 实际上非常难以拆分：因为**它们的逻辑往往混在一起**，**强行拆分反而会造成过度设计**，**增加代码的复杂度**

- 难以理解的 class
  - 很多人**发现学习 ES6 的 class 是学习 React 的一个障碍**
  - 比如在 class 中，我们**必须搞清楚 this 的指向到底是谁**，所以需要花很多的精力去学习 this
  - 虽然我认为前端开发人员必须掌握 this，但是依然处理起来非常麻烦
- 组件复用状态很难
  - 在前面为了一些状态的复用我们需要通过**高阶组件**
  - 像我们之前学习的**redux 中 connect 或者 react-router 中的 withRouter**，这些高阶组件设计的目的就是**为了状态的复用**
  - 或者**类似于 Provider、Consumer 来共享一些状态**，但是**多次使用 Consumer 时，我们的代码就会存在很多嵌套**
  - 这些代码让我们**不管是编写和设计上来说，都变得非常困难**

## Hook 的出现

- Hook 的出现，可以解决上面提到的这些问题
- 简单总结一下 hooks
  - **它可以让我们在不编写 class 的情况下使用 state 以及其他的 React 特性**
  - 但是我们**可以由此延伸出非常多的用法，来让我们前面所提到的问题得到解决**
- Hook 的使用场景
  - Hook 的出现**基本可以代替我们之前所有使用 class 组件的地方**
  - 但是如果是一个旧的项目，**你并不需要直接将所有的代码重构为 Hooks**，因为**它完全向下兼容**，**你可以渐进式的来使用它**
  - Hook**只能在函数组件中使用，不能在类组件，或者函数组件之外的地方使用**
- 在我们继续之前，请记住 Hook 是
  - **完全可选的**：你无需重写任何已有代码就可以在一些组件中尝试 Hook。但是如果你不想，你不必现在就去学习或使用 Hook
  - **100% 向后兼容的**：Hook 不包含任何破坏性改动
  - **现在可用**：Hook 已发布于 v16.8.0

## 计数器案例对比

- 我们通过一个计数器案例，来对比一下 class 组件和函数式组件结合 hooks 的对比

  ```jsx
  import React, { PureComponent } from "react";

  class CounterClass extends PureComponent {
    constructor(props) {
      super(props);
      this.state = { counter: 0 };
    }

    increment() {
      this.setState({ counter: this.state.counter + 1 });
    }

    decrement() {
      this.setState({ counter: this.state.counter - 1 });
    }

    render() {
      const { counter } = this.state;

      return (
        <div>
          <h2>当前计数: {counter}</h2>
          <button onClick={() => this.increment()}>+1</button>
          <button onClick={() => this.decrement()}>-1</button>
        </div>
      );
    }
  }

  export default CounterClass;
  ```

  ```jsx
  import { memo, useState } from "react";

  function CounterHook() {
    const [counter, setCounter] = useState(0);

    return (
      <div>
        <h2>当前计数: {counter}</h2>
        <button onClick={(e) => setCounter(counter + 1)}>+1</button>
        <button onClick={(e) => setCounter(counter - 1)}>-1</button>
      </div>
    );
  }

  export default memo(CounterHook);
  ```

- 你会发现上面的代码差异非常大

  - 函数式组件结合 hooks 让整个代码变得非常简洁
  - 并且再也不用考虑 this 相关的问题

## useState 解析

- 那么我们来研究一下核心的一段代码代表什么意思
  - **useState 来自 react**，需要**从 react 中导入**，它是一个**hook**
    - 参数：**初始化值**，如果**不设置为 undefined**
    - 返回值：**数组**，包含**两个元素**
      - 元素一：**当前状态的值**（第一调用为初始化值）
      - 元素二：**设置状态值的函数**
  - 点击 button 按钮后，会完成两件事情
    - 调用**setCounter，设置一个新的值**
    - **组件重新渲染**，并且**根据新的值返回 DOM 结构**
- 相信通过上面的一个简单案例，你已经会喜欢上 Hook 的使用了
  - Hook 就是 JavaScript 函数，这个函数可以帮助你 **钩入（hook into） React State 以及生命周期等特性**
- 但是使用它们会有两个额外的规则
  - 只能在函数**最外层调用 Hook**。不要在**循环、条件判断或者子函数中调用**
  - 只能**在 React 的函数组件**中调用 Hook。**不要在其他 JavaScript 函数中调用**
- Tip
  - Hook 指的类似于 useState、useEffect 这样的函数
  - Hooks 是对这类函数的统称

## 认识 useState

- State Hook 的 API 就是 useState，我们在前面已经进行了学习
  - useState 会帮助我们**定义一个 state 变量**，useState 是**一种新方法**，它与 **class 里面的 this.state 提供的功能完全相同**
    - 一般来说，**在函数退出后变量就会 "消失"**，而 **state 中的变量会被 React 保留**
  - useState**接受唯一一个参数**，在**第一次组件被调用时使用来作为初始化值**。（如果没有传递参数，那么初始化值为 undefined）
  - useState 的**返回值是一个数组**，我们可以**通过数组的解构**，来完成赋值会非常方便
- FAQ：为什么叫 useState 而不叫 createState?
  - "create" 可能不是很准确，因为 **state 只在组件首次渲染的时候被创建**
  - 在**下一次重新渲染时，useState 返回给我们当前的 state**
  - **如果每次都创建新的变量，它就不是 "state" 了**
  - 这也是 **Hook 的名字总是以 use 开头的一个原因**
- 当然，我们也可以在一个组件中定义多个变量和复杂变量（数组、对象）

## Effect Hook

- 目前我们已经通过 hook 在函数式组件中定义 state，那么类似于生命周期这些呢？

  - Effect Hook 可以让你来完成一些**类似于 class 中生命周期的功能**
  - 事实上，类似于**网络请求、手动更新 DOM、一些事件的监听**，都是**React 更新 DOM 的一些副作用**（Side Effects）
  - 所以**对于完成这些功能的 Hook 被称之为 Effect Hook**

- 假如我们现在有一个需求：**页面的 title 总是显示 counter 的数字**，分别使用**class 组件**和**Hook**实现

  ```jsx
  import React, { PureComponent } from "react";

  class App extends PureComponent {
    constructor() {
      super();
      this.state = { counter: 100 };
    }

    componentDidMount() {
      document.title = this.state.counter;
    }

    componentDidUpdate() {
      document.title = this.state.counter;
    }

    render() {
      const { counter } = this.state;

      return (
        <div>
          <h2>计数: {counter}</h2>
          <button onClick={(e) => this.setState({ counter: counter + 1 })}>
            +1
          </button>
        </div>
      );
    }
  }

  export default App;
  ```

  ```jsx
  import React, { memo } from "react";
  import { useState, useEffect } from "react";

  const App = memo(() => {
    const [count, setCount] = useState(200);

    useEffect(() => {
      // 当前传入的回调函数会在组件被渲染完成后, 自动执行
      // 网络请求/DOM操作/事件监听
      document.title = count;
    });

    return (
      <div>
        <h2>当前计数: {count}</h2>
        <button onClick={(e) => setCount(count + 1)}>+1</button>
      </div>
    );
  });

  export default App;
  ```

- useEffect 的解析

  - 通过 useEffect 的 Hook，可以告诉**React 需要在渲染后执行某些操作**
  - useEffect**要求我们传入一个回调函数**，在 React**执行完更新 DOM 操作之后**，就**会回调这个函数**
  - 默认情况下，**无论是第一次渲染之后**，还是每次更新之后，都会**执行这个 回调函数**

### 清除 Effect

- 在 class 组件的编写过程中，某些副作用的代码，我们需要在 componentWillUnmount 中进行清除
  - 比如我们之前的**事件总线或 Redux 中手动调用 subscribe**
  - 都需要在**componentWillUnmount 有对应的取消订阅**
  - Effect Hook 通过什么方式来模拟 componentWillUnmount 呢？
- useEffect 传入的**回调函数**本身可以有一个返回值，这个返回值是另外一个**回调函数**

- 为什么要在 Effect 中返回一个函数？

  - 这是 **Effect 可选的清除机制**。**每个 Effect 都可以返回一个清除函数**
  - 如此可以**将添加和移除订阅的逻辑放在一起**
  - 它们**都属于 Effect 的一部分**

- React 何时清除 Effect？

  - React **会在组件更新和卸载的时候执行清除操作**
  - 正如之前学到的，**Effect 在每次渲染的时候都会执行**

  ```jsx
  import React, { memo, useEffect, useState } from "react";

  const App = memo(() => {
    const [count, setCount] = useState(0);

    useEffect(() => {
      console.log("监听");
      return () => {
        console.log("取消监听");
      };
    });

    return (
      <div>
        <button onClick={(e) => setCount(count + 1)}>+1({count})</button>
      </div>
    );
  });

  export default App;
  ```

### 使用多个 Effect

- 使用 Hook 的其中一个目的就是解决 class 中生命周期经常将很多的逻辑放在一起的问题

  - 比如网络请求、事件监听、手动修改 DOM，这些往往都会放在 componentDidMount 中

- 使用 Effect Hook，我们可以将它们分离到不同的 useEffect 中

- Hook 允许我们按照代码的用途分离它们， 而不是像生命周期函数那样

  - React 将按照 Effect 声明的顺序依次调用组件中的每一个 Effect

  ```jsx
  import React, { memo, useEffect, useState } from "react";

  const App = memo(() => {
    const [count, setCount] = useState(0);

    useEffect(() => {
      console.log("修改title");
    });

    useEffect(() => {
      console.log("监听redux中的数据");
      return () => {};
    });

    useEffect(() => {
      console.log("监听eventBus中的事件");
      return () => {};
    });

    return (
      <div>
        <button onClick={(e) => setCount(count + 1)}>+1({count})</button>
      </div>
    );
  });

  export default App;
  ```

### 性能优化

- 默认情况下，useEffect 的回调函数会在每次渲染时都重新执行，但是这会导致两个问题

  - 某些代码我们只是**希望执行一次即可**，类似于 componentDidMount 和 componentWillUnmount 中完成的事情；（比如网络请求、订阅和取消订阅）
  - 另外，**多次执行也会导致一定的性能问题**

- 我们如何决定 useEffect 在什么时候应该执行和什么时候不应该执行呢？

  - useEffect 实际上有两个参数
    - 参数一：**执行的回调函数**
    - 参数二：**该 useEffect 在哪些 state 发生变化时，才重新执行**（受谁的影响）

- 但是，如果一个函数我们不希望依赖任何的内容时，也可以传入一个空的数组 []

  - 那么这里的两个回调函数分别对应的就是**componentDidMount**和**componentWillUnmount**生命周期函数了

  ```jsx
  import React, { memo, useEffect } from "react";
  import { useState } from "react";

  const App = memo(() => {
    const [count, setCount] = useState(0);
    const [message, setMessage] = useState("Hello World");

    useEffect(() => {
      console.log("修改title:", count);
    }, [count]);

    useEffect(() => {
      console.log("监听redux中的数据");
      return () => {};
    }, []);

    useEffect(() => {
      console.log("监听eventBus中的事件");
      return () => {};
    }, []);

    useEffect(() => {
      console.log("发送网络请求, 从服务器获取数据");
      return () => {
        console.log("会在组件被卸载时, 才会执行一次");
      };
    }, []);

    return (
      <div>
        <button onClick={(e) => setCount(count + 1)}>+1({count})</button>
        <button onClick={(e) => setMessage("你好啊")}>
          修改message({message})
        </button>
      </div>
    );
  });

  export default App;
  ```

## useContext

- 在之前的开发中，我们要在组件中使用共享的 Context 有两种方式

  - 类组件可以通过 **类名.contextType = MyContext 方式**，在类中获取 context
  - 多个 Context 或者在函数式组件中通过 **MyContext.Consumer** 方式共享 context

- 但是多个 Context 共享时的方式会存在大量的嵌套

  - Context Hook**允许我们通过 Hook 来直接获取某个 Context 的值**

- 注意事项

  - 当组件上层最近的 <MyContext.Provider> 更新时，该 Hook 会触发重新渲染，并使用最新传递给 MyContext provider 的 context value 值

  ```jsx
  import React, { memo, useContext } from "react";
  import { UserContext, ThemeContext } from "./context";

  const App = memo(() => {
    const user = useContext(UserContext);
    const theme = useContext(ThemeContext);

    return (
      <div>
        <h2>
          User: {user.name}-{user.level}
        </h2>
        <h2 style={{ color: theme.color, fontSize: theme.size }}>Theme</h2>
      </div>
    );
  });

  export default App;
  ```

## useReducer

- 很多人看到 useReducer 的第一反应应该是 redux 的某个替代品，其实并不是

- useReducer 仅仅是 useState 的一种替代方案

  - 在某些场景下，**如果 state 的处理逻辑比较复杂，我们可以通过 useReducer 来对其进行拆分**
  - **或者这次修改的 state 需要依赖之前的 state 时，也可以使用**

- 数据是不会共享的，它们只是使用了相同的 counterReducer 的函数而已

- 所以，useReducer 只是 useState 的一种替代品，并不能替代 Redux

  ```jsx
  import React, { memo, useReducer } from "react";

  function reducer(state, action) {
    switch (action.type) {
      case "increment":
        return { ...state, counter: state.counter + 1 };
      case "decrement":
        return { ...state, counter: state.counter - 1 };
      case "add_number":
        return { ...state, counter: state.counter + action.num };
      case "sub_number":
        return { ...state, counter: state.counter - action.num };
      default:
        return state;
    }
  }

  const App = memo(() => {
    const [state, dispatch] = useReducer(reducer, {
      counter: 0,
      user: {},
      friends: [],
    });

    return (
      <div>
        <h2>当前计数: {state.counter}</h2>
        <button onClick={(e) => dispatch({ type: "increment" })}>+1</button>
        <button onClick={(e) => dispatch({ type: "decrement" })}>-1</button>
        <button onClick={(e) => dispatch({ type: "add_number", num: 5 })}>
          +5
        </button>
        <button onClick={(e) => dispatch({ type: "sub_number", num: 5 })}>
          -5
        </button>
        <button onClick={(e) => dispatch({ type: "add_number", num: 100 })}>
          +100
        </button>
      </div>
    );
  });

  export default App;
  ```

## useCallback

- useCallback 实际的目的是为了进行性能的优化

- 如何进行性能的优化呢？

  - useCallback 会**返回一个函数的 memoized（记忆的） 值**
  - 在**依赖不变的情况下，多次定义的时候，返回的值是相同**的

- 案例

  - 案例一：使用 useCallback 和不使用 useCallback 定义一个函数是否会带来性能的优化

  - 案例二：使用 useCallback 和不使用 useCallback 定义一个函数传递给子组件是否会带来性能的优化

- 通常使用 useCallback 的目的是**不希望子组件进行多次渲染**，并**不是为了函数进行缓存**

  ```jsx
  import React, { memo, useState, useCallback, useRef } from "react";

  // useCallback性能优化的点:
  // 1.当需要将一个函数传递给子组件时, 最好使用useCallback进行优化, 将优化之后的函数, 传递给子组件

  // props中的属性发生改变时, 组件本身就会被重新渲染
  const Home = memo(function (props) {
    const { increment } = props;
    console.log("Home被渲染");
    return (
      <div>
        <button onClick={increment}>increment+1</button>

        {/* 100个子组件 */}
      </div>
    );
  });

  const App = memo(function () {
    const [count, setCount] = useState(0);
    const [message, setMessage] = useState("hello");

    // 闭包陷阱: useCallback
    // const increment = useCallback(function foo() {
    //   console.log("increment")
    //   setCount(count + 1)
    // }, [count])

    // 进一步的优化: 当count发生改变时, 也使用同一个函数
    // 做法一: 将count依赖移除掉, 缺点: 闭包陷阱
    // 做法二: useRef, 在组件多次渲染时, 返回的是同一个值
    const countRef = useRef();
    countRef.current = count;
    const increment = useCallback(function foo() {
      console.log("increment");
      setCount(countRef.current + 1);
    }, []);

    // 普通的函数
    // const increment = () => {
    //   setCount(count+1)
    // }

    return (
      <div>
        <h2>计数: {count}</h2>
        <button onClick={increment}>+1</button>

        <Home increment={increment} />

        <h2>message:{message}</h2>
        <button onClick={(e) => setMessage(Math.random())}>修改message</button>
      </div>
    );
  });

  function foo(name) {
    function bar() {
      console.log(name);
    }
    return bar;
  }

  const bar1 = foo("shy");
  bar1(); // shy

  const bar2 = foo("ning");
  bar2(); // ning

  bar1(); // shy

  export default App;
  ```

## useMemo

- useMemo 实际的目的也是为了进行性能的优化

- 如何进行性能的优化呢？

  - useMemo 返回的也是一个 memoized（记忆的） 值
  - 在依赖不变的情况下，多次定义的时候，返回的值是相同的

- 案例

  - 案例一：进行大量的计算操作，是否有必须要每次渲染时都重新计算

  - 案例二：对子组件传递相同内容的对象时，使用 useMemo 进行性能的优化

  ```jsx
  import React, { memo, useMemo, useState } from "react";

  const HelloWorld = memo(function (props) {
    console.log("HelloWorld被渲染~");
    return <h2>Hello World</h2>;
  });

  function calcNumTotal(num) {
    console.log("calcNumTotal的计算过程被调用~");
    let total = 0;
    for (let i = 1; i <= num; i++) {
      total += i;
    }
    return total;
  }

  const App = memo(() => {
    const [count, setCount] = useState(0);

    // 1.不依赖任何的值, 进行计算
    const result = useMemo(() => {
      return calcNumTotal(50);
    }, []);

    // 2.依赖count
    // const result = useMemo(() => {
    //   return calcNumTotal(count * 2);
    // }, [count]);

    // 3.useMemo和useCallback的对比
    // function fn() {}
    // const increment1 = useCallback(fn, []) 对传入的回调函数做优化
    // const increment2 = useMemo(() => fn, []) 对传入的回调函数的返回值做优化

    // 4.使用useMemo对子组件渲染进行优化
    // const info = { name: "shy", age: 18 }
    const info = useMemo(() => ({ name: "shy", age: 18 }), []);

    return (
      <div>
        <h2>计算结果: {result}</h2>
        <h2>计数器: {count}</h2>
        <button onClick={(e) => setCount(count + 1)}>+1</button>

        <HelloWorld result={result} info={info} />
      </div>
    );
  });

  export default App;
  ```

## useRef

- useRef 返回一个 ref 对象，返回的 ref 对象再组件的整个生命周期保持不变
- 最常用的 ref 是两种用法
  - 用法一：引入 DOM 元素 （或者组件，但是需要是 class 组件）
  - 用法二：保存一个数据，这个对象在整个生命周期中可以保存不变

## useImperativeHandle

- 我们先来回顾一下 ref 和 forwardRef 结合使用

  - 通过 forwardRef 可以将 ref 转发到子组件
  - 子组件拿到父组件中创建的 ref，绑定到自己的某一个元素中

- forwardRef 的做法本身没有什么问题，但是我们是将子组件的 DOM 直接暴露给了父组件

  - 直接暴露给父组件带来的问题是某些情况的不可控
  - 父组件可以拿到 DOM 后进行任意的操作
  - 但是，事实上在上面的案例中，我们只是希望父组件可以操作的 focus，其他并不希望它随意操作

- 通过 useImperativeHandle 可以值暴露固定的操作

  - 通过 useImperativeHandle 的 Hook，将传入的 ref 和 useImperativeHandle 第二个参数返回的对象绑定到了一起
  - 所以在父组件中，使用 inputRef.current 时，实际上使用的是返回的对象
  - 比如我调用了 focus 函数，甚至可以调用 printHello 函数

  ```jsx
  import React, { memo, useRef, forwardRef, useImperativeHandle } from "react";

  const HelloWorld = memo(
    forwardRef((props, ref) => {
      const inputRef = useRef();

      // 子组件对父组件传入的ref进行处理
      useImperativeHandle(ref, () => {
        return {
          focus() {
            console.log("focus");
            inputRef.current.focus();
          },
          setValue(value) {
            inputRef.current.value = value;
          },
        };
      });

      return <input type="text" ref={inputRef} />;
    })
  );

  const App = memo(() => {
    const titleRef = useRef();
    const inputRef = useRef();

    function handleDOM() {
      inputRef.current.focus();
      // inputRef.current.value = ""
      inputRef.current.setValue("哈哈哈");
    }

    return (
      <div>
        <h2 ref={titleRef}>哈哈哈</h2>
        <HelloWorld ref={inputRef} />
        <button onClick={handleDOM}>DOM操作</button>
      </div>
    );
  });

  export default App;
  ```

## useLayoutEffect

- useLayoutEffect 看起来和 useEffect 非常的相似，事实上他们也只有一点区别而已
  - useEffect 会在渲染的内容更新到 DOM 上后执行，不会阻塞 DOM 的更新
  - useLayoutEffect 会在渲染的内容更新到 DOM 上之前执行，会阻塞 DOM 的更新
- 如果我们希望在某些操作发生之后再更新 DOM，那么应该将这个操作放到 useLayoutEffect
- 官方更推荐使用 useEffect 而不是 useLayoutEffect

## redux hooks

- 在之前的 redux 开发中，为了让组件和 redux 结合起来，我们使用了 react-redux 中的 connect

  - 但是这种方式必须使用高阶函数结合返回的高阶组件
  - 并且必须编写：mapStateToProps 和 mapDispatchToProps 映射的函数

- 在 Redux7.1 开始，提供了 Hook 的方式，我们再也不需要编写 connect 以及对应的映射函数了

- **useSelector**的作用是将 state 映射到组件中

  - 参数一：将 state 映射到需要的数据中
  - 参数二：可以进行比较来决定是否组件重新渲染

- **useSelector**默认会比较我们返回的两个对象是否相等

  - 如何比较呢？const refEquality = (a, b) => a === b
  - 也就是说我们必须返回两个完全相等的对象才可以不引起重新渲染

- useDispatch 非常简单，就是直接获取 dispatch 函数，之后在组件中直接使用即可

- 我们还可以通过 useStore 来获取当前的 store 对象

  ```jsx
  import { configureStore } from "@reduxjs/toolkit";
  import counterReducer from "./modules/counter";

  const store = configureStore({
    reducer: {
      counter: counterReducer,
    },
  });

  export default store;
  ```

  ```jsx
  import { createSlice } from "@reduxjs/toolkit";

  const counterSlice = createSlice({
    name: "counter",
    initialState: {
      count: 99,
      message: "Hello World",
    },
    reducers: {
      addNumberAction(state, { payload }) {
        state.count = state.count + payload;
      },
      subNumberAction(state, { payload }) {
        state.count = state.count - payload;
      },

      changeMessageAction(state, { payload }) {
        console.log(payload);
        state.message = payload;
      },
    },
  });

  export const { addNumberAction, subNumberAction, changeMessageAction } =
    counterSlice.actions;
  export default counterSlice.reducer;
  ```

  ```jsx
  import React, { memo } from "react";
  import { useSelector, useDispatch, shallowEqual } from "react-redux";
  import {
    addNumberAction,
    subNumberAction,
    changeMessageAction,
  } from "./store/modules/counter";

  // memo高阶组件包裹起来的组件有对应的特点: 只有props发生改变时, 才会重新渲染
  const Home = memo((props) => {
    const { message } = useSelector(
      (state) => ({
        message: state.counter.message,
      }),
      shallowEqual
    );

    const dispatch = useDispatch();
    function changeMessageHandle() {
      dispatch(changeMessageAction("你好啊, 世界!"));
    }

    console.log("Home render");

    return (
      <div>
        <h2>Home: {message}</h2>
        <button onClick={(e) => changeMessageHandle()}>修改message</button>
      </div>
    );
  });

  const App = memo((props) => {
    // 1.使用useSelector将redux中store的数据映射到组件内
    const { count } = useSelector(
      (state) => ({
        count: state.counter.count,
      }),
      shallowEqual
    );

    // 2.使用dispatch直接派发action
    const dispatch = useDispatch();
    function addNumberHandle(num, isAdd = true) {
      if (isAdd) {
        dispatch(addNumberAction(num));
      } else {
        dispatch(subNumberAction(num));
      }
    }

    console.log("App render");

    return (
      <div>
        <h2>当前计数: {count}</h2>
        <button onClick={(e) => addNumberHandle(1)}>+1</button>
        <button onClick={(e) => addNumberHandle(6)}>+6</button>
        <button onClick={(e) => addNumberHandle(6, false)}>-6</button>

        <Home />
      </div>
    );
  });

  export default App;
  ```

## useId

- 官方的解释：useId 是一个用于生成横跨服务端和客户端的稳定的唯一 ID 的同时避免 hydration 不匹配的 hook
- 这里有一个词叫 hydration，要想理解这个词，我们需要理解一些服务器端渲染（SSR）的概念。useId
- 什么是 SSR？
  - SSR（Server Side Rendering，服务端渲染），指的是页面在服务器端已经生成了完成的 HTML 页面结构，不需要浏览器通过执行 JS 代码，创建页面结构
  - 对应的是 CSR（Client Side Rendering，客户端渲染），我们开发的 SPA 页面通常依赖的就是客户端渲染
- 早期的服务端渲染包括 PHP、JSP、ASP 等方式，但是在目前前后端分离的开发模式下，前端开发人员不太可能再去学习 PHP、JSP 等技术来开发网页
- 不过我们可以借助于 Node 来帮助我们执行 JavaScript 代码，提前完成页面的结构

## SSR 同构应用

- 什么是同构？
  - 一套代码既可以在服务端运行又可以在客户端运行，这就是同构应用
- 同构是一种 SSR 的形态，是现代 SSR 的一种表现形式
  - 当用户发出请求时，先在服务器通过 SSR 渲染出首页的内容
  - 但是对应的代码同样可以在客户端被执行
  - 执行的目的包括事件绑定等以及其他页面切换时也可以在客户端被渲染

## Hydration

- 什么是 Hydration？这里我引入 vite-plugin-ssr 插件的官方解释
  - https://vite-plugin-ssr.com/hydration
- 在进行 SSR 时，我们的页面会呈现为 HTML
  - 但仅 HTML 不足以使页面具有交互性。例如，浏览器端 JavaScript 为零的页面不能是交互式的（没有 JavaScript 事件处理程序来响应用户操作，例如单击按钮）
  - 为了使我们的页面具有交互性，除了在 Node.js 中将页面呈现为 HTML 之外，我们的 UI 框架（Vue/React/...）还在浏览器中加载和呈现页面。（它创建页面的内部表示，然后将内部表示映射到我们在 Node.js 中呈现的 HTML 的 DOM 元素）
- 这个过程称为 hydration

## useId 的作用

- 我们再来看一遍：useId 是一个用于生成横跨服务端和客户端的稳定的唯一 ID 的同时避免 hydration 不匹配的 hook
- 所以我们可以得出如下结论
  - useId 是用于 react 的同构应用开发的，前端的 SPA 页面并不需要使用它
  - useId 可以保证应用程序在客户端和服务器端生成唯一的 ID，这样可以有效的避免通过一些手段生成的 id 不一致，造成 hydration mismatch
