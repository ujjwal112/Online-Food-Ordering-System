using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
public partial class ManageFood : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["UT"] == "Admin")
        {
            this.MasterPageFile = "Admin.master";
        }
        else if (Request.QueryString["UT"] == "Restaurant")
        {
            this.MasterPageFile = "Restaurant.master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
        if (Page.IsPostBack == false)
        {
            gridbind();   
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddFood.aspx");
    }
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gridbind();
    }
    private void gridbind()
    {
        cmd = new SqlCommand("select *from FOODDETAILS", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        Label foodid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        TextBox foodname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox foodprice = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        cmd = new SqlCommand("update FOODDETAILS set FOOD_NAME='" + foodname.Text + "',FOOD_PRICE='" + foodprice.Text + "'where FOOD_ID='"+foodid.Text+"'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label foodid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        cmd = new SqlCommand("delete FOODDETAILS where FOOD_ID='" + foodid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
}