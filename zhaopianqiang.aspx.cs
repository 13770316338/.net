using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class zhaopianqiang : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GetBinderTwo();
        }
    }
    public void GetBinderTwo()
    {
        SqlStr = "select * from 照片墙";
        DS = db.GetDataSetBySql(SqlStr);
        if (DS.Tables[0].Rows.Count != 0)
        {
            this.datalist1.DataSource = DS.Tables[0].DefaultView;
            this.datalist1.DataBind();
        }
    }
}