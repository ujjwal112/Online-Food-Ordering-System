using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       // conn = new SqlConnection("server=DESKTOP-DP78EJ4;integrated security=true;initial catalog=UJJWAL168516330");
        conn = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT NAME FROM LOGINDETAILS WHERE EMAIL_ID='" + TextBox3.Text + "' and PASSWORD='" + TextBox1.Text + "'", conn);
        string x = "";
        x = Convert.ToString(cmd.ExecuteScalar());
        if (x != "")
        {
            Session["Email"] = TextBox3.Text;
            cmd = new SqlCommand("SELECT USERTYPE FROM LOGINDETAILS WHERE EMAIL_ID='" + TextBox3.Text + "'", conn);
            string y = Convert.ToString(cmd.ExecuteScalar());
            if (y == "ADMIN")
            {
                Session["NAME"] = x;
                Response.Redirect("AdminHome.aspx");
            }
            if (y == "RESTAURANT")
            {
                Session["NAME"] = x;
                Response.Redirect("RestaurantHome.aspx");
            }
            else if (y == "DELIVERY-MAN")
            {
                Session["NAME"] = x;
                Response.Redirect("DeliveryMenHome.aspx");
            }

            else
            {
                Session["NAME"] = x;
                Response.Redirect("CustomerHome.aspx");
            }

        }
        else
        {
            Label1.Text = "INVALID EMAIL ID AND PASSWORD!!!";
        }
    }
}