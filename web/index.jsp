<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>new jsp</title>
</head>
<body>
	<h1>注册</h1>
    <center>
      <table width="600px" border="1px" >
        <form action="/qqRegister.do" method="post">
          <tr>
            <td>昵称：</td>
            <td><input type="text" name="username"></td>
          </tr>
          <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
          </tr>
          <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"> </td>
          </tr>
          <tr>
            <td>性别：</td>
            <td><input type="text" name="gender"> </td>
          </tr>
          <tr>
            <td>身高：</td>
            <td><input type="text" name="weight"> </td>
          </tr>
          <tr>
            <td><input type="submit" value="注册"></td>
            <td><input type="reset" value="重置"></td>
          </tr>
          <tr>
            <td colspan="2"><input type="button" value="登陆" onclick="location.href='/showData.do'"></td>

          </tr>
        </form>
      </table>
    </center>
</body>
</html>