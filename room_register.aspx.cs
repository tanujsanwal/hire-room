using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.AppSettings["Constring"]);
    }




    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand Comm1 = new SqlCommand();
        Comm1.CommandText = "insert into room_register (fname,lname,region,apartment_type,facility,address,number,landmark,room_rent,city) values(@fn,@ln,@re,@ap,@fac,@add,@num,@land,@rent,@city)";
        //Comm1.CommandType = CommandType.StoredProcedure;
        Comm1.Parameters.AddWithValue("@fn", TextBox1.Text);
        Comm1.Parameters.AddWithValue("@ln", TextBox2.Text);
        //Comm1.Parameters.AddWithValue("@re", TextBox3.Text);
        Comm1.Parameters.AddWithValue("@re", DropDownList1.SelectedItem.Text);
        Comm1.Parameters.AddWithValue("@ap", DropDownList2.SelectedItem.Text);
        Comm1.Parameters.AddWithValue("@fac", TextBox6.Text);
        Comm1.Parameters.AddWithValue("@add", TextBox3.Text);
        Comm1.Parameters.AddWithValue("@num", TextBox4.Text);
        Comm1.Parameters.AddWithValue("@land", TextBox5.Text);
        Comm1.Parameters.AddWithValue("@rent", DropDownList3.SelectedItem.Text);
        Comm1.Parameters.AddWithValue("@city", city.Text);
        Comm1.Connection = conn;
        conn.Open();
        Comm1.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("room_register.aspx");



    }
}