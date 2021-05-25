using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class lingyangfangshi : System.Web.UI.Page
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
               
                

                if (Session["id"] != null)
                {
                    DataGridViewBind();
                }

               
            }
            else
            {
                
                    Response.Write("<script>alert('请先登录！')</script>");
                    Response.Write("<script>window.location.href='user_denglu.aspx';</script>");
                
            }
        }
    }
    public void DataGridViewBind()
    {
        SqlStr = "select * from 确认领养视图 where user_yh='" + Session["User"] + "'";
        DS = db.GetDataSetBySql(SqlStr);
        this.datalist1.DataSource = DS.Tables[0].DefaultView;
        this.datalist1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int max_order;
        SqlStr = "select max(order_number) from 订单表";
        DS = db.GetDataSetBySql(SqlStr);
        if (DS.Tables[0].Rows[0][0].ToString() != "")
        {
            max_order = int.Parse(DS.Tables[0].Rows[0][0].ToString()) + 1;
        }
        else
        {
            max_order = 1;
        }
        SqlStr = string.Format("insert into 订单表(order_number,user_yh,delivery,cat_number) values('{0}','{1}','{2}','{3}')", max_order, Session["User"], DropDownList1.SelectedItem.Text, Session["id"], "");
        if (db.UpDataBySql(SqlStr))
        {
            Response.Write("<script>alert('用户领养成功！')</script>");
            Response.Write("<script>window.location.href='yonghulingyang.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('用户领养失败')</script>");
        }

        SqlStr = string.Format("update 猫信息表 set status='{0}' where  cat_number='{1}' and status='{2}'","已领养" ,Session["id"],"未领养");
        if (db.UpDataBySql(SqlStr)) 
        {
            
        }
        else
        {
            Response.Write("<script>alert('失败')</script>");
        }
    }
}