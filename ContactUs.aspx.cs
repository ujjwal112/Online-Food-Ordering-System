using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["UT"] == "Customer")
        {
            this.MasterPageFile = "Customer.master";
        }
        else if (Request.QueryString["UT"] == "DeliveryMen")
        {
            this.MasterPageFile = "DeliveryMen.master";
        }
        else if (Request.QueryString["UT"] == "Admin")
        {
            this.MasterPageFile = "Admin.master";
        }
        else if (Request.QueryString["UT"] == "Restaurant")
        {
            this.MasterPageFile = "Restaurant.master";
        }
    }
}