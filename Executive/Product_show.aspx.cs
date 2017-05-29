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


public partial class Product_show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["date"].ToString();
            Label7.Text = Session["date"].ToString();
            Label3.Text = Session["part_no"].ToString();
            Label4.Text = Session["category"].ToString();
            Label5.Text = Session["price"].ToString();
            DateTime created = Convert.ToDateTime(Session["date"].ToString());
            DateTime date = Convert.ToDateTime(DateTime.Today);

            int days = Convert.ToInt32((date - created).TotalDays);
            Label8.Text = days.ToString();

          
            string value = Session["name"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cd = new SqlCommand("select * from product_entry where Product_name='" + value + "'", con);
            con.Open();
            SqlDataReader dr;
            dr = cd.ExecuteReader();
            if (dr.Read())
            {
                Label9.Text = dr["Size"].ToString();
                Label6.Text = dr["edit_date"].ToString();
            }

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
        Response.Redirect("productadd.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string value = Session["name"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cd = new SqlCommand("delete from product_entry where Product_name='" + Label1.Text + "'", con);
        con.Open();
        cd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(),"alert","alert('Product deleted sucessfully');window.location ='product.aspx';",true);
       
    }
}