<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiaruwomen.aspx.cs" Inherits="jiaruwomen" %>

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
        .text1{
            width:300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <uc1:header runat="server" ID="header" />
            </div>

            <div style="margin-left:auto;margin-right:auto;margin-top:60px;width:1000px;">
                <h2 style="margin-left:400px;">---加入我们---</h2>
            </div>

            <div style="width: 700px; margin-left: auto; margin-right: auto;margin-top:20px;">
                <div class="panel panel-default">
                    <div class="panel-heading">如有相关事宜，在qq或邮箱联系</div>
                    <div class="panel-body">
                       
                        <h4>
                            qq:1778726831
                        </h4>
                        <h4>
                            邮箱：1778762831@QQ.com
                        </h4>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
