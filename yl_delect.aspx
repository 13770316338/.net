<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yl_delect.aspx.cs" Inherits="yl_delect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-top: 50px; margin-left: auto; margin-right: auto; width: 1100px;">
                <table class="table" style="width: 1100px;">
                    <tr>
                        <td>用户名</td>
                        <td>年龄</td>
                        <td>地址</td>
                        <td>电话</td>
                        <td>邮箱</td>
                        <td>确认删除</td>
                    </tr>
                    <asp:Repeater ID="repeater1" runat="server" >
                        <ItemTemplate>
                            <tr >
                                <td><%# DataBinder.Eval(Container.DataItem,"user_yh") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"age") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"address") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"iphone") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"email") %></td>
                                <td><asp:Button ID="Button1" runat="server" Text="删除"  CssClass="btn btn-danger" OnClick="Button1_Click" CommandArgument='<%# Eval("user_yh") %>'/></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
