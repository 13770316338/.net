using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class zhishi_xq : System.Web.UI.Page
{
    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    string knowledge_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            knowledge_id = Request.QueryString.Get("id").ToString().Trim();
            SqlStr = "select * from 知识中心表 where test_number='" + knowledge_id + "'";
            DS = db.GetDataSetBySql(SqlStr);
            if (DS.Tables[0].Rows.Count != 0)
            {
                this.repeater1.DataSource = DS.Tables[0].DefaultView;
                this.repeater1.DataBind();
                Session["id"] = knowledge_id;
            }
        }
    }
}