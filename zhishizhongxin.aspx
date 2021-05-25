<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhishizhongxin.aspx.cs" Inherits="zhishizhongxin" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/yangmaozhishi.ascx" TagPrefix="uc1" TagName="yangmaozhishi" %>





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

        .center {
            margin-left: 50px;
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
                <div>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">养猫知识</a></li>
                       
                    </ul>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <uc1:yangmaozhishi runat="server" ID="yangmaozhishi" />
                        </div>
                        

                        </div>
                    </div>

             
            </div>



        </div>
    </form>
    <script src="bootstrap-3.3.7-dist/js/jquery-3.4.1.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>

</body>
</html>
