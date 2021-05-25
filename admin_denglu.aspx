<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_denglu.aspx.cs" Inherits="admin_denglu" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
     <style>#mi {
	height: 400px;
	width: 600px;
	margin-right: auto;
	margin-left: auto;
}
#a1 {
	height: 60px;
	width: 600px;
	background-color: darkgray;
}
#a2 {
	height: 270px;
	width: 600px;
	padding-top: 20px;
}
#a3 {
	height: 50px;
	width: 600px;
	background-color: darkgray;
}
.t1 {
	font-family: "华文楷体";
	font-size: 36px;
	color: #CC6;
}
.t2 {
	font-family: "华文楷体";
	font-size: 24px;
	color: #CC6;
}
#s1 {
	height: 240px;
	width: 400px;
	margin-right: auto;
	margin-left: auto;
}
#s3 {
	height: 150px;
	width: 400px;
	padding-top: 60px;
}
#s2 {
	height: 30px;
	width: 400px;
	background-color: #09F;
}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <uc1:header runat="server" ID="header" />
            </div>

            <div style="margin-top: 60px; margin-left: auto; margin-right: auto; width: 1200px;">
                   <div>
    <div>
        <table border="2" height="450" width="610" align="center">
<tr>
<td>
    <div id="mi">
  <div class="t1" id="a1">
    <table width="600">
      <tr>
        <td height="54">萝卜炖救助站后台入口</td>
      </tr>
    </table>
  </div>
  <div id="a2">
    <div id="s1">
      <div id="s3">
        <table width="400">
          <tr>
            <td width="200" height="30" align="center">管理员姓名：</td>
            <td width="200" height="30">
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
            <td width="200" height="30" align="center">管理员密码：</td>
            <td width="200" height="30">
        <asp:TextBox ID="Userpwd" runat="server" TextMode="Password"></asp:TextBox>
    
              </td>
          </tr>
          <tr>
            <td height="30" colspan="2" align="center">
        <asp:Button ID="btnlogin" runat="server"  Text="登陆" OnClick="btnlogin_Click" />
                <asp:Button ID="Button2" runat="server" Text="取消" />
              </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <div class="t1" id="a3"><table width="600">
  <tr>
    <td height="44" align="center" class="t2">萝卜炖工作室</td>
  </tr>
</table>
</div>
</div>
    </div>
        </td>
</tr>
</table>
        <br />
        <br />
    
    </div>
            </div>
        </div>
    </form>
</body>
</html>
