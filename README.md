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

## Thymeleaf 模板表达式

日期格式、组件提取等.

```txt
${#dates.format(date)}
${#dates.arrayFormat(datesArray)}
${#dates.listFormat(datesList)}
${#dates.setFormat(datesSet)}
${#dates.format(date, 'dd/MMM/yyyy HH:mm')}
${#dates.arrayFormat(datesArray, 'dd/MMM/yyyy HH:mm')}
${#dates.listFormat(datesList, 'dd/MMM/yyyy HH:mm')}
${#dates.setFormat(datesSet, 'dd/MMM/yyyy HH:mm')}
${#dates.day(date)}
${#dates.month(date)}
${#dates.monthName(date)}
${#dates.monthNameShort(date)}
${#dates.year(date)}
${#dates.dayOfWeek(date)}
${#dates.dayOfWeekName(date)}
${#dates.dayOfWeekNameShort(date)}
${#dates.hour(date)}
${#dates.minute(date)}
${#dates.second(date)}
${#dates.millisecond(date)}
${#dates.create(year,month,day)}
${#dates.create(year,month,day,hour,minute)}
${#dates.create(year,month,day,hour,minute,second)}
${#dates.create(year,month,day,hour,minute,second,millisecond)}
${#dates.createNow()}
${#dates.createToday()}
```

日历

```txt
${#calendars.format(cal)}
${#calendars.arrayFormat(calArray)}
${#calendars.listFormat(calList)}
${#calendars.setFormat(calSet)}
${#calendars.format(cal, 'dd/MMM/yyyy HH:mm')}
${#calendars.arrayFormat(calArray, 'dd/MMM/yyyy HH:mm')}
${#calendars.listFormat(calList, 'dd/MMM/yyyy HH:mm')}
${#calendars.setFormat(calSet, 'dd/MMM/yyyy HH:mm')}
${#calendars.day(date)}
${#calendars.month(date)}
${#calendars.monthName(date)}
${#calendars.monthNameShort(date)}
${#calendars.year(date)}
${#calendars.dayOfWeek(date)}
${#calendars.dayOfWeekName(date)}
${#calendars.dayOfWeekNameShort(date)}
${#calendars.hour(date)}
${#calendars.minute(date)}
${#calendars.second(date)}
${#calendars.millisecond(date)}
${#calendars.create(year,month,day)}
${#calendars.create(year,month,day,hour,minute)}
${#calendars.create(year,month,day,hour,minute,second)}
${#calendars.create(year,month,day,hour,minute,second,millisecond)}
${#calendars.createNow()}
${#calendars.createToday()}
```

格式化数字对象

```txt
${#numbers.formatInteger(num,3)}
${#numbers.arrayFormatInteger(numArray,3)}
${#numbers.listFormatInteger(numList,3)}
${#numbers.setFormatInteger(numSet,3)}
${#numbers.formatInteger(num,3,'POINT')}
${#numbers.arrayFormatInteger(numArray,3,'POINT')}
${#numbers.listFormatInteger(numList,3,'POINT')}
${#numbers.setFormatInteger(numSet,3,'POINT')}
${#numbers.formatDecimal(num,3,2)}
${#numbers.arrayFormatDecimal(numArray,3,2)}
${#numbers.listFormatDecimal(numList,3,2)}
${#numbers.setFormatDecimal(numSet,3,2)}
${#numbers.formatDecimal(num,3,2,'COMMA')}
${#numbers.arrayFormatDecimal(numArray,3,2,'COMMA')}
${#numbers.listFormatDecimal(numList,3,2,'COMMA')}
${#numbers.setFormatDecimal(numSet,3,2,'COMMA')}
${#numbers.formatDecimal(num,3,'POINT',2,'COMMA')}
${#numbers.arrayFormatDecimal(numArray,3,'POINT',2,'COMMA')}
${#numbers.listFormatDecimal(numList,3,'POINT',2,'COMMA')}
${#numbers.setFormatDecimal(numSet,3,'POINT',2,'COMMA')}
${#numbers.sequence(from,to)}
${#numbers.sequence(from,to,step)}
```

字符串处理

