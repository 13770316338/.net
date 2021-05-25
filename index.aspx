<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/zhishizhongxin.ascx" TagPrefix="uc1" TagName="zhishizhongxin" %>

<%@ Register Src="~/maoxinxi.ascx" TagPrefix="uc1" TagName="maoxinxi" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>
    <link rel="stylesheet" href="bootstrap.min.css" />
    <style>
        body {
            padding-top: 50px;
        }

        .starter {
            padding: 15px;
            float: left;
        }

        .qwea {
            clear: left;
        }

        .center {
            margin-right: auto;
            margin-left: auto;
            text-align: center;
        }

        .asd {
            width: 1400px;
            margin-right: auto;
            margin-left: auto;
        }

        .textsize {
            width: 1400px;
        }

        .textsize1 {
            width: 330px;
        }

        .textsize2 {
            width: 750px;
        }

        .lite {
            float: left;
        }

        .lite-table {
            margin-left: 330px;
            width: 1300px;
        }

        .rightness {
            float: right;
            width: 200px;
        }

        .sa {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }

        .saw {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
            float: left;
        }

        .asq {
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
        }

        .as {
            margin-top: 40px;
            width: 1400px;
            margin-left: auto;
            margin-right: auto;
            clear: left;
        }

        .aq {
            float: left;
        }

        .aqw {
            float: right;
        }
            img-left{
        float:left;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
        <div class="container">
            <div class="starter">
                <img src="img/logo2.jpg" /></div>
            <div class="starter">
                <h2>以领养代替购买</h2>
                <p class="lead">请尽力帮助他们告别哀伤面向阳光他们在等待人给予它们关爱</p>
            </div>
        </div>
        <div class="asd">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox" align="center">
                    <div class="item active">
                        <img src="img/1.jpeg" alt="猫">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/2.jpeg" alt="猫">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/3.jpeg" alt="猫">
                        <div class="carousel-caption">
                        </div>
                    </div>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="sa">
            <h1 align="center">---本站宗旨---</h1>
            <h3>流浪猫救助协会，成立于2019年，是一个致力于流浪猫狗救助、领养、文明宣传的非盈利性社会团体我们自成立以来，
                遵照市农业局、民政局的指导思想，在遵守宪法、法律、法规和国家政策的前提下，尊重生命、
                保护动物、维护动物的生存权利，保障它们的健康与福利，减少杀戮、
                虐待、残害、遗弃动物的行为，并通过教育引导正确科学对待伴侣动物的观念，达到人与动物和谐共处的愿景。</h3>
        </div>
        <div class="sa">
            <h1 align="center">---咨询导航---</h1>
        </div>
        <div class="sa">

            <div class="aq">
                <uc1:zhishizhongxin runat="server" ID="zhishizhongxin" />
                <table class="table table-hover textsize">
                    <tr align="right">
                        <td><a href="#">详情...</a></td>
                    </tr>
                </table>
            </div>


          

        </div>

        <div class="as">
            <h1 align="center">---待领养的小家伙---</h1>
        </div>

        <div class="sa">
          
                <div class="row ">
                    <uc1:maoxinxi runat="server" ID="maoxinxi" />
                </div>
            
        </div>




        <div class="as">
            <h1 align="center">---回到顶部---</h1>
        </div>
     <div>
         <uc1:footer runat="server" ID="footer" />
     </div>

    </form>
    <script src="bootstrap-3.3.7-dist/js/jquery-3.4.1.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
