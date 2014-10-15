using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{

    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);

        SqlCommand comm = new SqlCommand();

        comm.Parameters.AddWithValue("@region", Request.QueryString["region"].ToString());
        comm.Parameters.AddWithValue("@apartment_type", Request.QueryString["apartment_type"].ToString());
        comm.Connection = conn;
        comm.CommandText = "Select * from room_register where region=@region and apartment_type=@apartment_type";

        SqlDataAdapter da = new SqlDataAdapter(comm);
        DataSet ds = new DataSet();
        da.Fill(ds);

        grdmcl.DataSource = ds;
        grdmcl.DataBind();

        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
    }
}