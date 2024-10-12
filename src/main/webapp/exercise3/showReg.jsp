<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/10/12
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String confirmPassword = request.getParameter("confirmPassword");
  String gender = request.getParameter("gender");
  String hobby = request.getParameter("hobby");
  if(username == null || username.isEmpty() ||
          password == null || password.isEmpty() ||
          confirmPassword == null || confirmPassword.isEmpty()) {
    out.println("注册失败：用户名或密码不能为空。<a href='reg.jsp'>返回注册页面</a>");
  } else if (!password.equals(confirmPassword)) {
    out.println("注册失败：两次密码输入不一致。<a href='reg.jsp'>返回注册页面</a>");
  } else {
    out.println("注册成功！");
    out.println("姓名:" + username);
    out.println("性别:" + gender);
    out.println("兴趣:" + hobby);

  }
%>
