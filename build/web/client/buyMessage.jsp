<%-- 
    Document   : buyMessage
    Created on : 2020-4-19, 18:25:15
    Author     : 85173
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.PersonInfoPO"%>

<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>购买产品</title>
    </head>
    <body style="background-image:url(./images/background1.jpg)">
        <%response.setCharacterEncoding("UTF-8");%>
        <div align="center">
        <hr color="black"/>
        <br/>
        <table align="center" width="80%">
            <tr>
                <td width="25%">
                    产品信息
                </td>
                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/lookAccountMessage.jsp">个人信息</s:a>
                </td><!--
-->                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/lookAccountMessage.jsp">账户信息</s:a>
                </td><!--
-->                <td width="25%">
                    <s:a href="http://localhost:8181/Bank_beta/client/deleteMessage.jsp">退出登陆</s:a>
                </td>
            </tr>
        </table>
        <br/>
        <hr color="black"/>
        <br/><br/><br/>
        </div>
                <s:form action="buyMessageAction" method="post">
                <table align="center" width="80%" border="5">
            <tr>
                <th>余额</th>
               
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
                            <td>
                                <input type="hidden" name="balance" value="<%=info.getBalance()%>"><%=info.getBalance()%></input>
                                <input type="hidden" name="id" value="<%=info.getId()%>"></input>
                                 <input type="hidden" name="name" value="<%=info.getName()%>"></input>
                                  <input type="hidden" name="password" value="<%=info.getPassword()%>"></input>
                                 <input type="hidden" name="sex" value="<%=info.getSex()%>"></input>
                                  <input type="hidden" name="idnum" value="<%=info.getIdnum()%>"></input>
                                  <input type="hidden" name="telephone" value="<%=info. getTelephone()%>"></input>
                                
                            </td>  
                        </tr>
                    <%
                        }
                    }
                }
            %>
        </table>

            <table align="center" width="80%" border="5">
                
                <td>
                   购买定期产品
                </td>
                        <td>
                            <input name="buynum" value="请输入购买数量"/>
                        </td>
                </tr>
                <tr>
                    <td>
                    已拥有的定期产品
                    </td>
                    <%
                
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
                        
                            <td>
                                <input type="hidden" name="timedeposit" value="<%=info.getTimedeposit()%>"><%=info.getTimedeposit()%></input>
                            </td>  
                       
                    <%
                        }
                    }
                }
            %>
                </tr>
             <tr>

                            <s:submit value="提交"></s:submit>

            </tr>
           </table> 
                <br><br>
        <table align="center" width="80%" border="5">
            <tr>
                <th>更多产品尽情期待</th>                
            </tr>
       </table>
       </s:form>
    </body>
</html>
