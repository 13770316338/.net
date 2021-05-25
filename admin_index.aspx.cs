using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["admin_User"] != null)
            {
                Label1.Visible = true;
                Label1.Text = "欢迎你" + Session["admin_User"]+"管理员";
            }
        }
    }
}