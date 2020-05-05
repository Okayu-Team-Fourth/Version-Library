<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录成功</title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
            <br/><br/><br/><br/><br/>
            <font color="black" size="6">登陆成功，欢迎您</font>
            <br/><br/><br/>
            <s:a href="lookMessageAction"><font color="blue" size="6">点此进入服务</font></s:a>
        <div>
    </body>
</html>
