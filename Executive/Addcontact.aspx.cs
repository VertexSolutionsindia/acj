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

public partial class Admin_Addcontact : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdropdown();


            if (Session["name1"] != null)
            {
                company_id = Convert.ToInt32(Session["company_id"].ToString());
                string name = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                SqlCommand cmd = new SqlCommand("select * from Contact_entry where Contact_name='" + name + "' and com_id='"+company_id+"'", con);
                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox11.Text = dr["Contact_name"].ToString();
                    DropDownList3.SelectedItem.Text = dr["Account_name"].ToString();
                    TextBox14.Text = dr["Phone"].ToString();
                    TextBox15.Text = dr["email"].ToString();
                    string bn= dr["keycontact"].ToString();
                    if (bn == "yes")
                    {
                        CheckBox1.Checked = true;
                    }
                    else
                    {
                        CheckBox1.Checked = false;
                    }
                    TextBox5.Text = dr["Designation"].ToString();
                    TextBox2.Text = dr["alter_email"].ToString();
                    TextBox3.Text = dr["alter_phone"].ToString();
                    TextBox6.Text = dr["address"].ToString();
                    TextBox7.Text = dr["add_city"].ToString();
                    TextBox1.Text = dr["add_state"].ToString();
                    DropDownList9.SelectedItem.Text = dr["country"].ToString();
                    TextBox8.Text = dr["summary"].ToString();
                }
            }

        }

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    private void showdropdown()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from account_entry where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Account_name";
        DropDownList3.DataValueField = "No";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          string value1 = "";
        if (Session["name1"] != null)
        {
            value1 = Session["name1"].ToString();
        }
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("select * from contact_entry where Contact_name='" + value1 + "' and com_id='" + company_id + "'", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            DateTime date = Convert.ToDateTime(DateTime.Today);
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("Update contact_entry set Account_name=@Account_name,Phone=@Phone,email=@email,keycontact=@keycontact,Designation=@Designation,alter_email=@alter_email,alter_phone=@alter_phone,address=@address,add_city=@add_city,add_state=@add_state,add_zip=@add_zip,country=@country,summary=@summary,created_date=@created_date,edit_date=@edit_date where Contact_name='" + TextBox11.Text + "' and com_id='" + company_id + "'", con);
       
            cmd.Parameters.AddWithValue("@Account_name", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox14.Text);
            cmd.Parameters.AddWithValue("@email", TextBox15.Text);
            if (CheckBox1.Checked == true)
            {
                string yes = "yes";
                cmd.Parameters.AddWithValue("@keycontact", yes);
            }
            else
            {
                string No = "No";
                cmd.Parameters.AddWithValue("@keycontact", No);
            }
            cmd.Parameters.AddWithValue("@Designation", TextBox5.Text);
            cmd.Parameters.AddWithValue("@alter_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@alter_phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@add_city", TextBox7.Text);
            cmd.Parameters.AddWithValue("@add_state", TextBox1.Text);
            cmd.Parameters.AddWithValue("@add_zip", TextBox4.Text);
            cmd.Parameters.AddWithValue("@country", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox8.Text);
            cmd.Parameters.AddWithValue("@created_date", Convert.ToDateTime(date));
            cmd.Parameters.AddWithValue("@edit_date", Convert.ToDateTime(date));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact details updated sucessfully');window.location ='Contact.aspx';", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());

            DateTime date = Convert.ToDateTime(DateTime.Today);
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("insert into contact_entry values(@Contact_name,@Account_name,@Phone,@email,@keycontact,@Designation,@alter_email,@alter_phone,@address,@add_city,@add_state,@add_zip,@country,@summary,@created_date,@edit_date,@com_id)", con);
            cmd.Parameters.AddWithValue("@Contact_name", DropDownList2.SelectedItem.Text + TextBox11.Text + TextBox12.Text);
            cmd.Parameters.AddWithValue("@Account_name", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox14.Text);
            cmd.Parameters.AddWithValue("@email", TextBox15.Text);
            if (CheckBox1.Checked == true)
            {
                string yes = "yes";
                cmd.Parameters.AddWithValue("@keycontact", yes);
            }
            else
            {
                string No = "No";
                cmd.Parameters.AddWithValue("@keycontact", No);
            }
            cmd.Parameters.AddWithValue("@Designation", TextBox5.Text);
            cmd.Parameters.AddWithValue("@alter_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@alter_phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@add_city", TextBox7.Text);
            cmd.Parameters.AddWithValue("@add_state", TextBox1.Text);
            cmd.Parameters.AddWithValue("@add_zip", TextBox4.Text);
            cmd.Parameters.AddWithValue("@country", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox8.Text);
            cmd.Parameters.AddWithValue("@created_date", Convert.ToDateTime(date));
            cmd.Parameters.AddWithValue("@edit_date", DBNull.Value);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Contact details created sucessfully');window.location ='Contact.aspx';", true);
        }

    }
}