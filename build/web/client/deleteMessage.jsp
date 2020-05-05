<%-- 
    Document   : deleteMessage
    Created on : 2020-4-19, 10:47:49
    Author     : 85173
--%>

<%@page import="PO.PersonInfoPO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="管理系统-删除"/></title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>

            <hr color="black"/>
        <br/>
        <table align="center" width="80%">
            <tr>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/lookMessage.jsp">个人信息</s:a>
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/lookAccountMessage.jsp">账户信息</s:a>
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/buyMessage.jsp">购买产品</s:a>
                </td>
                <td width="25%">
                    退出登陆
                </td>
            </tr>
        </table>
        <br/>
        <div align="center">
        <hr color="black"/>
        <br/><br/><br/>
        <font size="5">您真的要退出吗？</font><br>
        <s:a href="http://localhost:8181/Bank_beta/login/login.jsp" onclick="loginOut()"><font color="blue" size="6">注销</font></s:a>    
        </div>
    <scrip>
            <script>
                function loginOut(){
                    alert("欢迎您下次使用");
                }
            </script>
    </scrip>
    </body>
</html>
