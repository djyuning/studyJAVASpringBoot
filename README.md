# JAVA Spring Boot 快速上手

## 技能栈

- [JAVA](https://www.java.com/zh_CN/download/windows-64bit.jsp) 编程语言
- [Redis](https://redis.io/) 数据和缓存管理
- [Spring Boot](https://spring.io/projects/spring-boot/) 开发框架
- [Docker](https://www.docker.com/) 部署容器
- [Maven](http://maven.apache.org/) 包管理工具
- [Thymeleaf](https://www.thymeleaf.org/)     模板引擎

## 概念

俗话说“隔行如隔山”，个人认为，编程语言学习中，术语和概念理解了，我们的学习进度就又完成了 1/3 ！！！

- **OOP**：面向对象编程（Object Oriented Programming，简称 OOP）是一种计算机编程架构。
- **AOP**：面向切面编程（Aspect Oriented Programming，简称 AOP）。AOP主要实现的目的是针对业务处理过程中的切面进行提取，它所面对的是处理过程中的某个步骤或阶段，以获得逻辑过程中各部分之间低耦合性的隔离效果。
- **依赖注入(Dependency injection，简称 DI)**：在容器创建对象后，处理对象的依赖关系。
- **IOC 容器**：具有依赖注入功能的容器，是可以创建对象的容器，IOC 容器负责实例化、定位、配置应用程序中的对象及建立这些对象间的依赖。
- **Java 反射机制**：主要是指程序可以访问、检测和修改它本身状态或行为的一种能力，并能根据自身行为的状态和结果，调整或修改应用所描述行为的状态和相关的语义。
- **Servlet**：sun 公司提供的一门用于开发动态 web 资源的技术。
- **过滤器 Filter**：是 JavaEE 标准，采用函数回调的方式进行。是在请求进入容器之后，还未进入 Servlet 之前进行预处理，并且在请求结束返回给前端这之间进行后期处理。一个过滤器实例只能在容器初使化调用一次。
- **拦截器 Interceptor**：基于 Java 的反射机制，属于 AOP 的一种应用。一个拦截器实例在一个 controller 生命周期内可以多次调用。只能拦截 Controller 的请求。
- **监听器 Listener**：是 Servlet 中的特殊的类，用于监听 web 的特定事件，随 web 应用启动而启动，只初始化一次。

## JAVA 基础

- JAVA 环境配置、maven 环境配置
- 使用 IntelliJ IDEA 初始化空项目
- 基础语法
- 基础数据类型 byte、short、long、int、float、double、boolean、string
- 特殊数据类型 map、list、泛型
- 类
- 抽象类和接口

## Spring Boot

- 使用 IntelliJ IDEA 初始化工程
- 开发 Restful 接口
- GET 和 POST
- @Controller 和 @RestController
- 使用泛型作为接口返回数据
- 使用 mysql 数据库链接 —— 增删改查，认识 beans、 dao、service
- SESSION 和 Cookie
- 拦截器、过滤器、监听器
- 日志操作类
- 配置项 .properties 和 .yml
- 使用 Maven 的 Lifecycle - package 打包工程为 *.jar 文件
- 使用 docker 部署项目

## Maven 配置 pom.xml

## thymeleaf

- 基础语法：变量、列表、条件
- 静态资源引用
- layout 母版布局
- 高级应用
- 配置项

## Thymeleaf 的一些主要标签和函数
- `th:text` 显示文本
- `th:utext` 和 `th:text` 的区别是针对 "unescaped text"
- `th:attr` 设置标签属性
- `th:if` 和 `th:unless` 条件判断语句
- `th:each` 循环语句
- `th:style` 设置样式
- `th:onclick` 点击事件
- `th:href` 链接地址
- `th:inline` 定义 js 脚本可以使用变量
- `th:action` 表单提交地址
- `#dates` 日期函数
- `#calendars` 日历函数
- `#numbers` 数字函数
- `#strings` 字符串函数
- `#objects` 对象函数
- `#bools` 逻辑函数
- `#arrays` 数组函数
- `#lists` 列表函数
