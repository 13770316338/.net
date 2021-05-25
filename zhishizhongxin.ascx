<%@ Control Language="C#" AutoEventWireup="true" CodeFile="zhishizhongxin.ascx.cs" Inherits="zhishizhongxin" %>


 <asp:DataList ID="datalist1" runat="server">
<ItemTemplate>
    <table class="table table-hover textsize">
 <tr>
     <td><a href="zhishi_xq.aspx?id=<%# DataBinder.Eval(Container.DataItem,"test_number") %>"><%# DataBinder.Eval(Container.DataItem,"test_title") %>></a></td>
 </tr>
    
</table>
</ItemTemplate>
</asp:DataList>
