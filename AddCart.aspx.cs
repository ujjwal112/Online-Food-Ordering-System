using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class AddCart : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    int total = 0;
    string foodlist="";
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationSettings.AppSettings["MyConn"]);
        con.Open();
        t2.Visible = false;
        t3.Visible = false;
        if (Page.IsPostBack == false)
        {
            gridbind();
        }
    }
    private void gridbind()
    {
        cmd = new SqlCommand("select *from CARTDETAILS where EMAIL_ID='" + Session["Email"] + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label cartid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label5");
        cmd = new SqlCommand("delete CARTDETAILS where CART_ID='" + cartid.Text + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        gridbind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lbltotal = (Label)e.Row.FindControl("Label2");
            total += Convert.ToInt32(lbltotal.Text);
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label totalprice = (Label)e.Row.FindControl("Label4");
            totalprice.Text = total.ToString();
            Label6.Text = Convert.ToString(total);
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label food = (Label)e.Row.FindControl("Label1");
            if (foodlist == "")
            {
                foodlist = Convert.ToString(food.Text);
            }
            else
            {
                foodlist = foodlist + "," + Convert.ToString(food.Text);
            }
            Label7.Text = foodlist;
        //int totalprice = 0,total;
        //foreach (GridViewRow row in GridView1.Rows)
        //{
        //    total = Convert.ToInt32(row.Cells[2].Text);
        //    totalprice += total;
        //}
        //Label6.Text =Convert.ToString( totalprice);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        t2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("insert into ORDERDETAILS(NAME,FOOD_NAME,PRICE,ADDRESS,EMAIL_ID,STATUS) values('" + Session["NAME"] + "','" +Label7.Text + "','" +Label6.Text + "','" + TextBox1.Text + "','" + Session["EMAIL"] + "','PENDING');select max(ORDER_ID) from ORDERDETAILS", con);
        string x = Convert.ToString(cmd.ExecuteScalar());
        Session["ORDERID"] = x;
        cmd = new SqlCommand("insert into PAYMENTDETAILS(ORDER_ID,PAYMENT_MODE,STATUS) values('" + x + "','" + RadioButtonList1.SelectedValue + "','PENDING');select MAX(PAYMENT_ID) FROM PAYMENTDETAILS", con);
        string y = Convert.ToString(cmd.ExecuteScalar());
        Session["PID"] = y;
        cmd = new SqlCommand("delete CARTDETAILS where EMAIL_ID='" + Session["EMAIL"] + "'", con);
        cmd.ExecuteNonQuery();
        Label8.Text = "ORDER PLACED!!";

    }
}