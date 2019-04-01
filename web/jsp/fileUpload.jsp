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
	<h1 align="center">单个上传</h1>
    <center>
        <table width="600px" border="1px">
            <form action="<%=basePath %>/uploads/uploadFiles.do" method="post" enctype="multipart/form-data">
                <tr>
                    <td>大头照：</td>
                    <td><input type="file" multiple name="bigHeadImg"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="上传"></td>
                    <td><input type="reset" value="重置"></td>
                </tr>
            </form>
        </table>

    </center>
</body>
</html>