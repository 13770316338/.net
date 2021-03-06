<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhishi_xq.aspx.cs" Inherits="zhishi_xq" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



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
        .center3{
            margin-left:450px;
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
                <div>
                    <uc1:header runat="server" ID="header" />
                </div>

                <div class="asd-a">
                    <div class="page-header">
                        <h1>Knowledge nursing<small>problem</small></h1>
                    </div>


                    <div class="top1">
                        <div class="jumbotron">
                            <asp:Repeater ID="repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="center3">
                                        <h2><%# DataBinder.Eval(Container.DataItem,"test_title") %></h2>
                                    </div>
                                    <div class="top1 center2">
                                        <span class="auto-style1"><strong>内容：</strong></span>
                                        <span class="auto-style2"><%# DataBinder.Eval(Container.DataItem,"test_text") %></span>
                                    </div>
                                    <div class="top2 center2">
                                        <span class="auto-style1"><strong>日期：</strong></span>
                                        <span class="auto-style2"><%# DataBinder.Eval(Container.DataItem,"test_datetime") %></span>
                                    </div>
                                   
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>


                </div>

                <div>
                    <uc1:footer runat="server" ID="footer" />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
