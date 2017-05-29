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

public partial class Profile_main : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            company_id = Convert.ToInt32(Session["name"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("select * from user_details where user_id='" + company_id + "'", con);
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["Name"].ToString();
                string role = dr["rolename"].ToString();
                DropDownList1.Items.Insert(0, new ListItem(role, "0"));
                TextBox4.Text = dr["Email"].ToString();
                TextBox1.Text = dr["Mobile_no"].ToString();

            }
        }

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["name"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd=new SqlCommand("select * from user_details where user_id='"+company_id+"' and password='"+TextBox3.Text+"'",con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            company_id = Convert.ToInt32(Session["name"].ToString());
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("update user_details set password=@password where user_id='" + company_id + "'", con1);
            cmd1.Parameters.AddWithValue("@password", TextBox5.Text);
            con1.Open();
            cmd1.ExecuteNonQuery();
            con1.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Updated successfully')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('your current password is wrong')", true);
        }
         
    }
}