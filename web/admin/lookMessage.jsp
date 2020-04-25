<%-- 
    Document   : lookMessage
    Created on : 2020-4-24, 10:00:48
    Author     : 22603
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.PersonInfoPO"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="查看"/></title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
        <hr color="red"/>
        <br/>
        <table align="center" width="80%">
            <tr>
                <td width="25%">
                    查看客户信息
                </td>
            </tr>
        </table>
        <br/>
        <hr color="red"/>
        <br/><br/><br/>
        </div>
        <table align="center" width="80%" border="5">
            <tr>
                <th>记录条数</th>
                <th>编号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>身份证</th>
                <th>电话</th>
                <th>储蓄</th>
                <th>定期存款</th>
            </tr>
            <%
                ArrayList list=(ArrayList)session.getAttribute("allInfo");
                if(list.isEmpty()){
                    %>
                    <tr>
                        <td align="center">
                            <span>暂无信息!</span>
                        </td>
                    </tr>
                    <%
                }else{
                    for(int i=0;i<list.size();i++){
                        PersonInfoPO info=(PersonInfoPO)list.get(i);
                        %>
                        <tr>
                            <td align="center"><%=i+1%></td>
                            <td><%=info.getId()%></td>
                            <td><%=info.getName()%></td>
                            <td><%=info.getSex()%></td>
                            <td><%=info.getIdnum()%></td>
                            <td><%=info.getTelephone()%></td>
                            <td><%=info.getBalance()%></td>
                            <td><%=info.getTimedeposit()%></td>
                        </tr>
                        <%
                    }
                }
            %>
        </table>
    </body>
</html>
