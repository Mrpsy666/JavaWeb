<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>People</title>
</head>
<body>
    <%!
        StringBuffer person;
        int count;

        public void judge() {
            if (count == 0) {
                person = new StringBuffer();
            }
        }

        public void addPerson(String p) {
            person.append(p).append(", ");
            count++;
        }
    %>

    <%
        String username = request.getParameter("username");
        if (username == null || username.trim().isEmpty()) {
    %>
        <jsp:forward page="inputName.jsp">
            <jsp:param name="warning" value="输入内容不能为空或空格"/>
        </jsp:forward>
    <%
        } else if (username.length() > 10){

    %>
        <jsp:forward page="inputName.jsp">
            <jsp:param name="warning" value="输入字符数量不能大于10"/>
        </jsp:forward>
    <%  } else{
            judge();
            addPerson(username);
        }
    %>


    <h2>已添加的人员：</h2>
    <p>人员列表: <%= person %></p>
    <p>总人数: <%= count %></p>

    <a href="inputName.jsp">返回添加更多人员</a>
</body>
</html>
