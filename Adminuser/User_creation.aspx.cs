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

public partial class Adminuser_User_creation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getid();
            company();
            role();
            getid1();
        }
    }
    private void company()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Company_detail ORDER BY com_id asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "company_name";
        DropDownList1.DataValueField = "com_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("-- Select item --", "0"));

        con.Close();
    }
    private void role()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from role_details ORDER BY roleid asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Rolename";
        DropDownList2.DataValueField = "roleid";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("-- Select item --", "0"));

        con.Close();
    }
    private void getid()
    {
        int a;



        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
        con1.Open();
        string query = "Select max(com_id) from Company_detail ";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {

                Label5.Text= "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label5.Text = a.ToString();
            }
        }
    }
    private void getid1()
    {
        int a;



        SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
        con1.Open();
        string query = "Select max(user_id) from user_details ";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {

                Label6.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label6.Text = a.ToString();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter company name')", true);
        }
        else if (TextBox5.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter mobile no')", true);
        }
        else
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("insert into Company_detail values(@com_id,@company_name,@Address,@Mobile_number,@Tin_no,@Cst_no)", con);
            cmd.Parameters.AddWithValue("@com_id", Label5.Text);
            cmd.Parameters.AddWithValue("@company_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Mobile_number", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Tin_no", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Cst_no", TextBox7.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Company details created successfully')", true);
            getid();
            company();
            TextBox2.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "-- Select item --")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please select valid Company name')", true);
        }
        
        else if (TextBox8.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter login name')", true);
        
        }
        else if (TextBox1.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter user name')", true);
        }
        else if (TextBox4.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter user password')", true);
        }
        else if (DropDownList2.SelectedItem.Text == "-- Select item --")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please select Valid role')", true);
        }
        else
        {

            SqlConnection con100 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
            SqlCommand cmd100 = new SqlCommand("SELECT * FROM user_details WHERE company_name = @company_name", con100);
            cmd100.Parameters.AddWithValue("@company_name", DropDownList1.SelectedItem.Text);
            con100.Open();
            SqlDataReader reader1 = cmd100.ExecuteReader();
            if (reader1.HasRows)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Dream already exist')", true);
            }
            else
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                SqlCommand cmd = new SqlCommand("insert into user_details values(@user_id,@user_name,@password,@com_id,@company_name,@Roleid,@rolename,@Name,@Email,@Mobile_no)", con);
                cmd.Parameters.AddWithValue("@user_id", Label6.Text);
                cmd.Parameters.AddWithValue("@user_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@com_id", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@company_name", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Roleid", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@rolename", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Mobile_no", TextBox10.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('User details created successfully')", true);
                getid();
                getid1();
                company();
                role();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
            }
            con100.Close();
        }

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox10.Text = "";
        TextBox4.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con100 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
            SqlCommand cmd100 = new SqlCommand("SELECT * FROM user_details WHERE company_name = @company_name", con100);
            cmd100.Parameters.AddWithValue("@company_name", DropDownList1.SelectedItem.Text);
            con100.Open();
            SqlDataReader reader1 = cmd100.ExecuteReader();
            if (reader1.HasRows)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Dream already created')", true);
            }
            con100.Close();

    }
}