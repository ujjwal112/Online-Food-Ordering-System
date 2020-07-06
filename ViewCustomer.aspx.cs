using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ViewCustomer : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
        if (Page.IsPostBack == false)
        {
            gridbind();
        }
    }
    private void gridbind()
    {
        cmd = new SqlCommand("select CID,NAME,USERNAME,EMAIL_ID,MOBILE_NO,convert(varchar,DOB,105)as DOB,GENDER from CREGDETAILS", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gridbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox username = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox mobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox dob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        cmd = new SqlCommand("update CREGDETAILS set NAME='" + name.Text + "',USERNAME='" + username.Text + "',MOBILE_NO='" + mobile.Text + "',DOB='" + dob.Text + "',GENDER='" + gender.Text + "'where CID='" + cid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        cmd = new SqlCommand("delete CREGDETAILS where CID='" + cid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
}