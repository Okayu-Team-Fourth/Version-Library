<%-- 
    Document   : adminsuccess
    Created on : 2020-4-24, 9:47:50
    Author     : 22603
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
            <br/><br/><br/><br/><br/>
            <font color="black" size="6">管理员登陆成功，欢迎您</font>
            <br/><br/><br/>
            <s:a href="lookAdminMessageAction"><font color="blue" size="6">点此查看报表</font></s:a>
        <div>
    </body>
</html>
