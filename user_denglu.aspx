<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_denglu.aspx.cs" Inherits="user_zhuce" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <style>
      
          .sa {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }
        .wqasd {
            float:left;
            margin-top: 250px;
            margin-left: 750px;
            height: 300px;
            width: 300px;
           
        }
        .wqasdw{
          margin-top: 53px;
            float:left;
            height:500px;
            width:700px;
        }

        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2{
            font-size:small;
        }
        .aqw {
            float: right;
        }

        .aqw1 {
            margin-right: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:header runat="server" ID="header" />
            </div>
        <div class="wqasdw">
            <img src="img/u=3820757217,1128751163&fm=26&gp=0.jpg" />
        </div>
            <div class="wqasd ">
               <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">用户登录</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">用户注册</a></li>
                   </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div>
                        <div class="form-group">
                            <label><span class="auto-style1">用户登录</span></label>

                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="User"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label><span class="auto-style1">密码</span></label>

                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group aqw aqw1">
                            <asp:Button CssClass="btn btn-default" ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" />

                        </div>
                            </div>
                    </div>
                    <div role="tabpanel" class="tab-pane " id="profile">
                        <div>
                        <div class="form-group">
                            <label><span class="auto-style2">用户名注册</span></label>

                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="User"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label><span class="auto-style2"> 密码</span></label>

                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        </div>
                            <div class="form-group">
                            <label><span class="auto-style2"> 年龄</span></label>

                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="age"></asp:TextBox>
                        </div>
                            <div class="form-group">
                            <label><span class="auto-style2"> 地址</span></label>

                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="address"></asp:TextBox>
                        </div>
                            <div class="form-group">
                            <label><span class="auto-style2"> 邮箱</span></label>

                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="email"></asp:TextBox>
                        </div>
                            <div class="form-group">
                            <label><span class="auto-style2"> 手机电话</span></label>

                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="iphone"></asp:TextBox>
                        </div>
                        <div class="form-group aqw aqw1">
                            <asp:Button CssClass="btn btn-default" ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />

                        </div>

                        </div>    
                    </div>

                        
                </div>
            </div>

       

        
    </form>
    <script src="bootstrap-3.3.7-dist/js/jquery-3.4.1.js" ></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    

</body>
</html>
