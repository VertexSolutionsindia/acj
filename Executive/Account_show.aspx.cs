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
#endregion


public partial class Account_show : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Label1.Text = Session["name"].ToString();
        }
        company_id = Convert.ToInt32(Session["company_id"].ToString());
       string value=Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("select * from account_entry where Account_name='" + value + "' and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader da;
        da = cmd.ExecuteReader();
        if (da.Read())
        {
            Label7.Text = da["Account_name"].ToString();
            Label3.Text = da["Account_name"].ToString();
            Label10.Text = da["Email"].ToString();
            Label11.Text = da["Phone"].ToString();
            Label18.Text = da["Billing_Add"].ToString();
            Label19.Text = da["billing_city"].ToString();
            Label20.Text=da["billing_state"].ToString();
            Label21.Text = da["Billing_zip"].ToString();
            Label15.Text=da["ratings"].ToString();
            Label17.Text = da["no_Of_emp"].ToString();
            Label13.Text = da["Assign_to"].ToString();
            Label12.Text = da["billing_state"].ToString();
            Label33.Text = da["billing_city"].ToString();
            Label24.Text = da["Segment"].ToString();
            Label27.Text = da["Customer_type"].ToString();
            Label26.Text = da["Source"].ToString();
            Label34.Text = da["compaign"].ToString();
            Label32.Text = da["Compititors"].ToString();
            Label2.Text = da["Assign_to"].ToString();
            Label35.Text = da["created"].ToString();
            Label28.Text = da["Annual_revenue"].ToString();
        }
        con.Close();

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {

        Session["name1"] = Label1.Text;
        Response.Redirect("accountsadd.aspx");

    }
   
}