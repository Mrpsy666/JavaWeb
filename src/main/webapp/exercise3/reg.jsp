<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/10/12
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/exercise3/showReg.jsp" method="post">
    用户名: <input type="text" name="username"><br>
    密码: <input type="password" name="password"><br>
    确认密码: <input type="password" name="confirmPassword"><br>
    性别:
    <input type="radio" name="gender" value="男">男
    <input type="radio" name="gender" value="女">女<br>
    兴趣:
    <input type="checkbox" name="hobby" value="爬山">爬山
    <input type="checkbox" name="hobby" value="钓鱼">钓鱼<br><br>
    <input type="submit" value="注册">
    <input type="reset" value="重置">
</form>
</body>
</html>
