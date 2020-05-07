<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
			cursor: pointer;
			color: black;/*鼠标碰触颜色*/
			background-color: #959090;
			}
			a:active{
				color:rgba(0,28,147,1.00);/*点击时的颜色*/
			}
			a{
			text-decoration: none;
			color: #040404;	
		}
	
	</style>
</head>
<body background="images/bg.png">
<script language="javascript">     
         //防止页面后退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });    
</script>
	<div>
		<img src="images/logo1.0.png" style="width: 500px;height: 150px;margin-top: 0px">
	</div>
    <div  class="container">
        <form class="form_1" action="login.action">
            <input type="text" name="userName" placeholder="银行卡号"/><br>
            <input type="password" name="password" placeholder="密码" /><br>
            <input type="submit" value="登陆"/>
            <p class="change_link" style="text-align: center"> <span class="text">管理员?</span> 
                <a class="a_1" href="adminlogin.jsp"><strong> 点击登录</strong></a> </p>
        </form>
    </div>
</body>
</html>
