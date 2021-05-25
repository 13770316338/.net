<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhaopiantianjia.aspx.cs" Inherits="zhaopiantianjia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .right {
            float: right;
        }
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-right: auto; margin-left: auto; margin-top: 60px; width: 900px;">
                <div>
                    <table class="table" style="width: 900px;">
                    <tr>
                        <td>照片</td>
                       
                    </tr>
                    <asp:Repeater ID="repeater1" runat="server">
                        <ItemTemplate>
                            <tr >
                                <td><img src="<%# DataBinder.Eval(Container.DataItem,"img") %>"</td>
                              
                                <td></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
                </div>
                <div style="float: right">
                    <asp:FileUpload ID="fileupload1" runat="server" />
                    </br>
        <asp:Button ID="Button1" runat="server" Text="添加" CssClass="btn btn-success right" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
