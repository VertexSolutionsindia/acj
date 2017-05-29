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

public partial class Ticketshow : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("select * from ticket_entry where Ticket_no='" + value + "' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["Ticket_no"].ToString();
            Label2.Text = dr["assign_to"].ToString();
            Label10.Text = dr["created_date"].ToString();
            Label3.Text = dr["Ticket_no"].ToString();
            Label4.Text = dr["Account"].ToString();
            Label5.Text = dr["contact"].ToString();
            Label6.Text = dr["priority"].ToString();
            Label15.Text = dr["status"].ToString();
            Label14.Text = dr["assign_to"].ToString();
            Label16.Text = dr["Product_type"].ToString();
            Label17.Text = dr["category"].ToString();
            Label23.Text = dr["summary"].ToString();
            Label9.Text = dr["product"].ToString();
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
        Response.Redirect("Ticketadd.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cd = new SqlCommand("delete from ticket_entry where Ticket_no='" + Label1.Text + "' and com_id='" + company_id + "'", con);
        con.Open();
        cd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Product deleted sucessfully');window.location ='leads.aspx';", true);

    }
}