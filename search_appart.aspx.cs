using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;





public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
        SqlCommand comm = new SqlCommand();
        comm.CommandText = " Select * from room_register ";
        
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





    protected void DropdownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand comm = new SqlCommand();
        comm.CommandText = " Select * from room_register where region=@region";
      //  comm.CommandText = "Select * from Add_show where cinema_name=@cinema_name";
        comm.Parameters.AddWithValue("@region", DropdownList2.SelectedValue);
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


    protected void DropdownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand comm = new SqlCommand();

        comm.CommandText = "Select *  from room_register where apartment_type=@apartment_type";
        comm.Parameters.AddWithValue("@apartment_type", DropdownList3.SelectedValue);
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
