using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// DBHelper 的摘要说明
/// </summary>
public class DBHelper
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand com = new SqlCommand();
    public SqlDataAdapter da = new SqlDataAdapter();
    public DataSet ds = new DataSet();
    public SqlDataReader dr = null;
    public DBHelper()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    //通过方法获取连接字符串。
    public static string GetConnection()
    {
        string constr;
        constr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ToString();
        return constr;
    }
    //通过sql语句获取数据集DataSet。
    public DataSet GetDataSetBySql(string sql)
    {
        con.ConnectionString = GetConnection();
        com.CommandText = sql;
        com.Connection = con;
        da.SelectCommand = com;
        ds.Clear();
        da.Fill(ds);
        return ds;
    }
    //通过sql语句获取DataReader。
    public SqlDataReader GetDataReaderBySql(string sql)
    {
        con.ConnectionString = GetConnection();
        com.CommandText = sql;
        try
        {
            com.Connection = con;
            con.Open();
            dr = com.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dr;
    }
    //通过sql语句更新数据--添加，更新，删除。
    public Boolean UpDataBySql(string sql)
    {
        con.ConnectionString = GetConnection();
        com.CommandText = sql;
        com.Connection = con;
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return true;
    }
    public SqlDataReader GetDBUse(string sql)
    {
        con.ConnectionString = GetConnection();
        com.CommandText = "selectuse";
        com.Connection = con;
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.Add("@usename", SqlDbType.VarChar, 20).Value = sql;
        con.Open();
        dr = com.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;
    }
}
