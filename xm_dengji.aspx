<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xm_dengji.aspx.cs" Inherits="xm_dengji" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
          .sa {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }
        .asd {
            width: 1400px;
            margin-left: 430px;
            margin-top: 70px;
        }

        .asd-a {
            width: 1400px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 20px;
        }

        .asd-a-b {
            width: 1400px;
            margin-left: 1200px;
            margin-top: 50px;
        }

        .img-suo {
            width: 290px;
            height: 210px;
        }

        .img-top {
            margin-top: 20px;
        }

        .as {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }

        .as-textbox {
            margin-top: 40px;
            float: left;
            width: 600px;
        }

        .as-img {
            width: 700px;
            float: left;
            margin-left: 300px;
            margin-top: 40px;
        }

        .textbox-size {
            width: 500px;
        }

        .left {
            float: left;
            margin-top: 20px;
        }

        .left-close {
            margin-left: 500px;
            margin-top: 20px;
            clear: left;
        }
        .center{
            margin-left:50px;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="as">
                <h1 align="center">---寻猫登记---</h1>
            </div>

            <div class="as-img">
                <img class="img-thumbnail" src="img/xunmao.jpg" />
            </div>

            <div class="as-textbox">
                <div class="jumbotron">
                  
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon2">猫名字</span>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="name"></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon3">猫年龄</span>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="age"></asp:TextBox>
                    </div>
                       <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon4">性别</span>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="sex"></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon5">丢失时间</span>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Lost time"></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon6">地址</span>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="address"></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon7">联系方式</span>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Contact information"></asp:TextBox>
                    </div>
                    <div class="input-group input-group-lg textbox-size left center">
                        <span class="input-group-addon" id="sizing-addon8">猫详细信息</span>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="details"></asp:TextBox>
                    </div>
                    <div class="left center">
                  <h2>上传图片</h2>
                        <asp:FileUpload ID="fileupload1" runat="server"  />
                    </div>
                    <div class="left-close">
                        <asp:Button ID="Button1" runat="server" Text="登记" CssClass="btn btn-default" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
    </div>
    </form>
</body>
</html>
