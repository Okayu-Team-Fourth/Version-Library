<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录成功</title>
        <link rel="stylesheet" href="./css/state.css">
    </head>
    <body>
        <div class="box">
            <div class="tt">登</div>
            <div class="tt t1">录</div>
            <div class="tt t2">成</div>
            <div class="tt t3">功！</div>
            <div class="tt t4">&nbsp;</div>
            <div class="tt t6">欢</div>
            <div class="tt t7">迎</div>
            <div class="tt t8">您</div>
            <div class="tt t9">的</div>
            <div class="tt t10">到</div>
            <div class="tt t5">来！</div>
            <%response.setCharacterEncoding("UTF-8");%>
            </p>
            <div align="center">
    <!--            <br/><br/><br/><br/><br/>
                <font color="black" size="6">登陆成功，欢迎您</font>
                <br/><br/><br/>-->
                <s:a href="lookMessageAction"><font color="red" size="6">点此进入服务</font></s:a>
            <div>
        </div>
    </body>
</html>
