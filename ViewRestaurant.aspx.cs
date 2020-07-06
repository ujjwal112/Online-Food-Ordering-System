using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ViewRestaurant : System.Web.UI.Page
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
        cmd = new SqlCommand("select RID,RESTAURANT_NAME,OWNER_NAME,USERNAME,EMAIL_ID,MOBILE_NO,convert(varchar,DOB,105)as DOB,DOCUMENT_TYPE,DOCUMENT_ID,GENDER from RREGDETAILS", con);
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
        Label rid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        TextBox rname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox oname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox username = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox mobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox dob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox dtype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox did = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        cmd = new SqlCommand("update RREGDETAILS set RESTAURANT_NAME='" + rname.Text + "',OWNER_NAME='" + oname.Text + "',USERNAME='" + username.Text + "',MOBILE_NO='" + mobile.Text + "',DOB='" + dob.Text + "',DOCUMENT_TYPE='" + dtype.Text + "',DOCUMENT_ID='" + did.Text + "',GENDER='" + gender.Text + "'where RID='" + rid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label rid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        cmd = new SqlCommand("delete RREGDETAILS where RID='" + rid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
}