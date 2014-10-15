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
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["constring"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
        SqlCommand comm = new SqlCommand();
        comm.CommandText = " Select * from room_register";

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
}