using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_zhuce : System.Web.UI.Page
{

    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlStr = "select * from 用户表 where user_yh='" + this.TextBox1.Text + "'and passsword_yh='" + this.TextBox2.Text + "'";
        DS = db.GetDataSetBySql(SqlStr);
        try
        {
            if (DS.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('用户名或密码错误,请重试!')</script>");
                this.TextBox1.Focus();
            }
            else
            {
                Session["User"] = this.TextBox1.Text.Trim();
               
                Response.Write("<script>window.location.href='index.aspx';</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据请重试!')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            string sql = string.Format("insert into dbo.用户表 values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}','{6}')",TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text,TextBox8.Text,"");
            DBHelper db = new DBHelper();
            if (db.UpDataBySql(sql) == true && TextBox3.Text != null)
            {
                Response.Write("<script>alert('注册成功！！!')</script>");
                Response.Write("<script>window.location.href='index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败,请重试!')</script>");
            }
        }
    }
}