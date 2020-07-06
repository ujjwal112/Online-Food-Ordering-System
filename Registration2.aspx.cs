using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration2 : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        // conn = new SqlConnection("server=DESKTOP-DP78EJ4;integrated security=true;initial catalog=UJJWAL168516330");
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT EMAIL_ID FROM LOGINDETAILS WHERE EMAIL_ID='" + TextBox2.Text + "'", con);
        String x = Convert.ToString(cmd.ExecuteScalar());
        if (x != "")
        {
            Label1.Text = "EMAIL_ID ALREADY AVAILABLE!!!";
        }
        else
        {
            Label1.Text = " ";
            cmd = new SqlCommand("insert into DREGDETAILS(NAME,USERNAME,EMAIL_ID,MOBILE_NO,DOB,DOCUMENT_TYPE,DOCUMENT_ID,VEHICLE_TYPE,VEHICLE_RC_NO,GENDER)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + CheckBoxList1.SelectedValue + "','" + TextBox8.Text + "','" + RadioButtonList2.SelectedValue + "','" + TextBox9.Text + "','" + RadioButtonList1.SelectedValue + "');insert into LOGINDETAILS(PASSWORD,USERTYPE,NAME,EMAIL_ID)values('" + TextBox3.Text + "','DELIVERY-MAN','" + TextBox1.Text + "','" + TextBox5.Text + "')", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        RadioButtonList2.SelectedIndex = -1;
        RadioButtonList1.SelectedIndex = -1;
        CheckBoxList1.SelectedIndex = -1;
    }
}