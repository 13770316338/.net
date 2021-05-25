using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class zhishitianjia : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlStr = "insert into 知识中心表(test_title,test_text)" 
            + "values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        try
        {
            if (db.UpDataBySql(SqlStr))
            {
                Response.Write("<script>alert('护理知识添加成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('护理知识添加失败!')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('护理知识添加失败111')</script>");
        }
    }
}