<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>1到10相加</title>
</head>
<body>
    <%
        int sum=0;
        for(int i=0;i<11;i++){
            sum+=i;
            
    %>
        当前的i的值为: <%= i %>
    <%
        }
    %>
    <%
        out.print("1 到 10 相加等于 "+sum);
    %>
</body>
</html>
