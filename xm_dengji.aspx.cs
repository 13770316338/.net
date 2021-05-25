using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class xm_dengji : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    string full_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["User"] != null)
            {

            }
            else
            {
                Response.Write("<script>alert('需要登录用户')</script>");
                Response.Write("<script>window.location.href='user_denglu.aspx';</script>");
            }
        }
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string path_file = fileupload1.PostedFile.FileName.ToString();
            string file_type = path_file.Substring(path_file.LastIndexOf("."));
            string file_name = DateTime.Now.Year.ToString() +
                DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() +
                DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() +
                DateTime.Now.Second.ToString();
            full_name = file_name + file_type;
            string path = Server.MapPath("img/") + full_name;
            fileupload1.SaveAs(path);
        }
        catch
        {
            Response.Write("<script>alert('上传文件失败!!')</script>");
        }

        string image_path = "img/" + full_name;
        //string  SqlStr = string.Format("insert into 寻猫(master,name,age,sex,time,xm_address,contact,describe,img)values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.TextBox7.Text + "','" + this.TextBox8.Text + "','" + image_path + "'));
        //string SqlStr = string.Format("insert into dbo.寻猫(master,name,age,sex,time,xm_address,contact,describe,img) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}','{6}','{7}')", TextBox1.Text, TextBox2.Text,TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text,TextBox7.Text,TextBox8.Text, image_path);
        SqlStr = "insert into 寻猫(user_yh,name,age,sex,time,xm_address,contact,describe,img)"
           + "values('" + Session["User"] + "','" + TextBox2.Text + "','" + TextBox3.Text + "',"
           + "'" + TextBox4.Text + "','" + TextBox5.Text + "',"
           + "'" + TextBox6.Text + "','" + TextBox7.Text + "',"
           + "'" + TextBox8.Text + "','" + image_path + "')";
        try
        {
            if (db.UpDataBySql(SqlStr))
            {
                Response.Write("<script>alert('寻猫新增成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('寻猫新增失败!')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('寻猫新增失败111')</script>");
        }
    }

}