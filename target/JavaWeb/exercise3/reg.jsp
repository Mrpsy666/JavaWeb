<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
</head>
<body>
	
	<form action="<%=request.getContextPath()%>/exercise3/showReg.jsp" method="post">
		<table>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="pwd0"></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="pwd1"></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<input type="radio" name="sex" value="男">男	
					<input type="radio" name="sex" value="女">女			
				</td>
			</tr>
			<tr>
				<td>爱好：</td>
				<td>
					<input type="checkbox" name="hobby" value="唱歌">唱歌
					<input type="checkbox" name="hobby" value="跳舞">跳舞
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="注册"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>