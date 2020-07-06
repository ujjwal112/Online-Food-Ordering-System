using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DeliveryMenProfile : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
        cmd = new SqlCommand("select NAME,USERNAME,EMAIL_ID,MOBILE_NO,convert(varchar,DOB,105)as DOB,GENDER from DREGDETAILS where EMAIL_ID='" + Session["Email"] + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox1.Text = Convert.ToString(dr["NAME"]);
                TextBox2.Text = Convert.ToString(dr["USERNAME"]);
                TextBox3.Text = Convert.ToString(dr["EMAIL_ID"]);
                TextBox4.Text = Convert.ToString(dr["MOBILE_NO"]);
                TextBox5.Text = Convert.ToString(dr["DOB"]);
                RadioButtonList1.SelectedValue = Convert.ToString(dr["GENDER"]);
            }
            dr.Close();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("SignIn.aspx");
    }
}