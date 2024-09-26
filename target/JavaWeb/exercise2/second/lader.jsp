<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String topStr = request.getParameter("top");
    String bottomStr = request.getParameter("bottom");
    String heightStr = request.getParameter("height");

    if (topStr != null && bottomStr != null && heightStr != null) {
        try {
            double top = Double.parseDouble(topStr);
            double bottom = Double.parseDouble(bottomStr);
            double height = Double.parseDouble(heightStr);

            double area = (top + bottom) * height / 2;
%>
            <p>梯形的面积是: <%= String.format("%.2f", area) %></p>
<%
        } catch (NumberFormatException e) {
%>
            <p>输入错误: 请确保所有输入都是有效的数字。</p>
<%
        }
    } else {
%>
        <p>错误: 缺少必要的参数。</p>
<%
    }
%>