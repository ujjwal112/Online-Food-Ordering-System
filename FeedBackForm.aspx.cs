using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FeedBackForm : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into FEEDBACKDETAILS(NAME,MESSAGE)values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label2.Text = "Thankyou for your valuable Feedback!!!";
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
    }
}