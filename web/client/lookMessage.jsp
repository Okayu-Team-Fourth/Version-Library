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
        <link rel="stylesheet" href="./css/layout_left.css">
        <link rel="stylesheet" href="./css/layout_right.css">
        <link rel="stylesheet" href="./css/layout.css">
        <link rel="stylesheet" href="./font_d755ntejev/iconfont.css">
        <link rel="stylesheet" href="./font_fvgpcvhbwq6/iconfont.css">
        <link rel="stylesheet" href="./font_9qdbj8xb6n/iconfont.css">
        <link rel="stylesheet" href="./alibaba/font_3zajdhjqmf4/iconfont.css">
        <link rel="stylesheet" href="./alibaba/font_j2cyzq94wb/iconfont.css">
        <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
        <script src="./js/left.js"></script>
    </head>
<body>
    <header id="left" class="left-main">
        <%response.setCharacterEncoding("UTF-8");%>
        <div class="left-bg">
            <div class="left" id="img_radius">
                <section class="lay">
                    <img src="./img/head.jpg" class="img_lay">
                    <a href="#">
                    <!--    <hgroup>
                            <h1 style="font-size: 15px; color: #dbd8d6">工大首富的账户</h1>
                            <h2 style="font-size: 13px; color: #dbd8d6">shoufu's account</h2>
                        </hgroup>-->
                    </a>
                </section>
                <section class="lay_chart">
                    <ul>
                        <li data-subtitle="返回主页" id="zhuye">
                            <s:a href="../client/lookAccountMessage.jsp" id="zhuye">
                                <i class="iconfont icon-zhanghu"></i>
                            </s:a>
                        </li>
                        <li data-subtitle="留言板" id="liuyan">
                            <s:a href="../client/buyMessage.jsp">
                                <i class="iconfont icon-goumai"></i>
                            </s:a>
                        </li>
                        <li data-subtitle="我的GitHub" id="dingyue">
                            <s:a href="../client/deleteMessage.jsp">
                                <i class="iconfont icon-shanchu"></i>
                            </s:a>
                        </li>
                        <li data-subtitle="切换字体风格" id="ziti">
                            <i class="iconfont icon-ziti"></i>
                        </li>
                        <li data-subtitle="夜间模式" id="yejianmoshi">
                            <i class="iconfont icon-yejianmoshi"></i>
                        </li>
                        <li data-subtitle="全屏模式" id="quanping" ondblclick='toggleFullScreen();'>
                            <i class="iconfont icon-quanping"></i>
                        </li>
                    </ul>
                </section>
                <section class="lay-clic">
                </section>
                <section class="lay_chart" style="color: #beb3af;font-size: 15px">
                    <p>种稻打桥牌，勤劳致富</p>
                </section>
                <section class="lay-comments">
                    <div class="border1">
                        <div id="comments-list">
                            <%
                                ArrayList list=(ArrayList)session.getAttribute("allInfo");
                                String loginflag= session.getAttribute("loginflag").toString(); 
                                int loginId =Integer.parseInt(loginflag);
                                if(list.isEmpty()){
                            %>
                                    <!--<tr>-->
                                        <!--<td align="center">-->
                                            <span>暂无个人信息!</span>
                                        <!--</td>-->
                                    <!--</tr>-->
                                    <%
                                }else {
                                    for(int i=0;i<list.size();i++){
                                        PersonInfoPO info = (PersonInfoPO)list.get(i);
                                        if(loginId == info.getId()){
                                    %>
                                        <!--<tr>-->
                                            <li class="comments">
                                                <h4>姓名:  <%=info.getName()%></h4>
                                            </li>
                                            <li class="comments">
                                                <h4>性别:  <%=info.getSex()%></h4>
                                            </li>
                                            <li class="comments">
                                                <h4>身份证号:  <%=info.getIdnum()%></h4>
                                            </li>
                                            <li class="comments">
                                                <h4>手机号码:  <%=info.getTelephone()%></h4>
                                            </li>
                                        <!--</tr>-->
                            <%
                                        }
                                    }
                                }
                            %>
                        </div>
                        <div class="buttons">
                            <div class="buttons-comments">
                                <a href="../client/lookMessage.jsp">
                                    <i class="iconfont icon-gengduo"></i>
                                    查看更多
                                </a>
                            </div>
                            <div class="buttons-comments">
                                <a href="#">
                                    <i class="iconfont icon--liuyanban"></i>
                                    写新留言
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!--<div class="left" id="img_radius" style="background-color: #545a61">-->
        </div>
    </header>
    <div id="main">
        <span>暂无通知</span>
    </div>
</body>
</html>