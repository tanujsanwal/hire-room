using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand();

        comm.CommandText = "Select * from signup where email=@em and password=@ps";
        comm.Parameters.AddWithValue("@em", TextBox1.Text);
        comm.Parameters.AddWithValue("@ps", TextBox2.Text);
        comm.Connection = conn;
        SqlDataAdapter da = new SqlDataAdapter(comm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["usrname"] = ds.Tables[0].Rows[0]["id"].ToString();
            Response.Redirect("search_appart.aspx");
          //  Response.Redirect("default2.aspx");
 
        }
        else
        {
           // TextBox1.Text = "your user name is incorect";
           // Label1.Text = "your username and password does not match";
        }
    }


    
    }