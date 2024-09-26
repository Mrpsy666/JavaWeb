<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java课程主页</title>
</head>
<body>
    <div class="container">
        <h1>Mr.Psy Java课程页面</h1>

        <h2>作业列表</h2>
        <table>
            <tr>
              <th>作业</th>
              <th>链接</th>
            </tr>
            <tr>
              <td>第一次作业</td>
              <td>
                <ul>
                    <li><a href="assignment?id=1">PPT代码</a></li>
                    <li><a href="assignment?id=2">书本P15代码</a></li>
                </ul>
              </td>
            </tr>
            <tr>
            <td>实验2</td>
            <td>
              <ul>
                  <li><a href="exercise2?id=1">实验2.1</a></li>
                  <li><a href="exercise2?id=2">实验2.2</a></li>
              </ul>
            </td>
            </tr>
            <td>未完</td>
            <td>
              待续
            </td>
            </tr>
          </table>          
        
    </div>
</body>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 80%;
        text-align: center;
    }
    h1 {
        color: #333;
        font-size: 28px;
    }
    p {
        font-size: 18px;
        color: #555;
    }
    h2 {
        color: #444;
        margin-bottom: 20px;
    }
    ul {
        list-style-type: none;
        padding: 0;
    }
    li {
        margin: 10px 0;
    }
    a {
        color: #6200ea;
        text-decoration: none;
        font-size: 18px;
    }
    a:hover {
        text-decoration: underline;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
</style>
</html>
