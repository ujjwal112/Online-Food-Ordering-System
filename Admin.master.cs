using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["NAME"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("SignIn.aspx");
    }
}
