<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2019/3/14 0014
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<h1>登陆</h1>
<center>
    <table width="600px" border="1px" >
        <form action="/qqRegister.do" method="post">
            <tr>
                <td>昵称：</td>
                <td><input type="text" name="username" value="${requestScope.username}"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" value="${requestScope.password}"></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" name="age" value="${requestScope.age}"> </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="text" name="gender" value="${requestScope.gender}"> </td>
            </tr>
            <tr>
                <td>身高：</td>
                <td><input type="text" name="weight" ${requestScope.weight}> </td>
            </tr>
            <tr>
                <td><input type="submit" value="登陆"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </form>
    </table>
</center>
</body>
</html>
