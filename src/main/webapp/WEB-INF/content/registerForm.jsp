<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2019/11/5
  Time: 上午11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>测试JSR303</title>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h3>注册页面</h3>
    <form:form modelAttribute="user" method="post" action="login" cssClass="form-horizontal">
        <div class="form-group">
            <label for="loginname" class="col-sm-1 control-label">登录名：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="loginname" cssClass="form-control" id="loginname"/>
                <form:errors path="loginname" cssClass="form-control" cssStyle="color: red"/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-1 control-label">密码：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="password" id="password" cssClass="form-control"/>
                <form:errors path="password" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="username" class="col-sm-1 control-label">用户名：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="username" cssClass="form-control"/>
                <form:errors path="username" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="age" class="col-sm-1 control-label">年龄：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="age" cssClass="form-control"/>
                <form:errors path="age" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-1 control-label">邮箱：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="email" cssClass="form-control"/>
                <form:errors path="email" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="birthDate" class="col-sm-1 control-label">生日：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="birthDate" cssClass="form-control"/>
                <form:errors path="birthDate" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-1 control-label">电话：</label>
            <div class="col-sm-11 form-inline">
                <form:input path="phone" cssClass="form-control"/>
                <form:errors path="phone" cssStyle="color: red" cssClass="form-control"/>
            </div>
        </div>
        <button class="btn btn-primary">提交</button>
    </form:form>
</div>
</body>
</html>
