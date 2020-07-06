using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ComplaintStatus : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select NAME,MESSAGE,RESPONSE from COMPLAINTDETAILS where COMPID='" + TextBox1.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                t2.Visible = true;
                Label2.Text = Convert.ToString(dr["NAME"]);
                Label3.Text = Convert.ToString(dr["MESSAGE"]);
                Label4.Text = Convert.ToString(dr["RESPONSE"]);
                Label5.Text = "";
            }
            dr.Close();
        }
        else
        {
            Label5.Text = "INVALID COMPLAINT ID !!!";
            t2.Visible = false;
        }
    }
}