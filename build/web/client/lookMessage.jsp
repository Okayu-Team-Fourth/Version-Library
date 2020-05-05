<%-- 
    Document   : lookmessage
    Created on : 2020-4-15, 19:55:07
    Author     : 85173
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.PersonInfoPO"%>

<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息</title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
            <hr color="black"/>
            <br/>
            <table align="center" width="80%">
                <tr>
                    <td width="25%">
                        您的个人信息
                    </td>
                    <td width="25%">
                        <s:a href="http://localhost:8181/Bank_beta/client/lookAccountMessage.jsp">账户信息</s:a>
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
                <th>本行卡号</th>
                <th>性别</th>
                <th>身份证号</th>
                <th>电话</th>
            </tr>
            <%
                ArrayList list=(ArrayList)session.getAttribute("allInfo");
                String loginflag= session.getAttribute("loginflag").toString(); 
                int loginId =Integer.parseInt(loginflag);
                if(list.isEmpty()){
            %>
                    <tr>
                        <td align="center">
                            <span>暂无个人信息!</span>
                        </td>
                    </tr>
                    <%
                }else {
                    for(int i=0;i<list.size();i++){
                        PersonInfoPO info = (PersonInfoPO)list.get(i);
                        if(loginId == info.getId()){
                    %>
                        <tr>
                            <td><%=info.getName()%></td>
                               <td><%=info.getSex()%></td>
                                  <td><%=info.getIdnum()%></td>
                            <td><%=info.getTelephone()%></td>
                        </tr>
            <%
                        }
                    }
                }
            %>
        </table>
    </body>
</html>