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

public partial class Ticketadd : System.Web.UI.Page
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
            proirity();
           

            if (Session["name1"] != null)
            {
                company_id = Convert.ToInt32(Session["company_id"].ToString());
                string value = "";
                value = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cd = new SqlCommand("select * from ticket_entry where Ticket_no='" + value + "' and com_id='" + company_id + "'", con);
                con.Open();
                SqlDataReader dr;
                dr = cd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox17.Text = dr["Ticket_no"].ToString();
                    TextBox5.Text = dr["Ticket"].ToString();
                    TextBox9.Text = dr["Account"].ToString();
                    TextBox10.Text = dr["contact"].ToString();
                    DropDownList12.SelectedItem.Text = dr["assign_to"].ToString();
                    DropDownList5.SelectedItem.Text = dr["status"].ToString();
                    DropDownList13.SelectedItem.Text = dr["priority"].ToString();
                    DropDownList14.SelectedItem.Text = dr["category"].ToString();
                    TextBox12.Text = dr["product"].ToString();
                    DropDownList6.SelectedItem.Text = dr["Product_type"].ToString();
                    TextBox8.Text = dr["summary"].ToString();
                    TextBox4.Text = dr["total"].ToString();
                    TextBox14.Text = dr["payment_received"].ToString();
                    TextBox16.Text = dr["payment_pending"].ToString();


                }

            }
           
           
        }

    }
    private void showCustomerType()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type where com_id='" + company_id + "' ORDER BY No asc", con);
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
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Lead_Priority where com_id='" + company_id + "' ORDER BY No asc", con);
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
        SqlCommand cmd1 = new SqlCommand("select * from ticket_entry where Ticket_no='" + value1 + "' and com_id='"+company_id+"' ", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
            DateTime date = Convert.ToDateTime(DateTime.Today);

            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("update ticket_entry set Ticket=@Ticket,Account=@Account,contact=@contact,assign_to=@assign_to,status=@status,priority=@priority,category=@category,product=@product,product_type=@Product_type,summary=@summary,total=@total,payment_received=@payment_received,payment_pending=@payment_pending,created_date=@created_date where Ticke_no='"+TextBox17.Text+"' and com_id='"+company_id+"'", con);
        
            cmd.Parameters.AddWithValue("@Ticket", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Account", TextBox9.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@assign_to", DropDownList12.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@priority", DropDownList13.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList14.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@product", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Product_type", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox18.Text);
            cmd.Parameters.AddWithValue("@total", TextBox4.Text);
            cmd.Parameters.AddWithValue("@payment_received", TextBox14.Text);
            cmd.Parameters.AddWithValue("@payment_pending", TextBox16.Text);
            cmd.Parameters.AddWithValue("@created_date", date);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Ticket updated successfully')", true);
        }
        else
        {
            DateTime date = Convert.ToDateTime(DateTime.Today);

            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("insert into ticket_entry values(@Ticket_no,@Ticket,@Account,@contact,@assign_to,@status,@priority,@category,@product,@Product_type,@summary,@total,@payment_received,@payment_pending,@created_date,@com_id)", con);
            cmd.Parameters.AddWithValue("@Ticket_no", TextBox17.Text);
            cmd.Parameters.AddWithValue("@Ticket", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Account", TextBox9.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@assign_to", DropDownList12.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@priority", DropDownList13.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList14.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@product", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Product_type", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@summary", TextBox18.Text);
            cmd.Parameters.AddWithValue("@total", TextBox4.Text);
            cmd.Parameters.AddWithValue("@payment_received", TextBox14.Text);
            cmd.Parameters.AddWithValue("@payment_pending", TextBox16.Text);
            cmd.Parameters.AddWithValue("@created_date", date);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Ticket created successfully')", true);
        }
    }
}
