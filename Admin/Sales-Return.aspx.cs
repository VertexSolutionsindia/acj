#region " Using "
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;
using Microsoft.Reporting.WebForms;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
#endregion

public partial class Admin_Sales_Return : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            getinvoiceno();
            show_category();
            showrating();
            BindData();

            active();
            created();




        }
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Session["company_id"] != null)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
        }

        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("insert into Sales_Return values(@Customer_Name,@Customer_Address,@Mobile_number,@Invoice_No,@Com_Id)", CON);
       
        cmd.Parameters.AddWithValue("@Customer_Name", HttpUtility.HtmlDecode(TextBox5.Text));
        cmd.Parameters.AddWithValue("@Customer_Address", HttpUtility.HtmlDecode(TextBox6.Text));
        cmd.Parameters.AddWithValue("@Mobile_number", HttpUtility.HtmlDecode(TextBox7.Text));
        cmd.Parameters.AddWithValue("@Invoice_No", Label1.Text);
        cmd.Parameters.AddWithValue("@Com_Id", company_id);
        CON.Open();
        cmd.ExecuteNonQuery();
        CON.Close();


        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("insert into Sales_Rtn_Details values(@Invoice_No,@Barcode,@Product_Name,@Quantity,@Rate,@Total_Price,@Com_Id)", CON1);
        cmd1.Parameters.AddWithValue("@Invoice_No", Label2.Text);
        cmd1.Parameters.AddWithValue("@Barcode", HttpUtility.HtmlDecode(TextBox8.Text));
        cmd1.Parameters.AddWithValue("@Product_Name", HttpUtility.HtmlDecode(TextBox3.Text));
        cmd1.Parameters.AddWithValue("@Quantity", HttpUtility.HtmlDecode(TextBox2.Text));
        cmd1.Parameters.AddWithValue("@Rate", HttpUtility.HtmlDecode(TextBox4.Text));
        cmd1.Parameters.AddWithValue("@Total_Price", HttpUtility.HtmlDecode(TextBox9.Text));
        cmd1.Parameters.AddWithValue("@Com_Id", company_id);
        CON1.Open();
        cmd1.ExecuteNonQuery();
        CON1.Close();


        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sales Return Added successfully')", true);
        BindData();
        show_category();
        getinvoiceno();
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        getinvoiceno();
        show_category();
    }
    private void active()
    {

    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;


        LinkButton Lnk = (LinkButton)sender;
        string name = Lnk.Text;
        Session["name"] = name;
        Response.Redirect("Account_show.aspx");


    }

    private void created()
    {

    }
    protected void BindData()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Sales_Return where Com_Id='" + company_id + "' ORDER BY Invoice_No asc", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
     

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        

    }
    private void getinvoiceno()
    {
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select Max(Invoice_No) from Sales_Return";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label1.Text = "1";
                Label2.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label1.Text = a.ToString();
                Label2.Text = a.ToString();
            }
        }
    }
    private void show_category()
    {

        
    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["name1"] = "";
        Response.Redirect("~/Admin/Category_Add.aspx");
    }

    private void showcustomertype()
    {

    }
    private void showrating()
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}