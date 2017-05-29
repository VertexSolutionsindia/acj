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

public partial class Opportunitiesshow : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
     
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string name = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("select * from opportunity_entry where Opp_Name='" + name + "' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["Opp_Name"].ToString();
            Label2.Text = dr["assigned_to"].ToString();
            Label3.Text = dr["account"].ToString();
            Label4.Text = dr["Opp_value"].ToString();
            Label5.Text = dr["contact"].ToString();

            Label12.Text = dr["industry"].ToString();

            Label15.Text = dr["source"].ToString();



            Label23.Text = dr["summary"].ToString();
            Label9.Text = dr["product"].ToString();
            Label7.Text = dr["share_with"].ToString();
            Label14.Text = dr["assigned_to"].ToString();
         
        }



    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {

        Session["name1"] = Label1.Text;
        Response.Redirect("ADDOpportunities.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cd = new SqlCommand("delete from opportunity_entry where Opp_Name='" + Label1.Text + "' and com_id='" + company_id + "'", con);
        con.Open();
        cd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Product deleted sucessfully');window.location ='Opportunity.aspx';", true);

    }
}