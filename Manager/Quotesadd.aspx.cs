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

public partial class Quotesadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdropdown1();
            showdropdown();
            showCustomerType();
            showsource();
            proirity();



        }
    }
    private void showCustomerType()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type ORDER BY No asc", con);
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
    private void proirity()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_Priority ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList13.DataSource = ds;
        DropDownList13.DataTextField = "Lead_Priority";
        DropDownList13.DataValueField = "No";
        DropDownList13.DataBind();
        DropDownList13.Items.Insert(0, new ListItem("-- Choose Option --", "0"));

        con.Close();
    }

    private void showsource()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_source ORDER BY No asc", con);
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
      
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button9_Click(object sender, EventArgs e)
    {


       

    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    private void showdropdown()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from account_entry ORDER BY No asc", con);
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
        showdropdown();
        ListBox1.ClearSelection();

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedItem.Text != "")
        {
            ListBox1.Items.Add(this.DropDownList4.SelectedItem.Text);
        }
        else
        {

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
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into account_entry values(@Account_name,@Phone,@Email,@website,@Assign_to,@Customer_type,@Source,@ratings,@Industry,@Segment,@Compititors,@Notes,@tin_no,@Cst_no,@Service_tax_no,@Panno,@suplier,@Billing_Add,@billing_city,@billing_state,@Billing_zip,@Billing_country,@no_Of_emp,@Annual_revenue,@ownership,@compaign,@compaign_type,@created)", CON);
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
       
    }

}