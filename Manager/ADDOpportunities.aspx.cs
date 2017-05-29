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

public partial class ADDOpportunities : System.Web.UI.Page
{
    int company_id = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdropdown1();
            showdropdown();
            showCustomerType();
            showsource();
            stage();
            source();
            Industry();
            DropDownList1.Items.Insert(0, new ListItem("-- Choose Option --", "0"));
            if (Session["name1"] != null)
            {
                company_id = Convert.ToInt32(Session["company_id"].ToString());
                string name = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                SqlCommand cmd = new SqlCommand("select * from opportunity_entry where Opp_Name='" + name + "' and com_id='" + company_id + "'", con);
                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox5.Text = dr["Opp_Name"].ToString();
                    TextBox9.Text = dr["account"].ToString();
                    TextBox10.Text = dr["contact"].ToString();
                    TextBox11.Text = dr["Opp_value"].ToString();
                    TextBox4.Text = dr["share_with"].ToString();
                    DropDownList5.SelectedItem.Text = dr["stage"].ToString();
                    TextBox12.Text = dr["product"].ToString();
                    DropDownList6.SelectedItem.Text = dr["assigned_to"].ToString();
                    TextBox16.Text = dr["target_date"].ToString();
                    TextBox18.Text = dr["summary"].ToString();
                    DropDownList3.SelectedItem.Text = dr["source"].ToString();
                    DropDownList2.SelectedItem.Text = dr["industry"].ToString();
                    DropDownList1.SelectedItem.Text = dr["compaign"].ToString();
                }
            }

           
        }

    }
    private void showCustomerType()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList8.DataSource = ds;
        DropDownList8.DataTextField = "Accountcustomer_type";
        DropDownList8.DataValueField = "No";
        DropDownList8.DataBind();
        DropDownList8.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

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


        DropDownList9.DataSource = ds;
        DropDownList9.DataTextField = "Lead_source";
        DropDownList9.DataValueField = "No";
        DropDownList9.DataBind();
        DropDownList9.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

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
    private void showdropdown1()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Product_category where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList7.DataSource = ds;
        DropDownList7.DataTextField = "Product_category";
        DropDownList7.DataValueField = "No";
        DropDownList7.DataBind();
        DropDownList7.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from product_entry where category='" + DropDownList7.SelectedItem.Text + "' and com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList11.DataSource = ds;
        DropDownList11.DataTextField = "Product_name";
        DropDownList11.DataValueField = "No";
        DropDownList11.DataBind();
        DropDownList11.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        List<ListItem> itemsToRemove = new List<ListItem>();

        foreach (ListItem listItem in ListBox2.Items)
        {
            if (listItem.Selected)
                itemsToRemove.Add(listItem);
        }

        foreach (ListItem listItem in itemsToRemove)
        {
            ListBox1.Items.Remove(listItem);
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {


        TextBox12.Text = "";
        string result = "";
        foreach (ListItem li in ListBox2.Items)
        {
            result += li.Value + ",";
        }

        // Remove the trailing comma in the end  
        TextBox12.Text = result.Remove(result.LastIndexOf(","), 1);
        ModalPopupExtender19.Hide();

    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList11.SelectedItem.Text != "")
        {
            ListBox2.Items.Add(this.DropDownList11.SelectedItem.Text);
        }
        else
        {

        }

    }
    private void showdropdown()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from account_entry where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList4.DataSource = ds;
        DropDownList4.DataTextField = "Account_name";
        DropDownList4.DataValueField = "No";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void stage()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_Opportunity_stage where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList5.DataSource = ds;
        DropDownList5.DataTextField = "Lead_Opportunity_stage";
        DropDownList5.DataValueField = "No";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void source()
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
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void Industry()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Account_Industry where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Account_Industry";
        DropDownList2.DataValueField = "No";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void Button47_Click(object sender, EventArgs e)
    {


        TextBox9.Text = "";
        string result = "";
        foreach (ListItem li in ListBox1.Items)
        {
            result += li.Value + ",";
        }

        // Remove the trailing comma in the end  
        TextBox9.Text = result.Remove(result.LastIndexOf(","), 1);
        ModalPopupExtender1.Hide();
        
        ListBox1.ClearSelection();

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedItem.Text != "")
        {
            ListBox1.Items.Add(this.DropDownList4.SelectedItem.Text);
        }
        

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        TextBox9.Text = "";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        TextBox10.Text = "";
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        TextBox12.Text = "";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

        TextBox10.Text = DropDownList10.SelectedItem.Text + TextBox7.Text + TextBox15.Text;
        TextBox7.Text = "";
        TextBox15.Text = "";
        TextBox8.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        ModalPopupExtender3.Hide();
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime date = Convert.ToDateTime(DateTime.Today.ToString("dd/MM/yyyy"));
        if (TextBox1.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Name')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into account_entry values(@Account_name,@Phone,@Email,@website,@Assign_to,@Customer_type,@Source,@ratings,@Industry,@Segment,@Compititors,@Notes,@tin_no,@Cst_no,@Service_tax_no,@Panno,@suplier,@Billing_Add,@billing_city,@billing_state,@Billing_zip,@Billing_country,@no_Of_emp,@Annual_revenue,@ownership,@compaign,@compaign_type,@created,@com_id)", CON);
            cmd.Parameters.AddWithValue("@Account_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@website", TextBox6.Text);

            cmd.Parameters.AddWithValue("@Assign_to", DBNull.Value);
            cmd.Parameters.AddWithValue("@Customer_type", DropDownList8.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Source", DropDownList9.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ratings", DBNull.Value);
            cmd.Parameters.AddWithValue("@Industry", DBNull.Value);
            cmd.Parameters.AddWithValue("@Segment", DBNull.Value);
            cmd.Parameters.AddWithValue("@Compititors", DBNull.Value);
            cmd.Parameters.AddWithValue("@Notes", DBNull.Value);
            cmd.Parameters.AddWithValue("@tin_no", DBNull.Value);
            cmd.Parameters.AddWithValue("@Cst_no", DBNull.Value);
            cmd.Parameters.AddWithValue("@Service_tax_no", DBNull.Value);
            cmd.Parameters.AddWithValue("@Panno", DBNull.Value);

            cmd.Parameters.AddWithValue("@suplier", DBNull.Value);


            cmd.Parameters.AddWithValue("@Billing_Add", DBNull.Value);
            cmd.Parameters.AddWithValue("@billing_city", DBNull.Value);
            cmd.Parameters.AddWithValue("@billing_state", DBNull.Value);
            cmd.Parameters.AddWithValue("@Billing_zip", DBNull.Value);
            cmd.Parameters.AddWithValue("@Billing_country", DBNull.Value);
            cmd.Parameters.AddWithValue("@no_Of_emp", DBNull.Value);
            cmd.Parameters.AddWithValue("@Annual_revenue", DBNull.Value);
            cmd.Parameters.AddWithValue("@ownership", DBNull.Value);
            cmd.Parameters.AddWithValue("@compaign", DBNull.Value);
            cmd.Parameters.AddWithValue("@compaign_type", DBNull.Value);
            cmd.Parameters.AddWithValue("@created", date);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            CON.Open();

            cmd.ExecuteNonQuery();
            CON.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account created successfully')", true);
            showCustomerType();
            showsource();
            TextBox9.Text = TextBox1.Text;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";

            ModalPopupExtender2.Hide();

        }
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
        SqlCommand cmd1 = new SqlCommand("select * from opportunity_entry where Opp_Name='" + value1 + "' and com_id='" + company_id + "'", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            DateTime date = Convert.ToDateTime(DateTime.Today);
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("update opportunity_entry set account=@account,contact=@contact,Opp_value=@Opp_value,share_with=@share_with,stage=@stage,product=@product,assigned_to=@assigned_to,target_date=@target_date,summary=@summary,source=@source,industry=@industry,compaign=@compaign,created_date=@created_date,edit_date=@edit_date where Opp_Name='" + TextBox5.Text + "' and com_id='" + company_id + "'", con);
          
            cmd.Parameters.AddWithValue("@account", TextBox9.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@Opp_value", TextBox11.Text);
            cmd.Parameters.AddWithValue("@share_with", TextBox4.Text);
            cmd.Parameters.AddWithValue("@stage", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@product", TextBox12.Text);
            cmd.Parameters.AddWithValue("@assigned_to", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@target_date", TextBox16.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox18.Text);
            cmd.Parameters.AddWithValue("@source", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@industry", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@created_date", Convert.ToDateTime(date));
            cmd.Parameters.AddWithValue("@edit_date",Convert.ToDateTime(date));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Opportunity updated successfully')", true);



        }
        else
        {



            DateTime date = Convert.ToDateTime(DateTime.Today);
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("insert into opportunity_entry values(@Opp_Name,@account,@contact,@Opp_value,@share_with,@stage,@product,@assigned_to,@target_date,@summary,@source,@industry,@compaign,@created_date,@edit_date,@com_id)", con);
            cmd.Parameters.AddWithValue("@Opp_Name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@account", TextBox9.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@Opp_value", TextBox11.Text);
            cmd.Parameters.AddWithValue("@share_with", TextBox4.Text);
            cmd.Parameters.AddWithValue("@stage", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@product", TextBox12.Text);
            cmd.Parameters.AddWithValue("@assigned_to", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@target_date", TextBox16.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox18.Text);
            cmd.Parameters.AddWithValue("@source", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@industry", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@compaign", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@created_date", Convert.ToDateTime(date));
            cmd.Parameters.AddWithValue("@edit_date", DBNull.Value);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Opportunity created successfully')", true);
        }

    }
}