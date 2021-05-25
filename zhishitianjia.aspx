<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhishitianjia.aspx.cs" Inherits="zhishitianjia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .left{
           margin-left:600px;

        }
        .top{
            margin-top:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="margin-left:auto;margin-right:auto;margin-top:50px;width:700px;">
        <div class="input-group input-group-lg top">
                        <span class="input-group-addon" id="sizing-addon1">标题</span>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="cat_master"></asp:TextBox>
                    </div>
          <div class="input-group input-group-lg top">
                        <span class="input-group-addon" id="sizing-addon2">正文</span>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="cat_master"></asp:TextBox>
                    </div>
           <asp:Button ID="Button1" runat="server" Text="添加" CssClass="btn btn-default left top" OnClick="Button1_Click"/>
    </div>
    </div>
    </form>
</body>
</html>
