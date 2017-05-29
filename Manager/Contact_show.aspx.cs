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

public partial class Admin_Contact_show : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("select * from contact_entry where Contact_name='" + value + "' and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label12.Text = dr["edit_date"].ToString();
            Label1.Text = dr["Contact_name"].ToString();
            Label10.Text = dr["created_date"].ToString();
            Label3.Text = dr["Account_name"].ToString();
            Label4.Text = dr["Phone"].ToString();
            Label5.Text = dr["email"].ToString();
            Label6.Text = "-";
            Label18.Text = dr["address"].ToString();
            Label19.Text = dr["add_city"].ToString();
            Label20.Text = dr["add_state"].ToString();
            Label21.Text = dr["add_zip"].ToString();
            Label22.Text = dr["country"].ToString();
           
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
        Response.Redirect("Addcontact.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cd = new SqlCommand("delete from contact_entry where Contact_name='" + Label1.Text + "' and com_id='"+company_id+"'", con);
        con.Open();
        cd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('contact deleted sucessfully');window.location ='contact.aspx';", true);

    }
}