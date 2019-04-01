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
    <style type="text/css">
        .errorMsg{
            color:red;
            font-size: 12px;
        }
    </style>
</head>
<body>
	<h1 align="center">注册</h1>
    <center>
        <table width="600px" border="1px" >
            <form action="<%=basePath %>/admin/qqRegister.do" method="post">
                <tr>
                    <td>昵称：</td>
                    <td>
                        <input type="text" name="nick" pattern=".{3,12}" required value="${errorMap.nick==null?qqInfo.nick:''}">
                        <span class="errorMsg">${errorMap.nick}</span>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td>
                        <input type="password" name="pwd" value="${errorMap.pwd==null?qqInfo.pwd:''}">
                        <span class="errorMsg">${errorMap.pwd}</span>
                    </td>
                </tr>
                <tr>
                    <td>手机：</td>
                    <td>
                        <input type="text" name="phone" value="${errorMap.phone==null?qqInfo.phone:''}">
                        <span class="errorMsg">${errorMap.phone}</span>
                    </td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>
                        <input type="text" name="age" value="${errorMap.age==null?qqInfo.age:''}">
                        <span class="errorMsg">${errorMap.age}</span>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="注册"></td>
                    <td><input type="reset" value="重置"></td>
                </tr>
            </form>
        </table>
    </center>
</body>
</html>
