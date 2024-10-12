<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input Name</title>
</head>
<body>
    <%!
        String warning;
    %>
    <h1>输入姓名</h1>
    <form action="<%=request.getContextPath()%>/exercise2/first/people.jsp" method="post">
        <input type="text" name="username" required>
        <input type="submit" value="提交">
    </form>

    <%
        String warn = request.getParameter("warning");
        warning = warn;
        if(warning != null){
    %>
    <%=warning%>
    <%
        }
    %>


</body>
</html>