<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xunmao.aspx.cs" Inherits="xunmao" %>

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
            width: 1400px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 20px;
        }

        .asd-a-b {
            width: 1400px;
            margin-left: 1200px;
            margin-top: 50px;
        }

        .img-suo {
            width: 290px;
            height: 210px;
        }

        .img-top {
            margin-top: 20px;
        }

        .as {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }

        .as-textbox {
            margin-top: 40px;
            float: left;
            width: 600px;
        }

        .as-img {
            width: 700px;
            float: left;
            margin-left: 300px;
            margin-top: 40px;
        }

        .textbox-size {
            width: 500px;
        }

        .left {
            float: left;
            margin-top: 20px;
        }

        .left-close {
            margin-left: 500px;
            margin-top: 20px;
            clear: left;
        }
        .center{
            margin-left:50px;
           
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
                <img src="img/lingyang_title.jpg" />
            </div>

            <div class="asd-a">
                <asp:DataList ID="datalist1" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-heading">待寻猫</div>
                            <div class="panel-body">
                                <div class="media ">
                                    <div class="media-left media-middle ">
                                        <a href="xunmao_xq.aspx?id=<%# DataBinder.Eval(Container.DataItem,"xm_number") %>">
                                            <img class="media-object img-suo img-top" src="<%# DataBinder.Eval(Container.DataItem,"img") %>" />
                                        </a>
                                    </div>
                                    <div class="media-body ">
                                        <h2 class="media-heading img-top"><%# DataBinder.Eval(Container.DataItem,"name") %></h2>
                                        <h4 class="text-warning">猫咪主人:<%# DataBinder.Eval(Container.DataItem,"user_yh") %>&nbsp;&nbsp;&nbsp;&nbsp;丢失时间:<%# DataBinder.Eval(Container.DataItem,"xm_address") %>&nbsp;&nbsp;&nbsp;&nbsp;年龄:<%# DataBinder.Eval(Container.DataItem,"age") %>&nbsp;&nbsp;&nbsp;&nbsp;猫咪描述:<%# DataBinder.Eval(Container.DataItem,"describe") %></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>


            <div class="asd-a-b">
                <nav aria-label="Page navigation">
                    <ul class="pagination pagination-lg">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>

             <div class="as">
                 <a href="xm_dengji.aspx" role="button" class="btn btn-success " style="margin-left:570px;">
            <h1 align="center">---寻猫登记---</h1>
                     </a>
        </div>

            <div>
                <uc1:footer runat="server" ID="footer" />
            </div>
        </div>
    </form>
</body>
</html>
