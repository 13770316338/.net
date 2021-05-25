<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gerenxinxi.aspx.cs" Inherits="gerenxinxi" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>


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
            float:left;
          
            
        }
        .top{
            margin-top:10px;
        }
        .left{
            margin-left:300px;
        }
        .top2{
            margin-top:30px;
        }
        .left_1{
            margin-left:10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <uc1:header runat="server" ID="header" />
            </div>

            <div style="width: 1200px; margin-right: auto; margin-left: auto; margin-top: 40px;">
                <div>
                    
                            <table class="table">
                                <tr>
                                    <td>
                                        <h3 style="margin-left: 550px;"><asp:Label ID="Label1" runat="server" Text="Label" Visible="false" ></asp:Label>个人中心</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>

                            </table>
                        
                </div>
                <div>
                    <div style="width:1200px;float:left;margin-left:auto;margin-right:auto">
                        <a class="btn btn-success button_size top left" href="yonghulingyang.aspx" role="button" target="main">个人订单显示</a>
                        <a class="btn btn-success button_size top left_1" href="gerensongyangxiugai.aspx" role="button" target="main">个人送养信息修改</a>
                        <a class="btn btn-success button_size top left_1" href="gerenxunmaoxiugai.aspx" role="button" target="main">个人寻猫信息修改</a>
                    </div>
                    <div style="width:1200px;float:left">
                        <iframe style="margin-top:10px;width:1200px;float:left;height:620px;" name="main">

                    </iframe>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
