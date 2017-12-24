---
title: html知识点
date: 2017-12-24 19:16:52
tags:
---
```
HTML、XML、XHTML 的区别

html：超文本标记语言（Hyper Text Markup Language），是最早写网页的语言，但是由于时间早，规范不是很好，大小写混写且编码不规范；
xhtml：升级版的html（Extensible Hyper Text Markup Language），对html进行了规范，编码更加严谨纯洁，也是一种过渡语言，html向xml过渡的语言；
xml：可扩展标记语言（Extensible Markup Language），是一种跨平台语言，编码更自由，其标签没有被预定义，可以根据自己需求自由创建标签。主要用于存储数据和结构参考，而非显示数据。
总结：XHTML是HTML向XML 过度的一个桥梁。而xml是web发展的趋势。

1.HTML 的版本（W3C 组织制定规范）
HTML 4.01
XHTML
HTML 5
HTML 5.1
HTML第一版是由李爵士创办的，W3C是由他创建的。HTML5是现在通用的，HTML5的标签在HTML4标签里面好多没有，而XHTML的标签好多标签需要闭合，如<input>标签在HTML5里面是<input>，在XHTML里面要写成<input/>。HTML5是自动包容前两种的。HTML5.1是最新发布的。
另外说一个知识点，H5是什么意思：能运行在微信上的网页就是H5。可以用HTML4做，也可以用HTML5做，跟技术没关系。 

2.规范文档（Specifications）
由 W3C 写文档（李爵士）
W3C 根据浏览器的实际情况总结文档，并不是凭空想象
直接看很难看懂，全英文的，事无巨细。
3.DOCTYPE
用来选择文档类型
除了 HTML 5 的 DOCTYPE，其他的都 TM 很难记：https://www.w3.org/QA/2002/04/valid-dtd-list.html
如果你没写 DOCTYPE，那你就惨了，会出现一些难以预料的bug。
4.html / head / body 
5.省略标签
如果head标签里面没有东西,可以省略;
body标签里是空的或者没有注释,也可以省略;
6.常见标签：a、form、input、button、h1、p、ul、ol、small、strong、div、span、kbd、video、audio、svg
基本上，你知道标签对应单词的意思，就知道这个标签怎么用了（语义化）
出了 div 和 span，其他标签都有默认样式
MDN 上有所有标签的文档
7.如何查看 MDN 文档
Google：关键词 + MDN
切换成中文

8.iframe 标签
嵌套页面:把一个页面嵌套在另一个页面中。可设置宽高。是可替换元素。

<iframe src=https://www.baidu.com　name=xxx></iframe>
<iframe>的name属性与<a>一起用,name与target设置成一个名称。
<iframe> src=#:意思在当前页面打开。
src还可以写相对路径,如./index.html
frameborder=0 入伏哦不设置默认有一个3D效果的border.

a href=#>link　</a> 标签被点击后页面锚点变成#,页面滚动到顶部.页面不发起请求但会刷新.
<a href=>link</a> 标签被点击后页面刷新

a 标签
跳转页面（HTTP GET 请求）
有4个target属性,
_blank 新开打开
_self  自己打开
_parent  爸爸打开
_top  顶级打开

<a>有一个download属性可以用来下载,如果不在标签里面设置,还有一个办法可以设置Content-type:application/octet-stream
如果<a>里面href=qq.com是不可以的,因为为当成一个文件.一种办法是前面要加协议http://  另一种办法是当前文件时什么协议就用什么协议 ,但是写代码一般不能用file协议,所以一般要预览html文件就要上传到github,用github的预览功能,另一种办法是下载一个小工具:http-server.这个工具帮你做一个node.js server.要进入你要打开的文件目录安装,确保是全局安装.然后运行,最后浏览器访问例如http://localhost:8081/index.html或http://localhost:8081/app.js

href写相符路径就跳转到这个相对路径.

在href里面写?name=xxx,浏览器会加在当前网址后面,发起一个get请求.

<a href=#>link </a>标签被点击后页面锚点变成#,页面滚动到顶部.页面不发起请求但会刷新.

javascript:; 伪协议   如果想写一个<a>,点击这个<a>后不想跳转,可以在href里面写javascript:;
属性见 MDN：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/a

form 标签
跳转页面（HTTP POST 请求）

属性见 MDN：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/form

<a>跳转页面的时候发起的是get请求(获取)
<form>跳转页面的时候发起的是一个post请求(上传)

如果<form>里面没有提交按钮,就无法提交,
get会把默认参数(比如用户名密码)放进查询参数里
post会把默认参数放在第四部分
可以让post也放进查询参数但是get无法放进第四部分.

<a>有target,<form>也有target,_blank也会新开页面,也能进iframe.


input / button
区别：是否为「空标签」

input 的属性见：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/Input
button 的属性见：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/button

一个<form>里面只写<button>button<button/>,这个button会自动升级为提交按钮.
如果写成<button type=button>,就不是submit了;
这个type=submit时,也能提交.

input的id和lable写成一个名字可以关联.这个方法也适用于inup=text和password
还有一个便捷的方法是用lable把input包起来.

table 标签示例
用于展示数据

属性见：https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/table

了解thead,tbody,tfoot,tr,th,td
具体参见视频.

知识点：

空标签
可替换标签
全局属性
display 不止 3 种

```