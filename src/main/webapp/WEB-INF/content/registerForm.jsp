<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2019/10/5
  Time: 上午10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>测试JSR303</title>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h3>注册页面</h3>
    <form:form modelAttribute="user" method="post" action="login" cssClass="form-horizontal">
        <div class="form-group">
            <label for="loginname">登录名</label>
            <form:input path="loginname" cssClass="form-control" id="loginname"/>
            <form:errors path="loginname" cssClass="form-control"/>
        </div>
        <table class="table">
            <tr>
                <td>密码：</td>
                <td><form:input path="password"/></td>
                <td><form:errors path="password" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td>用户名：</td>
                <td><form:input path="username"/></td>
                <td><form:errors path="username" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><form:input path="age"/></td>
                <td><form:errors path="age" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><form:input path="email"/></td>
                <td><form:errors path="email" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><form:input path="birthDate"/></td>
                <td><form:errors path="birthDate" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td>电话：</td>
                <td><form:input path="phone"/></td>
                <td><form:errors path="phone" cssStyle="color: red"/> </td>
            </tr>
            <tr>
                <td><input type="submit" value="提交"></td>
            </tr>
        </table>
    </form:form>
    <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?">点我弹出/隐藏弹出框</button>
</div>
</body>
</html>
