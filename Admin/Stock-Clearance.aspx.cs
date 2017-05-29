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
public partial class Admin_Stock_Clearance : System.Web.UI.Page
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


    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {



    }
    private void getinvoiceno()
    {
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select Max(Emp_Code) from Staff_Entry";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {

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