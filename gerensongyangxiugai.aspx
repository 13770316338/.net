<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gerensongyangxiugai.aspx.cs" Inherits="gerensongyangxiugai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .top {
            margin-top: 20px;
        }

        .textsize {
            width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 600px; margin-left: auto; margin-right: auto;">
            <div>
                <table class="table" style="width: 600px;">
                    <tr>
                        <td>
                            <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon1">猫名字</span>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon2">猫年龄</span>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon3">性别</span>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon4">猫详细信息</span>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon5">领养要求</span>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                             <div class="input-group top textsize">
                                <span class="input-group-addon" id="sizing-addon6">照片</span>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                        </td>
                    </tr>

                </table>
            </div>
            <div class="left center">
                <h2>上传图片</h2>
                <asp:FileUpload ID="fileupload1" runat="server" />
            </div>
            <div style="margin-top:20px;">
                <asp:Button ID="Button1" runat="server" Text="修改" CssClass="btn btn-success" OnClick="Button1_Click" />
            </div>
             <div style="margin-top:20px;">
                <asp:Button ID="Button2" runat="server" Text="删除" CssClass="btn btn-danger" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
