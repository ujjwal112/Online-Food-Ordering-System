using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
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
        else if (Request.QueryString["UT"] == "Restaurant")
        {
            this.MasterPageFile = "Restaurant.master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("UPDATE LOGINDETAILS SET PASSWORD='"+TextBox2.Text+"' WHERE PASSWORD='"+TextBox1.Text+"'",con);
       int x = cmd.ExecuteNonQuery();
       if (x > 0)
       {
           Label2.Text = "PASSWORD CHANGE SUCCESSFULLY!!!";
       }
       else
       {
           Label2.Text = "PASSWORD NOT CHANGE!!!";
       }
    }
}