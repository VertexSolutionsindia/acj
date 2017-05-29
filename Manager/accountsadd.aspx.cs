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
public partial class Rabbitaccountsadd : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            showCustomerType();
            showsource();
            showrating();
            showindustry();
            showbillingcountry();
            shownoofemployee();
            showownership();
            showcompaign();

            DropDownList12.Items.Insert(0, new ListItem("-- Choose Option --", "0"));


            if (Session["name1"] != null)
            {
                company_id = Convert.ToInt32(Session["company_id"].ToString());
                string name = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                SqlCommand cmd = new SqlCommand("select * from account_entry where Account_name='" + name + "' and com_id='"+company_id+"'", con);
                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox5.Text = dr["Account_name"].ToString();
                    TextBox9.Text = dr["Phone"].ToString();
                    TextBox10.Text = dr["Email"].ToString();
                    TextBox11.Text = dr["website"].ToString();
                    DropDownList2.SelectedItem.Text = dr["Assign_to"].ToString();
                    DropDownList5.SelectedItem.Text = dr["Customer_type"].ToString();
                    DropDownList3.SelectedItem.Text = dr["Source"].ToString();
                    DropDownList6.SelectedItem.Text = dr["ratings"].ToString();
                    DropDownList7.SelectedItem.Text = dr["Industry"].ToString();
                    TextBox18.Text = dr["Segment"].ToString();
                    TextBox12.Text = dr["Compititors"].ToString();
                    TextBox13.Text = dr["Notes"].ToString();
                    TextBox1.Text = dr["tin_no"].ToString();
                    TextBox6.Text = dr["Cst_no"].ToString();
                    TextBox7.Text = dr["Service_tax_no"].ToString();
                    TextBox8.Text = dr["Panno"].ToString();


                    TextBox3.Text = dr["Billing_Add"].ToString();
                    TextBox14.Text = dr["billing_city"].ToString();
                    TextBox15.Text = dr["billing_state"].ToString();
                    TextBox8.Text = dr["Billing_zip"].ToString();
                    DropDownList8.SelectedItem.Text = dr["Billing_country"].ToString();
                    DropDownList9.SelectedItem.Text = dr["no_Of_emp"].ToString();
                    TextBox2.Text = dr["Annual_revenue"].ToString();
                    DropDownList11.SelectedItem.Text = dr["ownership"].ToString();
                    DropDownList12.SelectedItem.Text = dr["compaign"].ToString();
                    DropDownList1.SelectedItem.Text = dr["compaign_type"].ToString();
                }
            }
          
        }

    }
   
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }

    private void showCustomerType()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type where com_id='" + company_id + "'  ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList5.DataSource = ds;
        DropDownList5.DataTextField = "Accountcustomer_type";
        DropDownList5.DataValueField = "No";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showsource()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_source where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Lead_source";
        DropDownList3.DataValueField = "No";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showrating()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accoun_rating where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList6.DataSource = ds;
        DropDownList6.DataTextField = "Accoun_rating";
        DropDownList6.DataValueField = "No";
        DropDownList6.DataBind();
        DropDownList6.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }
    private void showindustry()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Account_Industry where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList7.DataSource = ds;
        DropDownList7.DataTextField = "Account_Industry";
        DropDownList7.DataValueField = "No";
        DropDownList7.DataBind();
        DropDownList7.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showbillingcountry()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accoun_Country where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList8.DataSource = ds;
        DropDownList8.DataTextField = "Accoun_Country";
        DropDownList8.DataValueField = "No";
        DropDownList8.DataBind();
        DropDownList8.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }
    private void shownoofemployee()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Account_No_of_employees where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList9.DataSource = ds;
        DropDownList9.DataTextField = "Account_No_of_employees";
        DropDownList9.DataValueField = "No";
        DropDownList9.DataBind();
        DropDownList9.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showownership()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountowner_ship where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList11.DataSource = ds;
        DropDownList11.DataTextField = "Accountowner_ship";
        DropDownList11.DataValueField = "No";
        DropDownList11.DataBind();
        DropDownList11.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showcompaign()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Compaign_type where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "Compaign_type";
        DropDownList1.DataValueField = "No";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
         string value1 = "";
        if (Session["name1"] != null)
        {
            value1 = Session["name1"].ToString();
        }
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("select * from account_entry where Account_name='" + value1 + "'and com_id='"+company_id+"' ", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
          DateTime date = Convert.ToDateTime(DateTime.Today);  
             SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("update account_entry set Phone=@Phone,Email=@Email,website=@website,Assign_to=@Assign_to,Customer_type=@Customer_type,Source=@Source,ratings=@ratings,Industry=@Industry,Segment=@Segment,Compititors=@Compititors,Notes=@Notes,tin_no=@tin_no,Cst_no=@Cst_no,Service_tax_no=@Service_tax_no,Panno=@Panno,Suplier=@suplier,Billing_Add=@Billing_Add,billing_city=@billing_city,billing_state=@billing_state,Billing_zip=@Billing_zip,Billing_country=@Billing_country,no_Of_emp=@no_Of_emp,Annual_revenue=@Annual_revenue,ownership=@ownership,compaign=@compaign,compaign_type=@compaign_type,created=@created where Account_name='"+TextBox5.Text+"' and com_id='"+company_id+"'", CON);
            
            cmd.Parameters.AddWithValue("@Phone", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox10.Text);
            cmd.Parameters.AddWithValue("@website", TextBox11.Text);

            cmd.Parameters.AddWithValue("@Assign_to", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Customer_type", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Source", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ratings", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Industry", DropDownList7.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Segment", TextBox18.Text);
            cmd.Parameters.AddWithValue("@Compititors", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Notes", TextBox13.Text);
            cmd.Parameters.AddWithValue("@tin_no", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Cst_no", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Service_tax_no", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Panno", TextBox8.Text);
            if (CheckBox1.Checked == true)
            {
                string yes = "yes";
                cmd.Parameters.AddWithValue("@suplier", yes);
            }
            else
            {
                string No = "yes";
                cmd.Parameters.AddWithValue("@suplier", No);
            }

            cmd.Parameters.AddWithValue("@Billing_Add", TextBox3.Text);
            cmd.Parameters.AddWithValue("@billing_city", TextBox14.Text);
            cmd.Parameters.AddWithValue("@billing_state", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Billing_zip", TextBox16.Text);
            cmd.Parameters.AddWithValue("@Billing_country", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@no_Of_emp", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Annual_revenue", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ownership", DropDownList11.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList12.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign_type", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@created", date);

            CON.Open();

            cmd.ExecuteNonQuery();
            CON.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account updated successfully')", true);
            showCustomerType();
            showsource();
            showrating();
            showindustry();
            showbillingcountry();
            shownoofemployee();
            showownership();
            showcompaign();
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox1.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox10.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";


       
        }
        
            else
            {
     DateTime date = Convert.ToDateTime(DateTime.Today);
        if (TextBox5.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Name')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into account_entry values(@Account_name,@Phone,@Email,@website,@Assign_to,@Customer_type,@Source,@ratings,@Industry,@Segment,@Compititors,@Notes,@tin_no,@Cst_no,@Service_tax_no,@Panno,@suplier,@Billing_Add,@billing_city,@billing_state,@Billing_zip,@Billing_country,@no_Of_emp,@Annual_revenue,@ownership,@compaign,@compaign_type,@created,@com_id)", CON);
            cmd.Parameters.AddWithValue("@Account_name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox10.Text);
            cmd.Parameters.AddWithValue("@website", TextBox11.Text);

            cmd.Parameters.AddWithValue("@Assign_to", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Customer_type", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Source", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ratings", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Industry", DropDownList7.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Segment", TextBox18.Text);
            cmd.Parameters.AddWithValue("@Compititors", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Notes", TextBox13.Text);
            cmd.Parameters.AddWithValue("@tin_no", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Cst_no", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Service_tax_no", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Panno", TextBox8.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            if (CheckBox1.Checked == true)
            {
                string yes = "yes";
                cmd.Parameters.AddWithValue("@suplier", yes);
            }
            else
            {
                string No = "yes";
                cmd.Parameters.AddWithValue("@suplier", No);
            }

            cmd.Parameters.AddWithValue("@Billing_Add", TextBox3.Text);
            cmd.Parameters.AddWithValue("@billing_city", TextBox14.Text);
            cmd.Parameters.AddWithValue("@billing_state", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Billing_zip", TextBox16.Text);
            cmd.Parameters.AddWithValue("@Billing_country", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@no_Of_emp", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Annual_revenue", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ownership", DropDownList11.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList12.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign_type", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@created", date);

            CON.Open();

            cmd.ExecuteNonQuery();
            CON.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account created successfully')", true);
            showCustomerType();
            showsource();
            showrating();
            showindustry();
            showbillingcountry();
            shownoofemployee();
            showownership();
            showcompaign();
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox1.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox10.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
}


            }

        }
    }
