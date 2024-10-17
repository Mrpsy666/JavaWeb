<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
</head>
<body>
	<%
		if(session.getAttribute("isValid") != null){
			String username = (String) session.getAttribute("username");
			String gender = (String) session.getAttribute("gender");
			String hobby = (String) session.getAttribute("hobby");
			if(username != null){
	%>
			<p><%=username%> 你好！<br/>
				您的性别是 <%=gender%> <br/>
				您的兴趣爱好是 <%=hobby%> <br/>
				<a href="<%=request.getContextPath()%>/exercise3/logout.jsp">注销</a>
			</p>
	<%
			}
		} else {
	%>
			<p><a href="<%=request.getContextPath()%>/exercise3/login.jsp">登录</a> / <a href="<%=request.getContextPath()%>/exercise3/reg.jsp">注册</a></p>
	<%
		}
	%>

	

</body>
</html>