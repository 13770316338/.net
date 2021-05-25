using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class zhaopiantianjia : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    string full_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataListBind();
        }
    }

    public void DataListBind()
    {

        SqlStr = "select * from 照片墙";
        DS = db.GetDataSetBySql(SqlStr);
        try
        {
            if (DS.Tables[0].Rows.Count != 0)
            {
                repeater1.DataSource = DS.Tables[0].DefaultView;
                repeater1.DataBind();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据，请重试！')</script>");
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
        SqlStr = "insert into 照片墙(img)"
           + "values('" + image_path + "')";
        try
        {
            if (db.UpDataBySql(SqlStr))
            {
                Response.Write("<script>alert('图片新增成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('图片新增失败!')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('图片新增失败111')</script>");
        }
    }
}