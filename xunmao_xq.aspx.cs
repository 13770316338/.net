using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class xunmao_xq : System.Web.UI.Page
{

    String SqlStr;
    DataSet DS = new DataSet();
    DBHelper db = new DBHelper();
    string cat_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            cat_id = Request.QueryString.Get("id").ToString().Trim();
            SqlStr = "select * from 寻猫 where xm_number='" + cat_id + "'";
            DS = db.GetDataSetBySql(SqlStr);
            if (DS.Tables[0].Rows.Count != 0)
            {
                this.repeater1.DataSource = DS.Tables[0].DefaultView;
                this.repeater1.DataBind();
                Session["xm_id"] = cat_id;
            }
        }
    }
}