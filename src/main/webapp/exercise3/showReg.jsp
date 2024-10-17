<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册验证</title>
</head>
<body>
	<%
		//接收数据
		String strPwd=request.getParameter("pwd0");
		String strPwd1=request.getParameter("pwd1");
		String username = request.getParameter("username");
		String gender = request.getParameter("sex");
		
		String[] hobby=request.getParameterValues("hobby");
		
		//验证数据:空；数据合法性
		if(strPwd==null || strPwd.equals("") || hobby==null || hobby.length==0){
			System.out.println("密码或爱好不能为空，请重新输入");
			return;
		}
		
		if(!strPwd.equals(strPwd1)){
			System.out.println("两次密码输入不一致！");
			return;
		}
		
	
		//处理数据:1.String[]->String; 
		String strHobby="";
		for(int i=0; i<hobby.length; i++){
			strHobby+=hobby[i]+";"; //唱歌; 跳舞; 
		}
		//hobby=strHobby.split(";");
		
		if(!strHobby.equals("")){
			strHobby=strHobby.substring(0,strHobby.length()-1);
		}		
		
		//2.连接数据库，验证数据库中是否已经存在该用户；若存在则跳转到注册页面并提示，否则将数据写入数据库；
		if(session.getAttribute(username) != null){
			System.out.println("用户名已存在！");
			return;
		}else {
			session.setAttribute("username", username);
			session.setAttribute("password", strPwd);
			session.setAttribute("hobby", strHobby);
			session.setAttribute("gender", gender);
	%>
			<p>注册成功，请至首页进行登录</p>
			<a href="<%=request.getContextPath()%>/exercise3/index.jsp">首页</a>
	<%
		}
	%>
	
</body>
</html>