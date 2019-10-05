<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2019/10/5
  Time: 下午2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
    <link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
<div class="container">
    <h2>文件上传</h2>
    <form action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data" method="post" class="form-group">
        <div class="form-group">
            <label for="description" class="control-label">描述：</label>
            <input type="text" name="description" id="description" class="form-control">
            <label for="file" class="control-label">选择文件</label>
            <input type="file" name="file" id="file" class="glyphicon-file">
        </div>
        <button class="btn btn-primary">提交</button>
    </form>
</div>
</body>
</html>
