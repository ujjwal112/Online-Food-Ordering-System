using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgetPassword : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        t2.Visible = false;
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT NAME FROM LOGINDETAILS WHERE EMAIL_ID='" + TextBox1.Text + "'", con);
        String x = Convert.ToString(cmd.ExecuteScalar());
        if (x != "")
        {
            t2.Visible = true;
            Label2.Text = x;
            Label1.Text = "";
        }
        else
        {
            Label1.Text = "INVALID INPUT!!!";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
            t2.Visible = false;
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("UPDATE LOGINDETAILS SET PASSWORD='" + TextBox2.Text + "' WHERE EMAIL_ID='" + TextBox1.Text + "'", con);
        int x = cmd.ExecuteNonQuery();
        Label1.Text = "UPDATE SUCCESFULLY";
        con.Close();
    }
}