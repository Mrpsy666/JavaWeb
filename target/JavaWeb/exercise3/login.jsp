<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
</head>
<body>
	<%--显示提示信息 --%>
	<form action="<%=request.getContextPath()%>/exercise3/loginProcess.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password"></td>
			</tr>	
			<tr>
				<td><input type="submit" value="登录"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>

	<%
		String error = request.getParameter("error");
		if("1".equals(error)){
	%>
			<p style="color:red;">输入内容不能为空！</p>
	<%
		} else if ("2".equals(error)) {
	%>
			<p style="color: red;">账号或密码不正确!（若未注册，请先至首页注册！）</p>
	<%
		}
	%>

</body>
</html>