<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhaopianqiang.aspx.cs" Inherits="zhaopianqiang" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .asd {
            float: left;
            margin-top: 60px;
        }
        .left{
            float: left;
        }
          .sa {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <uc1:header runat="server" ID="header" />
            </div>

            <div class="asd">
                <div class="row">
                <asp:DataList ID="datalist1" runat="server" RepeatColumns="5">
                    <ItemTemplate>
                        <div class="col-lg-14 col-lg-12">
                        <img src="<%# DataBinder.Eval(Container.DataItem,"img") %>" class="img-thumbnail left" />
                            </div>
                    </ItemTemplate>
                </asp:DataList>
                    </div>
            </div>
        </div>

        <div>
            <uc1:footer runat="server" ID="footer" />
        </div>
    </form>
</body>
</html>
