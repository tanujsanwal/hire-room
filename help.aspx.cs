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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand Comm1 = new SqlCommand();
        Comm1.CommandText = "insert into feedback (name,email,number,comment) values(@fn,@ln,@pa,@num)";
        //Comm1.CommandType = CommandType.StoredProcedure;
        Comm1.Parameters.AddWithValue("@fn", TextBox1.Text);
        Comm1.Parameters.AddWithValue("@ln", TextBox2.Text);
        Comm1.Parameters.AddWithValue("@pa", TextBox3.Text);
        Comm1.Parameters.AddWithValue("@num", ta.Value);
       

        Comm1.Connection = conn;
        conn.Open();
        Comm1.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("help.aspx");
    }
}