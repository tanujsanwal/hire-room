using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.RemoveAll();
        Response.Cookies.Clear();
        Response.Cache.SetExpires(DateTime.Now);
        //Response.AddHeader("Refresh", "1");
        Response.Redirect("Default.aspx");
    }
}
