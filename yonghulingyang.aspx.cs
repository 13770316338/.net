using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonghulingyang : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["User"] != null)

            {
                DatalistBind();
            }
        }
    }

    public void DatalistBind()
    {
        SqlStr = "select * from 领养视图 where user_yh='" + Session["User"] + "'";
        DS = db.GetDataSetBySql(SqlStr);
        this.datalist1.DataSource = DS.Tables[0].DefaultView;
        this.datalist1.DataBind();
    }
}