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
        <style type="text/css">
	.container {
            border:2px solid #FFFFF;
            background: rgba(0,0,0,0.2);
            border-radius:25px;
            width: 40%;
            margin: 0 auto;
            padding: 100px;
        }
        .container input {
            width: 320px;
            display: block;
            height: 36px;
            border: 0;
            outline: 0;
            padding: 6px 10px;
            line-height: 24px;
            margin: 20px auto;
            -webkit-transition: all 0s ease-in 0.1ms;
            -moz-transition: all 0s ease-in 0.1ms;
            transition: all 0s ease-in 0.1ms;
        }
        .container input[type="text"] , .container input[type="password"]  {
            background-color:#D8F6F9;

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
			background: #ABC8FF;
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
            color: blcak;		
        }
        .a_1{
            text-decoration:none;
        }
	
	</style>
    </head>
    <body background="images/bg.png">
        <%response.setCharacterEncoding("UTF-8");%>
        <div>
		<img src="images/logo1.0.png" style="width: 500px;height: 150px;margin-top: 0px">
	</div>
        <div align="center">
            <br/><br/><br/><br/><br/>
            <font color="black" size="6">管理员登陆成功，欢迎您</font>
            <br/><br/><br/>
            <a class="a_1" href="lookAdminMessageAction"><font color="blue" size="6">点此查看报表</font></a>
        <div>
    </body>
</html>
