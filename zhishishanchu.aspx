<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhishishanchu.aspx.cs" Inherits="zhishishanchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="margin-top: 50px; margin-left: auto; margin-right: auto; width: 1100px;">
                <table class="table" style="width: 1100px;">
                    <tr>
                        <td>标题</td>
                        <td>时间</td>
                       
                    </tr>
                    <asp:Repeater ID="repeater1" runat="server" >
                        <ItemTemplate>
                            <tr >
                                <td><%# DataBinder.Eval(Container.DataItem,"test_title") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"test_datetime") %></td>
                               
                                <td><asp:Button ID="Button1" runat="server" Text="删除"  CssClass="btn btn-danger" OnClick="Button1_Click"  CommandArgument='<%# Eval("test_number") %>'/></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
    </div>
    </form>
</body>
</html>
