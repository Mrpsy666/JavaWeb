<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html";charset="UTF-8" http-equiv="Content-Type">
    <title>JSP声明例子</title>
</head>
<%!
    int x, y = 60, z;
    String name = "John";
    Date date = new Date();
%>
<%!
    int add(int m, int n){
        int result = 0;
        result = m+n;
        return result;
    }
%>
<%!
    int chengji(int m, int n){
        int result = 0;
        result = m * n;
        return result;
    }
%>
<%!
    class Circle{
        double r;
        Circle(double r){
            super();
            this.r = r;
        }

        double area(){
            return Math.floor(Math.PI * r * r);
        }
    }
%>
<body>
    <%
        out.println("我的名字 :" + name);
        out.println("<br/><br/>");
        out.println("x 的值为: " + x);
        out.println("<br/><br/>");
        out.println("y 的值为: " + y);
        out.println("<br/><br/>");
        out.println("z的值为: " + z);
        out.println("<br/><br/>");
        out.println("现在的时间为: " + date);
        out.println("<br/><br/>");
        out.println("10 + 20 = " + add(10, 20));
        out.println("<br/><br/>");
        out.println("10 * 20 = "+ chengji(10,20));
    %>
    <br/><br/>
    <%
        Circle c = new Circle(6);
        out.println("半径为6的圆面积为: " + c.area());
    %>
</body>
</html>
