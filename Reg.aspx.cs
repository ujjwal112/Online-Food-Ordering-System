using System;
using System.Data;
using System.Data.SqlClient;

public partial class Reg : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection("server=DESKTOP-DP78EJ4; uid=sa; pwd=; initial catalog=food;");
        conn.Open();
        cmd = new SqlCommand("insert into reg(NAME,GENDER,DOB,MOBILE,EMAIL,CITY,STATE)values('" + TextBox1.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();

        Label1.Text = "REGISTRATION SUCCESFULL";

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        RadioButtonList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        TextBox1.Focus();
    }
}