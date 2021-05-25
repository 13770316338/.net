<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lingyangfangshi.aspx.cs" Inherits="lingyangfangshi" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .sa {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }

        .asd {
            width: 1400px;
            margin-left: 430px;
            margin-top: 70px;
        }

        .asd-a {
            width: 1000px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 60px;
        }

        .asd-a-b {
            width: 1400px;
            margin-left: 1200px;
            margin-top: 50px;
        }

        .top1 {
            margin-top: 40px;
        }

        .center1 {
            margin-left: 300px;
        }

        .auto-style1 {
            font-size: large;
        }

        .auto-style2 {
            font-size: medium;
        }

        .center2 {
            margin-left: 50px;
        }

        .top2 {
            margin-top: 20px;
        }

        .left1 {
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
                <uc1:header runat="server" ID="header" />
            </div>

            <div style="margin-top: 60px; margin-left: auto; margin-right: auto; width: 1200px;">
                <h2 style="margin-left: 350px;">填写领养方式</h2>

                <div>
                    <div class="top1">
                        <div class="jumbotron">
                            <asp:DataList ID="datalist1" runat="server">
                                <ItemTemplate>
                                    <div class="top1 center2">
                                        <span class="auto-style1"><strong>领养人：</strong></span>
                                        <span class="auto-style2"><%# DataBinder.Eval(Container.DataItem,"user_yh") %></span>
                                    </div>
                                    <div class="top2 center2">
                                        <span class="auto-style1"><strong>猫咪名字：</strong></span>
                                        <span class="auto-style2"><%# DataBinder.Eval(Container.DataItem,"name") %></span>
                                    </div>


                                    <div class="top2 center2 left ">
                                        <span class="auto-style1 "><strong>猫咪照片：</strong></span>
                                    </div>
                                    <div class="top2 center2 left">
                                        <img src="<%# DataBinder.Eval(Container.DataItem,"img") %>" />
                                    </div>

                                </ItemTemplate>
                            </asp:DataList>
                            <div class="top2 center2">
                                <span class="auto-style1"><strong>领养方式：<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>寄送</asp:ListItem>
                                    <asp:ListItem>自取</asp:ListItem>
                                    
                                </asp:DropDownList></strong></span>
                                <span class="auto-style2"></span>
                            </div>
                            <div class="top2 center2 left ">
                                <span class="auto-style1 "><strong>确认好领养了么：</strong></span>
                                <asp:Button ID="Button1" runat="server" Text="确认领养" CssClass="btn btn-primary" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>


    </form>
</body>
</html>