```txt
${#strings.isEmpty(name)}
${#strings.arrayIsEmpty(nameArr)}
${#strings.listIsEmpty(nameList)}
${#strings.setIsEmpty(nameSet)}
${#strings.defaultString(text,default)}
${#strings.arrayDefaultString(textArr,default)}
${#strings.listDefaultString(textList,default)}
${#strings.setDefaultString(textSet,default)}
${#strings.contains(name,'ez')}
${#strings.containsIgnoreCase(name,'ez')}
${#strings.startsWith(name,'Don')}
${#strings.endsWith(name,endingFragment)}
${#strings.indexOf(name,frag)}
${#strings.substring(name,3,5)}
${#strings.substringAfter(name,prefix)}
${#strings.substringBefore(name,suffix)}
${#strings.replace(name,'las','ler')}
${#strings.prepend(str,prefix)}
${#strings.append(str,suffix)}
${#strings.toUpperCase(name)}
${#strings.toLowerCase(name)}
${#strings.arrayJoin(namesArray,',')}
${#strings.listJoin(namesList,',')}
${#strings.setJoin(namesSet,',')}
${#strings.arraySplit(namesStr,',')}
${#strings.listSplit(namesStr,',')}
${#strings.setSplit(namesStr,',')}
${#strings.trim(str)}
${#strings.length(str)}
${#strings.abbreviate(str,10)}
${#strings.capitalize(str)}
${#strings.unCapitalize(str)} 
${#strings.capitalizeWords(str)} 
${#strings.capitalizeWords(str,delimiters)}
${#strings.escapeXml(str)} 
${#strings.escapeJava(str)}
${#strings.escapeJavaScript(str)} 
${#strings.unescapeJava(str)} 
${#strings.unescapeJavaScript(str)}
${#strings.equals(str)}
${#strings.equalsIgnoreCase(str)}
${#strings.concat(str)}
${#strings.concatReplaceNulls(str)}
```

对象处理

```txt
${#objects.nullSafe(obj,default)}
${#objects.arrayNullSafe(objArray,default)}
${#objects.listNullSafe(objList,default)}
${#objects.setNullSafe(objSet,default)}
```

布尔值相关

```txt
${#bools.isTrue(obj)}
${#bools.arrayIsTrue(objArray)}
${#bools.listIsTrue(objList)}
${#bools.setIsTrue(objSet)}
${#bools.isFalse(cond)}
${#bools.arrayIsFalse(condArray)}
${#bools.listIsFalse(condList)}
${#bools.setIsFalse(condSet)}
${#bools.arrayAnd(condArray)}
${#bools.listAnd(condList)}
${#bools.setAnd(condSet)}
${#bools.arrayOr(condArray)}
${#bools.listOr(condList)}
${#bools.setOr(condSet)}
```

数组相关

```txt
${#arrays.toArray(object)}
${#arrays.toStringArray(object)}
${#arrays.toIntegerArray(object)}
${#arrays.toLongArray(object)}
${#arrays.toDoubleArray(object)}
${#arrays.toFloatArray(object)}
${#arrays.toBooleanArray(object)}
${#arrays.length(array)}
${#arrays.isEmpty(array)}
${#arrays.contains(array, element)}
${#arrays.containsAll(array, elements)}
```

list集合相关

```txt
${#lists.toList(object)}
${#lists.size(list)}
${#lists.isEmpty(list)}
${#lists.contains(list, element)}
${#lists.containsAll(list, elements)}
${#lists.sort(list)}
${#lists.sort(list, comparator)}
```

set集合相关

```txt
${#sets.toSet(object)}
${#sets.size(set)}
${#sets.isEmpty(set)}
${#sets.contains(set, element)}
${#sets.containsAll(set, elements)}
```

map集合相关

```txt
${#maps.size(map)}
${#maps.isEmpty(map)}
${#maps.containsKey(map, key)}
${#maps.containsAllKeys(map, keys)}
${#maps.containsValue(map, value)}
${#maps.containsAllValues(map, value)}
```

聚集，聚合

```txt
${#aggregates.sum(array)}
${#aggregates.sum(collection)}
${#aggregates.avg(array)}
${#aggregates.avg(collection)}
```

获取外部信息内部变量

```txt
${#messages.msg('msgKey')}
${#messages.msg('msgKey', param1)}
${#messages.msg('msgKey', param1, param2)}
${#messages.msg('msgKey', param1, param2, param3)}
${#messages.msgWithParams('msgKey', new Object[] {param1, param2, param3, param4})}
${#messages.arrayMsg(messageKeyArray)}
${#messages.listMsg(messageKeyList)}
${#messages.setMsg(messageKeySet)}
${#messages.msgOrNull('msgKey')}
${#messages.msgOrNull('msgKey', param1)}
${#messages.msgOrNull('msgKey', param1, param2)}
${#messages.msgOrNull('msgKey', param1, param2, param3)}
${#messages.msgOrNullWithParams('msgKey', new Object[] {param1, param2, param3, param4})}
${#messages.arrayMsgOrNull(messageKeyArray)}
${#messages.listMsgOrNull(messageKeyList)}
${#messages.setMsgOrNull(messageKeySet)}
```

处理可能重复的id属性

```txt
${#ids.seq('someId')}
${#ids.next('someId')}
${#ids.prev('someId')}
```
