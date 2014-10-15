using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.Data;

public partial class admintan_Default2 : System.Web.UI.Page
{
    ManageData mngdata;
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["constring"]);

    protected void Page_Load(object sender, EventArgs e)
    {
       

        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
        SqlCommand comm = new SqlCommand();
        comm.CommandText = " Select * from signup";

        comm.Connection = conn;
        SqlDataAdapter da = new SqlDataAdapter(comm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        grdmcl.DataSource = ds;
        grdmcl.DataBind();

        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();


    }

    void bind_mng_cand_log()
    {
        DataSet ds = new DataSet();
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
        SqlCommand comm = new SqlCommand();
        comm.CommandText = " Select * from signup";

        comm.Connection = conn;
        SqlDataAdapter da = new SqlDataAdapter(comm);
        
        da.Fill(ds);

        grdmcl.DataSource = ds;
        grdmcl.DataBind();
    }




    protected void grdmcl_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       

        if (e.CommandName == "delete1")
        {


            SqlCommand cmd = new SqlCommand("delete signup where id=@id", conn);

            cmd.Parameters.Add("@id", e.CommandArgument.ToString());

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            bind_mng_cand_log();
        }
    }

    protected void grdmcl_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdmcl.PageIndex = e.NewPageIndex;
        bind_mng_cand_log();
    }
}