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


public partial class Leadsadd : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdropdown();
            showleadstatus();
            showleadsource();
            showcustomertype();
            showcountry();
            DropDownList8.Items.Insert(0, new ListItem("Nazeer", "0"));
            DropDownList4.Items.Insert(0, new ListItem("-- Choose Option --", "0"));



            if (Session["name1"] != null)
            {
                company_id = Convert.ToInt32(Session["company_id"].ToString());
                string name = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                SqlCommand cmd = new SqlCommand("select * from lead_entry where Lead_name='" + name + "' and com_id='" + company_id + "'", con);
                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox11.Text = dr["Lead_name"].ToString();
                    TextBox13.Text = dr["Account_name"].ToString();
                    TextBox14.Text = dr["Phone"].ToString();
                    TextBox15.Text = dr["email"].ToString();
                    TextBox16.Text = dr["Product"].ToString();
                    DropDownList3.SelectedItem.Text = dr["status"].ToString();
                    DropDownList7.SelectedItem.Text = dr["lead_source"].ToString();
                    DropDownList8.SelectedItem.Text = dr["Assigned_to"].ToString();
                    TextBox22.Text = dr["Share_with"].ToString();
                    TextBox23.Text = dr["Summary"].ToString();
                    TextBox2.Text = dr["Alter_email"].ToString();
                    TextBox3.Text = dr["alter_phone"].ToString();
                    DropDownList1.SelectedItem.Text = dr["Customer_type"].ToString();
                    DropDownList4.SelectedItem.Text = dr["compaign"].ToString();
                    TextBox6.Text = dr["address"].ToString();
                    TextBox7.Text = dr["add_city"].ToString();
                    TextBox1.Text = dr["add_state"].ToString();
                    TextBox4.Text = dr["add_zip"].ToString();
                    DropDownList9.SelectedItem.Text = dr["Country"].ToString();
                }
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
         string value1 = "";
        if (Session["name1"] != null)
        {
            value1 = Session["name1"].ToString();
        }
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("select * from lead_entry where Lead_name='" + value1 + "' and com_id='" + company_id + "'", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {

            DateTime date = Convert.ToDateTime(DateTime.Today);

            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("update lead_entry set Lead_name=@Lead_name,Account_name=@Account_name,Phone=@Phone,email=@email,Product=@Product,status=@status,lead_source=@lead_source,Assigned_to=@Assigned_to,Share_with=@Share_with,Summary=@Summary,Alter_email=@Alter_email,alter_phone=@alter_phone,Customer_type=@Customer_type,compaign=@compaign,address=@address,add_city=@add_city,add_state=@add_state,add_zip=@add_zip,Country=@Country where Lead_name='" + TextBox11.Text + "' and com_id='" + company_id + "'", con);


            cmd.Parameters.AddWithValue("@Lead_name", DropDownList2.SelectedItem.Text + TextBox11.Text + TextBox12.Text);
            cmd.Parameters.AddWithValue("@Account_name", TextBox13.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox14.Text);
            cmd.Parameters.AddWithValue("@email", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Product", TextBox16.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@lead_source", DropDownList7.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Assigned_to", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Share_with", TextBox22.Text);
            cmd.Parameters.AddWithValue("@Summary", TextBox23.Text);
            cmd.Parameters.AddWithValue("@Alter_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@alter_phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Customer_type", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@add_city", TextBox7.Text);
            cmd.Parameters.AddWithValue("@add_state", TextBox1.Text);
            cmd.Parameters.AddWithValue("@add_zip", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownList9.SelectedItem.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Leads created sucesssfully')", true);

        }
        else
        {
            DateTime date = Convert.ToDateTime(DateTime.Today);

            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into lead_entry values(@Lead_name,@Account_name,@Phone,@email,@Product,@status,@lead_source,@Assigned_to,@Share_with,@Summary,@Alter_email,@alter_phone,@Customer_type,@compaign,@address,@add_city,@add_state,@add_zip,@Country,@com_id)", con);


            cmd.Parameters.AddWithValue("@Lead_name", DropDownList2.SelectedItem.Text + TextBox11.Text + TextBox12.Text);
            cmd.Parameters.AddWithValue("@Account_name", TextBox13.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox14.Text);
            cmd.Parameters.AddWithValue("@email", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Product", TextBox16.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@lead_source", DropDownList7.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Assigned_to", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Share_with", TextBox22.Text);
            cmd.Parameters.AddWithValue("@Summary", TextBox23.Text);
            cmd.Parameters.AddWithValue("@Alter_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@alter_phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Customer_type", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@add_city", TextBox7.Text);
            cmd.Parameters.AddWithValue("@add_state", TextBox1.Text);
            cmd.Parameters.AddWithValue("@add_zip", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Leads created sucesssfully')", true);
        }
         
    }
    private void showdropdown()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Product_category where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList5.DataSource = ds;
        DropDownList5.DataTextField = "Product_category";
        DropDownList5.DataValueField = "No";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void showleadstatus()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_status where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Lead_status";
        DropDownList3.DataValueField = "No";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("Warm", "0"));

        con.Close();
    }
    private void showleadsource()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_source where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList7.DataSource = ds;
        DropDownList7.DataTextField = "Lead_source";
        DropDownList7.DataValueField = "No";
        DropDownList7.DataBind();
        DropDownList7.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }
    private void showcustomertype()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "Accountcustomer_type";
        DropDownList1.DataValueField = "No";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }
    private void showcountry()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accoun_Country where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList9.DataSource = ds;
        DropDownList9.DataTextField = "Accoun_Country";
        DropDownList9.DataValueField = "No";
        DropDownList9.DataBind();
        DropDownList9.Items.Insert(0, new ListItem("-- India --", "0"));

        con.Close();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList6.SelectedItem.Text != "")
        {
            ListBox1.Items.Add(this.DropDownList6.SelectedItem.Text);
        }
        else
        {

        }
       
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from product_entry where category='" + DropDownList5.SelectedItem.Text + "' and com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList6.DataSource = ds;
        DropDownList6.DataTextField = "Product_name";
        DropDownList6.DataValueField = "No";
        DropDownList6.DataBind();
        DropDownList6.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        List<ListItem> itemsToRemove = new List<ListItem>();

        foreach (ListItem listItem in ListBox1.Items)
        {
            if (listItem.Selected)
                itemsToRemove.Add(listItem);
        }

        foreach (ListItem listItem in itemsToRemove)
        {
            ListBox1.Items.Remove(listItem);
        }
    }
    protected void Button47_Click(object sender, EventArgs e)
    {
        

        TextBox16.Text = "";
        string result = "";
        foreach (ListItem li in ListBox1.Items)
        {
            result += li.Value + ",";
        }

        // Remove the trailing comma in the end  
        TextBox16.Text = result.Remove(result.LastIndexOf(","), 1);
        ModalPopupExtender19.Hide();

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        TextBox16.Text = "";
    }
  
}