<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
<!--    <style type="text/css">
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
            /*position: fixed;*/
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

    </style>-->
</head>
<body>
    <div style="text-align: center" class="wrap">
    <div class="container">
        <h1 style="color: black; margin: 0; text-align: center">个人信息</h1>
        <form action="register.action">
            <label><input type="text" name="userName" placeholder="用户名"/></label><br>
            
            <label><input type="text" name="sex" placeholder="性别" /><br>
                <!--<div id="jo">
                <select>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                </div>-->
            </label>
            <label><input type="text" name="idnum" placeholder="身份证号" /></label><br>
            <label><input type="text" name="telephone" placeholder="电话号码"/></label><br>
            <label><input type="password" name="password1" placeholder="密码" /></label><br>
            <label><input type="password" name="password2" placeholder="请再一次确认密码" /></label><br>
            <label><input type="text" name="balance" placeholder="余额" /></label><br>
            <%--注册时定期存款默认为0--%>
            <label><input type="text" name="timedeposit" value="0" readonly="readonly" placeholder="定期存款默认为0"/></label><br>
            <input type="submit" value="Sign up" onclick="zhuce()"/>
            <p class="change_link" style="text-align: center">
                <span class="text">已经拥有账号?</span>
                <a href="login.jsp" class="to_login">去登陆</a>
            </p>
        </form>
    </div>
</div>
            <script>
                function zhuce(){
                    alert("注册成功!");
                }
            </script>
</body>
</html>
