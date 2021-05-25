<%@ Control Language="C#" AutoEventWireup="true" CodeFile="lingyangzhuangtai.ascx.cs" Inherits="lingyangzhuangtai" %>


<asp:DataList ID="datalist1" runat="server">
    <ItemTemplate>
        <div class="panel panel-default">
            <div class="panel-heading"><%# DataBinder.Eval(Container.DataItem,"status") %></div>

            <div class="panel-body">
                <div class="media ">
                    <div class="media-left media-middle ">
                        <a href="lingyang_xq.aspx?id=<%# DataBinder.Eval(Container.DataItem,"cat_number") %>">
                            <img class="media-object img-suo img-top" src="<%# DataBinder.Eval(Container.DataItem,"img") %>" />
                        </a>
                    </div>
                    <div class="media-body ">
                        <h2 class="media-heading img-top"><%# DataBinder.Eval(Container.DataItem,"name") %></h2>
                        <h4 class="text-warning">送养人:<%# DataBinder.Eval(Container.DataItem,"user_yh") %>&nbsp;&nbsp;&nbsp;&nbsp;猫咪描述:<%# DataBinder.Eval(Container.DataItem,"describe") %></h4>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
