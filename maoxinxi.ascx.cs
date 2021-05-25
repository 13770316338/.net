using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class maoxinxi : System.Web.UI.UserControl
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
        SqlStr = "select * from 猫信息表";
        DS = db.GetDataSetBySql(SqlStr);
        if (DS.Tables[0].Rows.Count != 0)
        {
            this.datalist1.DataSource = DS.Tables[0].DefaultView;
            this.datalist1.DataBind();
        }
    }
}