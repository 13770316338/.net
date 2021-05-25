using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class gerenxunmaoxiugai : System.Web.UI.Page
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
                if (Session["xm_id"] != null)
                {
                    datalistbind();
                }
                else
                {
                    Response.Write("<script>alert('你还未登记领养信息！')</script>");
              
                }

            }

        }
    }
    public void datalistbind()
    {

        SqlStr = "select * from 寻猫 where user_yh='" + Session["User"] + "'";
        DS = db.GetDataSetBySql(SqlStr);
        {
            this.TextBox1.Text = DS.Tables[0].Rows[0][1].ToString();
            this.TextBox2.Text = DS.Tables[0].Rows[0][2].ToString();
            this.TextBox3.Text = DS.Tables[0].Rows[0][9].ToString();
            this.TextBox4.Text = DS.Tables[0].Rows[0][8].ToString();
            this.TextBox5.Text = DS.Tables[0].Rows[0][5].ToString();
            this.TextBox6.Text = DS.Tables[0].Rows[0][7].ToString();
            this.TextBox7.Text = DS.Tables[0].Rows[0][4].ToString();
            this.TextBox8.Text = DS.Tables[0].Rows[0][3].ToString();
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

        SqlStr = "update 寻猫 set user_yh='" + Session["User"] + "',name='" + TextBox1.Text.Trim() + "'"
          + ",age='" + TextBox2.Text.Trim() + "',sex='" +
          TextBox3.Text.Trim() + "',time='" + TextBox4.Text.Trim() + "'"
          + ",xm_address='" + TextBox5.Text.Trim() + "', contact='" + TextBox6.Text.Trim() + "',describe='" + TextBox7.Text.Trim() + "', img='" + image_path + "' where xm_number= '" + Session["id"] + "'";
        if (db.UpDataBySql(SqlStr))
        {
            Response.Write("<script>alert('修改成功!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败!!')</script>");
            return;
        }
        datalistbind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlStr = string.Format("delete from 寻猫 where xm_number='{0}'", Session["xm_id"]);
        if (db.UpDataBySql(SqlStr))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            datalistbind();
        }
        else
        {
            Response.Write("<script>alert('删除失败！')</script>");
            datalistbind();
        }
    }
}