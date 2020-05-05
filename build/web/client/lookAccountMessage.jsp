<%-- 
    Document   : lookAccountMessage
    Created on : 2020-4-19, 12:36:19
    Author     : 85173
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.PersonInfoPO"%>

<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--<script language="JavaScript">
setTimeout(function(){location.reload()},1000); //指定1秒刷新一次
</script>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>账户信息</title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
        <hr color="black"/>
        <br/>
        <table align="center" width="80%">
            <tr>
                <td width="25%">
                    您的账户信息
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/lookMessage.jsp">个人信息</s:a>
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/buyMessage.jsp">购买产品</s:a>
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/deleteMessage.jsp">退出登陆</s:a>
                </td>
            </tr>
        </table>
        <br/>
        <hr color="black"/>
        <br/><br/><br/>
     
        </div>
        <table align="center" width="80%" border="5">
            <tr>
                <th>余额</th>
                <th>定期存款</th>
            </tr>
            <%
                ArrayList list=(ArrayList)session.getAttribute("allInfo");
                String loginflag= session.getAttribute("loginflag").toString(); 
                int loginId =Integer.parseInt(loginflag);
                if(list.isEmpty()){
            %>
                    <tr>
                        <td align="center">
                            <span>暂无账户信息!</span>
                        </td>
                    </tr>
                    <%
                }else {
                    for(int i=0;i<list.size();i++){
                        PersonInfoPO info = (PersonInfoPO)list.get(i);
                        if(loginId == info.getId()){
                    %>
                        <tr> 
                            <td><%=info.getBalance()%></td>
                            <td><%=info.getTimedeposit()%></td>
                        </tr>
            <%
                        }
                    }
                }
            %>
        </table>
    </body>
</html>