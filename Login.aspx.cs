using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

public partial class Loginrabbit : System.Web.UI.Page
{
    string name1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("onkeypress", "return controlEnter('" + TextBox2.ClientID +"', event)");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {



        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("select * from login", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            string name = dr1["user_name"].ToString();
            string password = dr1["password"].ToString();
            string role = dr1["Role"].ToString();
            string Role0 = "Superuser";
            if (this.TextBox1.Text.Trim() == name
           && this.TextBox2.Text.Trim() == password && Role0 == role)
            {
                // Success, create non-persistent authentication cookie.
                FormsAuthentication.SetAuthCookie(
                        this.TextBox1.Text.Trim(), false);

                FormsAuthenticationTicket ticket1 =
                   new FormsAuthenticationTicket(
                        1,                                   // version
                        this.TextBox1.Text.Trim(),   // get username  from the form
                        DateTime.Now,                        // issue time is now
                        DateTime.Now.AddMinutes(10),         // expires in 10 minutes
                        false,      // cookie is not persistent
                        "Superuser"                              // role assignment is stored
                    // in userData
                        );
                HttpCookie cookie1 = new HttpCookie(
                  FormsAuthentication.FormsCookieName,
                  FormsAuthentication.Encrypt(ticket1));
                Response.Cookies.Add(cookie1);

                // 4. Do the redirect. 
                String returnUrl1;
                // the login is successful
                if (Request.QueryString["ReturnUrl"] == null)
                {
                    returnUrl1 = "Adminuser/User_details.aspx";

                }

                //login not unsuccessful 
                else
                {
                    returnUrl1 = Request.QueryString["ReturnUrl"];
                }
                Response.Redirect(returnUrl1);
            }
            else
            {
                Label2.Text = "The username and password you entered don't match.";
            }

        }



        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("select * from user_details", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int id =Convert.ToInt32( dr["user_id"].ToString());
            string name = dr["user_name"].ToString();
            string password = dr["password"].ToString();
            string role = dr["rolename"].ToString();
            int company_id =Convert.ToInt32( dr["com_id"].ToString());
            name1 = dr["company_name"].ToString();



            string Role1 = "Admin";
            if (this.TextBox1.Text.Trim() == name
           && this.TextBox2.Text.Trim() == password && Role1 == role)
            {
                // Success, create non-persistent authentication cookie.
                FormsAuthentication.SetAuthCookie(
                        this.TextBox1.Text.Trim(), false);

                FormsAuthenticationTicket ticket1 =
                   new FormsAuthenticationTicket(
                        1,                                   // version
                        this.name1,   // get username  from the form
                        DateTime.Now,                        // issue time is now
                        DateTime.Now.AddMinutes(1000),         // expires in 10 minutes
                        false,      // cookie is not persistent
                        "Admin"                              // role assignment is stored
                    // in userData
                        );
                HttpCookie cookie1 = new HttpCookie(
                  FormsAuthentication.FormsCookieName,
                  FormsAuthentication.Encrypt(ticket1));
                Response.Cookies.Add(cookie1);

                // 4. Do the redirect. 
                String returnUrl1;
                // the login is successful
                if (Request.QueryString["ReturnUrl"] == null)
                {
                    Session["name"] = id;
                    Session["company_id"] = company_id;
                    returnUrl1 = "Admin/Financial_year.aspx";

                }

                //login not unsuccessful 
                else
                {
                    returnUrl1 = Request.QueryString["ReturnUrl"];
                }
                Response.Redirect(returnUrl1);
            }
            else
            {
                Label2.Text = "The username and password you entered don't match.";
            }



            string Role2 = "Manager";
             if (this.TextBox1.Text.Trim() == name
          && this.TextBox2.Text.Trim() == password && Role2==role  )
            {
                // Success, create non-persistent authentication cookie.
                FormsAuthentication.SetAuthCookie(
                        this.TextBox1.Text.Trim(), false);

                FormsAuthenticationTicket ticket1 =
                   new FormsAuthenticationTicket(
                        1,                                   // version
                        this.name1,   // get username  from the form
                        DateTime.Now,                        // issue time is now
                        DateTime.Now.AddMinutes(1000),         // expires in 10 minutes
                        false,      // cookie is not persistent
                        "Manager"                              // role assignment is stored
                    // in userData
                        );
                HttpCookie cookie1 = new HttpCookie(
                  FormsAuthentication.FormsCookieName,
                  FormsAuthentication.Encrypt(ticket1));
                Response.Cookies.Add(cookie1);

                // 4. Do the redirect. 
                String returnUrl1;
                // the login is successful
                if (Request.QueryString["ReturnUrl"] == null)
                {
                    Session["name"] = id;
                    Session["company_id"] = company_id;
                    returnUrl1 = "Manager/Dashboard.aspx";

                }

                //login not unsuccessful 
                else
                {
                    returnUrl1 = Request.QueryString["ReturnUrl"];
                }
                Response.Redirect(returnUrl1);
            }
            else
            {
                Label2.Text = "The username and password you entered don't match.";
            }
             string Role3 = "Executive";
             if (this.TextBox1.Text.Trim() == name
          && this.TextBox2.Text.Trim() == password && Role3 == role)
             {
                 // Success, create non-persistent authentication cookie.
                 FormsAuthentication.SetAuthCookie(
                         this.TextBox1.Text.Trim(), false);

                 FormsAuthenticationTicket ticket1 =
                    new FormsAuthenticationTicket(
                         1,                                   // version
                         this.name1,   // get username  from the form
                         DateTime.Now,                        // issue time is now
                         DateTime.Now.AddMinutes(1000),         // expires in 10 minutes
                         false,      // cookie is not persistent
                         "Executive"                              // role assignment is stored
                     // in userData
                         );
                 HttpCookie cookie1 = new HttpCookie(
                   FormsAuthentication.FormsCookieName,
                   FormsAuthentication.Encrypt(ticket1));
                 Response.Cookies.Add(cookie1);

                 // 4. Do the redirect. 
                 String returnUrl1;
                 // the login is successful
                 if (Request.QueryString["ReturnUrl"] == null)
                 {
                     Session["name"] = id;
                     Session["company_id"] = company_id;
                     returnUrl1 = "Executive/Dashboard.aspx";



                 }

                 //login not unsuccessful 
                 else
                 {
                     returnUrl1 = Request.QueryString["ReturnUrl"];
                 }
                 Response.Redirect(returnUrl1);
             }
             else
             {
                 Label2.Text = "The username and password you entered don't match.";
             }
        }
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        ModalPopupExtender21.Show();
    }
}