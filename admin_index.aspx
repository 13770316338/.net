<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style>
        .button_size{
            width:200px;
            height:40px;
          
        }
        .top{
            margin-top:10px;
        }
        .top2{
            margin-top:40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <a href="index.aspx" class="navbar-brand">萝卜炖流浪猫救助会</a>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                 <li><a href="#"><asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="" ForeColor="White"></asp:Label></a></li>
                            </ul>

                        </div>

                    </div>
                </nav>
            </div>

            <div style="margin-top:60px;margin-left:auto;margin-right:auto;width:1400px;">
                <div style="width:300px;float:left;">
                    <a class="btn btn-success button_size top" href="yl_delect.aspx" role="button" target="index">用户删除</a>
                    <a class="btn btn-success button_size top2" href="zhishitianjia.aspx" role="button" target="index">知识中心添加</a>
                    <a class="btn btn-success button_size top" href="zhishishanchu.aspx" role="button" target="index">知识中心删除</a>
                    <a class="btn btn-success button_size top2" href="zhaopiantianjia.aspx" role="button" target="index">照片添加</a>
                    <a class="btn btn-success button_size top" href="zhaopian_delect.aspx" role="button" target="index">照片删除</a>
                    
                </div>
                <div style="width:1100px;float:left;">
                    <iframe style="margin-top:10px;width:1100px;float:left;height:620px;" name="index">

                    </iframe>
                </div>
            </div>



        </div>
    </form>
</body>
</html>
