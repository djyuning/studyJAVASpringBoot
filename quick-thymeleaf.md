# Thymeleaf

[Thymeleaf](https://www.thymeleaf.org/) 是用于 Web 和独立环境的现代服务器端 Java 模板引擎。Thymeleaf 能够处理HTML，XML，JavaScript，CSS甚至纯文本。

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