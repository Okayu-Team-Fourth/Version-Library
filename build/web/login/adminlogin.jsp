<%-- 
    Document   : adminlogin.jsp
    Created on : 2020-4-24, 9:22:06
    Author     : 22603
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="基于SH的应用"></s:text></title>
    </head>
    <body bgcolor="#CCCCFF">
        <s:form action="adminlogin" method="post">
            <br><br><br><br><br><br>
            <table border="1" align="center" bgcolor="#AABBCCDD">
                <tr>
                    <td>
                        <s:textfield name="adminname" label="用户名字" size="16"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <s:password name="adminpwd" label="用户密码" size="16"/>
                    </td>
                </tr>
                   <tr>
                    <td>
                        <s:password name="adminkey" label="密钥" size="16"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <s:submit value="登录"/>
                </td>
                </tr>
            </table>
        </s:form>
    </body>
</html>
<html>-->
<head>
    <meta charset="UTF-8">
    <title>村镇银行储蓄登录系统</title>
    <style type="text/css">
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
            padding: 0;
            font: 16px/20px microsft yahei;
        }
        .wrap {
            width: 100%;
            height: 100%;
            padding: 10% 0;
            position: fixed;
            opacity: 0.8;
            background: linear-gradient(to bottom right,#000000, #656565);
            background: -webkit-linear-gradient(to bottom right,#50a3a2,#53e3a6);
        }
        .container {
            width: 60%;
            margin: 0 auto;
        }
        .container h1 {
            text-align: center;
            color: #FFFFFF;
            font-weight: 500;
        }
        .container input {
            width: 320px;
            display: block;
            height: 36px;
            border: 0;
            outline: 0;
            padding: 6px 10px;
            line-height: 24px;
            margin: 32px auto;
            -webkit-transition: all 0s ease-in 0.1ms;
            -moz-transition: all 0s ease-in 0.1ms;
            transition: all 0s ease-in 0.1ms;
        }
        .container input[type="text"] , .container input[type="password"]  {
            background-color: #FFFFFF;
            font-size: 16px;
            color: #50a3a2;
        }
        .container input[type='submit'] {
            font-size: 16px;
            letter-spacing: 2px;
            color: #666666;
            background-color: #FFFFFF;
        }
        .container input:focus {
            width: 400px;
        }
        .container input[type='submit']:hover {
            cursor: pointer;
            width: 400px;
        }
        .to_login{
            color: #a7c4c9;
        }
        .text{
            color: #e2dfe4;
        }

    </style>
</head>
<body>
<div class="wrap">
    <div class="container">
        <h1 style="color: white; margin: 0; text-align: center">管理员</h1>
        <form action="adminlogin.action" method="post">
            <label><input type="text" name="adminname" placeholder="账户名"/></label>
            <label><input type="password" name="adminpwd" placeholder="密码" /></label>
            <label><input type="password" name="adminkey" placeholder="密钥"/></label>
            <input type="submit" value="登录"/>
             <p class="change_link" style="text-align: center">
                <span class="text">不是管理员？</span>
                <a href="login.jsp" class="to_login">请返回</a>
            </p>
            <%
//            session.setAttribute("flag",  "username"); 
            %>
        </form>
    </div>
</div>
</body>
</html>