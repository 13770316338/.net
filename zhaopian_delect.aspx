<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhaopian_delect.aspx.cs" Inherits="zhaopian_delect" %>

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
                        <td>照片</td>
                        
                        
                    </tr>
                    <asp:Repeater ID="repeater1" runat="server" >
                        <ItemTemplate>
                            <tr >
                                <td><img src="<%# DataBinder.Eval(Container.DataItem,"img") %>"</td>
                                
                                <td><asp:Button ID="Button1" runat="server" Text="删除"  CssClass="btn btn-danger"  OnClick="Button1_Click" CommandArgument='<%# Eval("number") %>'/></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
    </div>
    </form>
</body>
</html>
