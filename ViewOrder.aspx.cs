using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ViewOrder : System.Web.UI.Page
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
    protected void gridbind()
    {
        cmd = new SqlCommand("select ORDER_ID,FOOD_NAME,PRICE,STATUS from ORDERDETAILS where EMAIL_ID='" + Session["EMAIL"] + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Close();
            cmd = new SqlCommand("select ORDER_ID,FOOD_NAME,PRICE,STATUS from ORDERDETAILS where EMAIL_ID='" + Session["EMAIL"] + "'", con);
            dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
     
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd=new SqlCommand("insert into CANCELLATIONDETAILS(ORDER_ID,CAL_DATE,PAYMENT_ID) values('"+Session["ORDERID"]+"','"+System.DateTime.Now+"','"+Session["PID"]+"')",con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("delete from ORDERDETAILS where EMAIL_ID='" + Session["EMAIL"] + "'", con);
        cmd.ExecuteNonQuery();
        Label2.Text = "YOUR ORDER SUCCESSFULLY CANCELLED!!!";
        gridbind();

    }
}