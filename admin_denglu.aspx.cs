using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_denglu : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlStr = "select * from 管理员表 where user_gl='" + this.Username.Text + "'and password_gl='" + this.Userpwd.Text + "'";
        DS = db.GetDataSetBySql(SqlStr);
        try
        {
            if (DS.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('用户名或密码错误,请重试!')</script>");
                this.Username.Focus();
            }
            else
            {
                Session["admin_User"] = this.Username.Text.Trim();
              
                Response.Write("<script>window.location.href='admin_index.aspx';</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据请重试!')</script>");
        }
    }
}