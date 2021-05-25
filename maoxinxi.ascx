<%@ Control Language="C#" AutoEventWireup="true" CodeFile="maoxinxi.ascx.cs" Inherits="maoxinxi" %>

<asp:DataList ID="datalist1" runat="server" RepeatColumns="4">
    <ItemTemplate>

        <div class="col-sm-6 col-md-4 ">
            <div class="thumbnail textsize1">
                <image class="img-left" src="<%# DataBinder.Eval(Container.DataItem,"img") %>" />
                <div class="caption img-left">
                    <h3 class="img-left"><%# DataBinder.Eval(Container.DataItem,"name") %></h3>
                    <p class="img-left"><%# DataBinder.Eval(Container.DataItem,"age") %>,</p>
                    <p class="img-left">
                    <a href="lingyang_xq.aspx?id=<%# DataBinder.Eval(Container.DataItem,"cat_number") %>" class="btn btn-primary" role="button">详情</a>
                    </p>
                </div>
            </div>
        </div>

    </ItemTemplate>
</asp:DataList>