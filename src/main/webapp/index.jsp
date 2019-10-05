<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2019/10/5
  Time: 上午10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>校验测试</title>
    <link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
  </head>
  <body>
  <div class="container">
    <a href="${pageContext.request.contextPath}/registerForm">校验测试</a><br>
    <a href="${pageContext.request.contextPath}/uploadForm">上传测试</a><br>
    <a href="${pageContext.request.contextPath}/download?filename=评分标准.docx">下载测试</a><br>
  </div>
  </body>
</html>
