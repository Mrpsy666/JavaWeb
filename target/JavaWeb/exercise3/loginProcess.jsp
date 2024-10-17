<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//接收数据
		String strName=request.getParameter("username");
		String strPwd = request.getParameter("password");
		
		//验证数据：空验证
		if(strName==null || strPwd==null || strName.isEmpty() || strPwd.isEmpty()){
			//内容为空
			response.sendRedirect("login.jsp?error=1");
		}else if(session.getAttribute("username") != null && session.getAttribute("username").equals(strName) &&
					session.getAttribute("password").equals(strPwd)){
			session.setAttribute("isValid","yes");
			response.sendRedirect("index.jsp");
		}else{
			//账号或密码不正确
			response.sendRedirect("login.jsp?error=2");
		}

	%>
</body>
</html>