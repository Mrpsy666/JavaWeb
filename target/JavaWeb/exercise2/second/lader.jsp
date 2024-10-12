<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String topStr = request.getParameter("top");
    String bottomStr = request.getParameter("bottom");
    String heightStr = request.getParameter("height");

    if (topStr != null && bottomStr != null && heightStr != null) {
        double top = Double.parseDouble(topStr);
        double bottom = Double.parseDouble(bottomStr);
        double height = Double.parseDouble(heightStr);

        if(top <=0 || bottom <=0 || height <=0){
%>
    <p>输入错误: 请确保所有输入都是正数</p>
<%
        }else {
            double area = (top + bottom) * height / 2;
%>
            <p>梯形的面积是: <%= String.format("%.2f", area) %></p>
<%
        }
    }
%>