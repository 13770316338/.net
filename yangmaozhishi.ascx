<%@ Control Language="C#" AutoEventWireup="true" CodeFile="yangmaozhishi.ascx.cs" Inherits="yangmaozhishi" %>
<asp:DataList ID="datalist1" runat="server">
    <ItemTemplate>
        <div class="panel panel-warning" style="margin-top: 5px; width:1400px;">
            <div class="panel-heading">养猫知识护理<%# DataBinder.Eval(Container.DataItem,"test_number") %></div>
            <div class="panel-body">
                <a href="zhishi_xq.aspx?id=<%# DataBinder.Eval(Container.DataItem,"test_number") %>"><%# DataBinder.Eval(Container.DataItem,"test_title") %></a>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>