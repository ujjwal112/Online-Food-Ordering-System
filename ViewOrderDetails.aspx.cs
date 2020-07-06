using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ViewOrderDetails : System.Web.UI.Page
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
        else if (Request.QueryString["UT"] == "DeliveryMen")
        {
            this.MasterPageFile = "DeliveryMen.master";
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
    private void gridbind()
    {
        cmd = new SqlCommand("select *from ORDERDETAILS", con);
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
        Label oid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        TextBox status = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        cmd = new SqlCommand("update ORDERDETAILS set STATUS='" + status.Text + "'where ORDER_ID='" + oid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
}