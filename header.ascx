<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a href="index.aspx" class="navbar-brand">萝卜炖流浪猫救助会</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="lingyang.aspx">流浪猫领养</a></li>
                <li><a href="zhaopianqiang.aspx">流浪猫照片墙</a></li>
                <li><a href="xunmao.aspx">寻找丢失宠物</a></li>
                <li><a href="zhishizhongxin.aspx">知识中心</a></li>
                
                <li><a href="jiaruwomen.aspx">加入我们</a></li>
                <li><a href="gerenxinxi.aspx"><asp:Label ID="Label1" runat="server" Text="" Visible="false" CssClass="" ForeColor="White"></asp:Label></a></li>
                <li><a href="user_denglu.aspx">登入</a></li>
                
            </ul>

        </div>

    </div>
</nav>
