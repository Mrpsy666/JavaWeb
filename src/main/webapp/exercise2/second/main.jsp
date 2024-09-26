<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>梯形面积计算器</title>
</head>
<body>
    <h1>梯形面积计算器</h1>
    <form action="main.jsp" method="post">
        上底: <input type="number" name="top" required><br>
        下底: <input type="number" name="bottom" required><br>
        高: <input type="number" name="height" required><br>
        <input type="submit" value="计算面积">
    </form>

    <%
    String top = request.getParameter("top");
    String bottom = request.getParameter("bottom");
    String height = request.getParameter("height");

    if (top != null && bottom != null && height != null) {
    %>
        <h2>计算结果:</h2>
        <jsp:include page="lader.jsp">
            <jsp:param name="top" value="<%= top %>"/>
            <jsp:param name="bottom" value="<%= bottom %>"/>
            <jsp:param name="height" value="<%= height %>"/>
        </jsp:include>
    <%
    }
    %>
</body>
</html>