<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lingyang.aspx.cs" Inherits="lingyang" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/lingyangzhuangtai.ascx" TagPrefix="uc1" TagName="lingyangzhuangtai" %>






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
                <uc1:lingyangzhuangtai runat="server" ID="lingyangzhuangtai" />
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
                <a href="ly_dengji.aspx" role="button" class="btn btn-success " style="margin-left:850px;">
                    <h1 align="center">---领养登记---</h1>
                </a>
            </div>

            <div>
                <uc1:footer runat="server" ID="footer" />
            </div>

        </div>
    </form>
</body>
</html>
