using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ComplaintForm : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into COMPLAINTDETAILS(EMAIL_ID,NAME,MESSAGE)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "');select max(COMPID) from COMPLAINTDETAILS", con);
        Label2.Text = "Your Complaint ID is " + Convert.ToString( cmd.ExecuteScalar());
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox1.Focus();
    }
}