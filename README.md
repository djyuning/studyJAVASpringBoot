# JAVA Spring Boot 博客

![ ](https://img.shields.io/badge/Apache%20Maven-3.6.0-orange.svg)
![ ](https://img.shields.io/badge/JAVA-1.8.0-red.svg)
![ ](https://img.shields.io/badge/Spring%20Boot-2.1.3-6db33f.svg)
![ ](https://img.shields.io/badge/Thymeleaf-2.1.3-005f0f.svg)
![ ](https://img.shields.io/badge/Redis-3.2.100-ff0000.svg)
![ ](https://img.shields.io/badge/MySQL-5.5.53-blue.svg)

> 学习 JAVA Spring Boot 的小项目

## 项目结构

```txt
./
 │······················································
 │ 公共模块：提供可复用的类和逻辑
 │
 ├─ djyuning-blog/
 │  ├─ src/
 │  │  ├─ main/
 │  │  │  ├─ java/
 │  │  │  │  └─ me.djyuning.blog/
 │  │  │  │     ├─ beans/                   # 实体类
 │  │  │  │     ├─ dao/
 │  │  │  │     ├─ entity/                  # 数据表对应的实体类
 │  │  │  │     ├─ service/
 │  │  │  │     ├─ util/                    # 工具类
 │  │  │  │     └─ DjyuningBlogApplication
 │  │  │  └─ resources/
 │  │  │     └─ application.yml
 │  │  └─ test/
 │  └─ pom.xml
 │
 │······················································
 │ 后台管理中心：负责内容管理和系统监控
 │
 ├─ djyuning-blog-admin/
 │  ├─ src/
 │  │  ├─ main/
 │  │  │  ├─ java/
 │  │  │  │  └─ me.djyuning.blog.admin/
 │  │  │  │     └─ DjyuningBlogAdminApplication
 │  │  │  └─ resources/
 │  │  │     └─ application.yml
 │  │  └─ test/
 │  └─ pom.xml
 │
 │······················································
 │ 前站，负责内容展示
 │
 ├─ djyuning-blog-website/
 │  ├─ src/
 │  │  ├─ main/
 │  │  │  ├─ java/
 │  │  │  │  └─ me.djyuning.blog.website/
 │  │  │  │     ├─ beans/                   # 实体类
 │  │  │  │     ├─ config/                  # 配置
 │  │  │  │     ├─ controller/              # 控制器
 │  │  │  │     ├─ filter/                  # 过滤器
 │  │  │  │     ├─ interceptor/             # 拦截器
 │  │  │  │     ├─ utils/                   # 工具类
 │  │  │  │     └─ DjyuningBlogWebsiteApplication
 │  │  │  └─ resources/
 │  │  │     ├─ static/                     # 视图静态资源
 │  │  │     ├─ templates/                  # 模板视图
 │  │  │     ├─ application.yml             # 默认配置
 │  │  │     ├─ application-dev.yml         # 开发版配置
 │  │  │     ├─ application-pro.yml         # 正式版配置
 │  │  │     └─ banner.txt                  # 控制台启动字符画
 │  │  └─ test/
 │  └─ pom.xml
 │
 │······················································
 │
 ├─ pom.xml
 ├─ quick-thymeleaf.md
 ├─ README.md
 └─ springboot_first.sql
```

## 学习任务

暂时把学习任务分为初级、进阶和高级。初级部分，主要掌握项目的基本开发流程、在日常开发和需求分析中逐渐熟悉语言特性，通过不断的扩展和重构当前项目体验 Spring 框架的便利性。进阶和高级阶段将逐步学习和积累正规项目的架构思路、从各个角度提升应用的健壮性和可扩展性。

### 初级

初级部分主要是快速上手使用，以项目开发主线带动多个知识点，整个过程耗时较长，通过对象项目的不断梳理和重构，可以逐步把基础知识掌握牢固，需要边学边实践，边实践边总结，边总结边复习。初级阶段不死磕概念，期间会因为各种不熟悉出现各种莫名其妙的报错，尝试耐心阅读错误信息，并不断总结常见错误信息的解决思路和方向（错误靠猜，但也要猜的有理有据啊~）。

- [x] JAVA 语言基础 —— 环境配置、IDE、JAVA 项目 
- [x] JAVA 语言基础 —— `String` 字符串
- [x] JAVA 语言基础 —— `Integer` 数字
- [x] JAVA 语言基础 —— `Map` 和 `HashMap` 对象
- [x] JAVA 语言基础 —— `List` 和 `ArrayList` 数组
- [ ] JAVA 语言基础 —— 泛型
- [ ] JAVA 语言基础 —— 类 `Class` 和抽象类 `abstract Class`
- [x] JAVA 语言基础 —— 接口 `Interface`
- [ ] JAVA 语言基础 —— `Math` 数学类
- [ ] JAVA 语言基础 —— `Date` 日期类
- [ ] JAVA 语言基础 —— 正则表达式
- [x] 第一个 Spring Boot 工程
- [ ] Maven 解读 pom.xml
- [ ] Maven 多模块 `Module`
- [ ] 控制器 `@Controller` 和 `@RestController`
- [ ] Spring MVC 错误处理 `ErrorController`
- [ ] Spring Boot URL 映射、传参、`header`
- [ ] Spring Boot 使用数据库
- [ ] Spring Boot 拦截器
- [ ] Spring Boot 过滤器
- [ ] Spring Boot 自动装配 `@Component`、`@Configuration`、`@Bean`
- [ ] Spring Boot 缓存
- [ ] Spring Boot 配置项和配置读取
- [ ] Spring Boot 应用打包和环境部署
- [ ] Spring Boot REST 工程
- [ ] Spring Boot 跨域访问
- [ ] Intellij IDEA DEBUG 调试
- [x] Thymeleaf 配置和基础用法
- [ ] 常见错误分析思路

进阶和高级的学习计划暂未指定，会在实际的项目开发和书籍阅读中逐步修正 —— 自学最怕路子跑偏，找个大神的书籍，把目录列为学习大纲，边做边学边总结吧。

## 技能栈

- [JAVA](https://www.java.com/zh_CN/download/windows-64bit.jsp) 编程语言
- [Redis](https://redis.io/) 数据和缓存管理
- [Spring Boot](https://spring.io/projects/spring-boot/) 开发框架
- [Docker](https://www.docker.com/) 部署容器
- [Maven](http://maven.apache.org/) 包管理工具
- [Thymeleaf](https://www.thymeleaf.org/) 模板引擎

## 学习资料和书籍

- 【书籍】《[Spring Boot 2 精髓：从构建小系统到架构分布式大系统](https://www.jb51.net/books/642948.html)》 —— 李家智·著
- 【书籍】《[深入浅出 Spring Boot 2.x](http://www.java1234.com/a/javabook/javaweb/2018/0928/12047.html)》 —— 杨开振·著
- 【教程】[Java 教程](http://www.runoob.com/java/java-tutorial.html) 来源：[菜鸟教程](http://www.runoob.com/)
- 【教程】[Thymeleaf 教程](https://www.e-learn.cn/thymeleaf) 来源：[易学教程](https://www.e-learn.cn/)
