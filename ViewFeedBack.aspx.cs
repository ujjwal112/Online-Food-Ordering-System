using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewFeedBack : System.Web.UI.Page
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
        else if (Request.QueryString["UT"] == "Admin")
        {
            this.MasterPageFile = "Admin.master";
        }
        else if (Request.QueryString["UT"] == "Restaurant")
        {
            this.MasterPageFile = "Restaurant.master";
        }
        else if (Request.QueryString["UT"] == "Visitor")
        {
            this.MasterPageFile = "Visitor.master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
        cmd = new SqlCommand("select *from FEEDBACKDETAILS", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
}