<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>People</title>
</head>
<body>
    <%!
    public void addPerson(HttpSession session, String p) {
        ArrayList<String> personList = (ArrayList<String>) session.getAttribute("personList");
        if (personList == null) {
            personList = new ArrayList<>();
            session.setAttribute("personList", personList);
        }
        personList.add(p);
    }
    %>

    <%
    String username = request.getParameter("username");
    if (username == null || username.trim().isEmpty() || username.length() > 10) {
    %>
        <jsp:forward page="inputName.jsp" />
    <%
    } else {
        addPerson(session, username);
    }
    
    ArrayList<String> personList = (ArrayList<String>) session.getAttribute("personList");
    %>

    <h2>已添加的人员：</h2>
    <p>人员列表: <%= String.join(", ", personList) %></p>
    <p>总人数: <%= personList.size() %></p>

    <a href="inputName.jsp">返回添加更多人员</a>
</body>
</html>