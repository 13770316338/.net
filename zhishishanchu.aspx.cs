using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class zhishishanchu : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataListBind();
        }
    }
    public void DataListBind()
    {

        SqlStr = "select * from 知识中心表";
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
        Button btn = (Button)sender;
        string id = btn.CommandArgument;
        SqlStr = string.Format("delete from 知识中心表 where test_number='{0}'", id);
        if (db.UpDataBySql(SqlStr))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            DataListBind();
        }
        else
        {
            Response.Write("<script>alert('删除失败！')</script>");
            DataListBind();
        }
    }
}