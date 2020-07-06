using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
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
        cmd = new SqlCommand("select FOOD_NAME,FOOD_PRICE from FOODDETAILS", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowindex];
        string foodname = (row.FindControl("Label1")as Label).Text;
        string foodprice = (row.FindControl("Label2") as Label).Text;
        //if (e.CommandName == "INSERT")
        //{ 
        //    Label foodname = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        //     Label foodprice = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
        cmd = new SqlCommand("insert into CARTDETAILS(FOOD_NAME,FOOD_PRICE,EMAIL_ID)values('" + foodname + "','" + foodprice + "','" + Session["Email"] + "')", con);
            cmd.ExecuteNonQuery();
        //}
    }
}