#region " Using "
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;
using System.IO;
using System.Collections.Generic;
using System.Net.Mail;
using System.Net;
#endregion

public partial class Admin_Purchase_unbilled : System.Web.UI.Page
{
    float tot = 0;
    float tot1 = 0;

    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {






        if (!IsPostBack)
        {

            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from currentfinancialyear where no='1'", con1);
            SqlDataReader dr1;
            con1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                Label20.Text = dr1["financial_year"].ToString();

            }
            con1.Close();
            TextBox2.Attributes.Add("onkeypress", "return controlEnter('" + TextBox5.ClientID + "', event)");

            TextBox5.Attributes.Add("onkeypress", "return controlEnter('" + TextBox6.ClientID + "', event)");
            TextBox6.Attributes.Add("onkeypress", "return controlEnter('" + TextBox13.ClientID + "', event)");
            TextBox13.Attributes.Add("onkeypress", "return controlEnter('" + TextBox16.ClientID + "', event)");
            TextBox29.Attributes.Add("onkeypress", "return controlEnter('" + TextBox32.ClientID + "', event)");


            DateTime date = DateTime.Now;
            TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");
            getinvoiceno();
            getinvoicenosubcategory();
            getinvoiceno2();
            show_category();
            show_product();
            getinvoicenocategory();
            BindData();
            getinvoiceno1();
            show_category1();
            BindData2();


        }



        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
       


    }
    protected void Button14_Click(object sender, EventArgs e)
    {


    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedItem.Text == "All")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please Select valid category')", true);
        }
        else if (TextBox24.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Subcategory name')", true);
        }
        else
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from subcategory where subcategoryname='" + TextBox24.Text + "' and Com_Id='" + company_id + "' ", con1);
            con1.Open();
            SqlDataReader dr1;
            dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Subcategory already exist')", true);

            }
            else
            {

                if (User.Identity.IsAuthenticated)
                {
                    SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
                    SqlDataReader dr1000;
                    con1000.Open();
                    dr1000 = cmd1000.ExecuteReader();
                    if (dr1000.Read())
                    {
                        company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                    }
                    con1000.Close();
                }
                SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("insert into subcategory values(@subcategory_id,@subcategoryname,@category_id,@Com_Id,@category_name,@mrp)", CON);
                cmd.Parameters.AddWithValue("@subcategory_id", Label11.Text);
                cmd.Parameters.AddWithValue("@subcategoryname", HttpUtility.HtmlDecode(TextBox24.Text));
                cmd.Parameters.AddWithValue("@category_id", HttpUtility.HtmlDecode(DropDownList4.SelectedItem.Value));
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Parameters.AddWithValue("@category_name", DropDownList4.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@mrp", TextBox3.Text);
                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Subcategory created successfully')", true);
                BindData();
                show_category1();
                getinvoicenosubcategory();
                TextBox24.Text = "";
                this.ModalPopupExtender1.Hide();
            }
        }

    }
    private void show_category1()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from category where Com_Id='" + company_id + "' ORDER BY category_id asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);




        DropDownList4.DataSource = ds;
        DropDownList4.DataTextField = "categoryname";
        DropDownList4.DataValueField = "category_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("All", "0"));
        con.Close();
    }
    private void getinvoicenosubcategory()
    {

        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select Max(subcategory_id) from subcategory where Com_Id='" + company_id + "' ";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label11.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label11.Text = a.ToString();
            }
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        if (TextBox23.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter category name')", true);
        }
        else
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from category where categoryname='" + TextBox23.Text + "' AND Com_Id='" + company_id + "'  ", con1);
            con1.Open();
            SqlDataReader dr1;
            dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Category already exist')", true);

            }
            else
            {

                if (User.Identity.IsAuthenticated)
                {
                    SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
                    SqlDataReader dr1000;
                    con1000.Open();
                    dr1000 = cmd1000.ExecuteReader();
                    if (dr1000.Read())
                    {
                        company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                    }
                    con1000.Close();
                }
                SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("insert into category values(@category_id,@categoryname,@Com_Id)", CON);
                cmd.Parameters.AddWithValue("@category_id", Label16.Text);
                cmd.Parameters.AddWithValue("@categoryname", HttpUtility.HtmlDecode(TextBox23.Text));
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Category created successfully')", true);
                BindData();
                show_category();
                getinvoiceno();
                show_category1();

            }
            con1.Close();


        }
        TextBox23.Text = "";
        getinvoicenocategory();
        this.ModalPopupExtender2.Hide();
    }
    private void getinvoicenocategory()
    {

        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select Max(category_id) from category where Com_Id='" + company_id + "' ";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label16.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label16.Text = a.ToString();
            }
        }
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter supplier name')", true);
        }
        else if (TextBox17.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter address')", true);
        }
        else if (TextBox18.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter mobile no')", true);
        }
        else
        {
            if (User.Identity.IsAuthenticated)
            {
                SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
                SqlDataReader dr1000;
                con1000.Open();
                dr1000 = cmd1000.ExecuteReader();
                if (dr1000.Read())
                {
                    company_id = Convert.ToInt32(dr1000["com_id"].ToString());



                    SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd = new SqlCommand("insert into Vendor values(@Vendor_Code,@Vendor_Name,@Vendor_Address,@Mobile_no,@Bank_name,@Account_no,@Account_Name,@IFSC_code,@Product,@Com_Id)", CON);
                    cmd.Parameters.AddWithValue("@Vendor_Code", Label29.Text);
                    cmd.Parameters.AddWithValue("@Vendor_Name", HttpUtility.HtmlDecode(TextBox1.Text));
                    cmd.Parameters.AddWithValue("@Vendor_Address", HttpUtility.HtmlDecode(TextBox17.Text));
                    cmd.Parameters.AddWithValue("@Mobile_no", HttpUtility.HtmlDecode(TextBox18.Text));
                    cmd.Parameters.AddWithValue("@Bank_name", HttpUtility.HtmlDecode(TextBox19.Text));
                    cmd.Parameters.AddWithValue("@Account_no", HttpUtility.HtmlDecode(TextBox20.Text));
                    cmd.Parameters.AddWithValue("@Account_Name", HttpUtility.HtmlDecode(TextBox21.Text));
                    cmd.Parameters.AddWithValue("@IFSC_code", HttpUtility.HtmlDecode(TextBox22.Text));
                    cmd.Parameters.AddWithValue("@Product", HttpUtility.HtmlDecode(DropDownList1.SelectedItem.Text));
                    cmd.Parameters.AddWithValue("@Com_Id", company_id);

                    CON.Open();
                    cmd.ExecuteNonQuery();
                    CON.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Supplier Added successfully')", true);
                    BindData();
                    show_category();
                    getinvoiceno();
                    TextBox1.Text = "";
                    TextBox17.Text = "";
                    TextBox18.Text = "";
                    TextBox19.Text = "";
                    TextBox20.Text = "";
                    TextBox21.Text = "";
                    TextBox22.Text = "";
                    show_product();
                    show_category();
                    getinvoiceno2();
                    this.ModalPopupExtender3.Hide();
                }
                con1000.Close();
            }
        }
    }


    protected void BindData()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' order by RowNumber asc", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }



    //A method that returns a string which calls the connection string from the web.config
    private string GetConnectionString()
    {
        //"DBConnection" is the name of the Connection String
        //that was set up from the web.config file
        return System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
    }

    //A method that Inserts the records to the database

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = @"Data Source=BESTSHOPPEE1-PC\SQLEXPRESS;Initial Catalog=Dream;User ID=sa;Password=vertex123";

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct product_name from product_entry where Com_Id=@Com_Id and " +
                "product_name like @product_name + '%'";
                cmd.Parameters.AddWithValue("@product_name", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["product_name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    protected void Gridview1_RowCreated(object sender, GridViewRowEventArgs e)
    {



    }
    protected void Gridview1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {






    }
    protected void Gridview1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {






    }
    protected void Gridview1_SelectedIndexChanged(object sender, System.EventArgs e)
    {


    }
    protected void Gridview1_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
    {

    }


    protected void Gridview1_Load(object sender, System.EventArgs e)
    {

    }

    private void getinvoiceno()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }

            int a;

            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con1.Open();
            string query = "Select max(convert(int,SubString(purchase_invoice,PATINDEX('%[0-9]%',purchase_invoice),Len(purchase_invoice)))) from purchase_unbilled_entry where Com_Id='" + company_id + "' and year='" + Label20.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query, con1);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                string val = dr[0].ToString();
                if (val == "")
                {
                    Label1.Text = "1";
                }
                else
                {
                    a = Convert.ToInt32(dr[0].ToString());
                    a = a + 1;
                    Label1.Text = a.ToString();
                }
            }
            con1.Close();
            con1000.Close();
        }

    }
    private void getinvoiceno1()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }

        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select max(convert(int,SubString(RowNumber,PATINDEX('%[0-9]%',RowNumber),Len(RowNumber)))) from purchase_unbilled_entry_details where Com_Id='" + company_id + "' and purchase_invoice='" + Label1.Text + "' and year='" + Label20.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label2.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label2.Text = a.ToString();
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedItem.Text == "All")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please Select valid supplier')", true);
        }
        else if (TextBox4.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please add products')", true);
        }
        else if (TextBox7.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please give paid amount')", true);
        }
        else
        {


            if (User.Identity.IsAuthenticated)
            {
                SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
                SqlDataReader dr1000;
                con1000.Open();
                dr1000 = cmd1000.ExecuteReader();
                if (dr1000.Read())
                {
                    company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd1 = new SqlCommand("select * from purchase_unbilled_entry where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con1);
                    con1.Open();
                    SqlDataReader dr1;
                    dr1 = cmd1.ExecuteReader();
                    if (dr1.HasRows)
                    {

                        string status = "UnBilled Purchase";
                        float value = 0;
                        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd = new SqlCommand("update purchase_unbilled_entry set date=@date,Supplier=@Supplier,address=@address,mobile_no=@mobile_no,Toal_qty=@Toal_qty,total_amount=@total_amount,Grand__total=@Grand__total,Com_Id=@Com_Id,paid_amount=@paid_amount,pending_amount=@pending_amount,status=@status,value=@value where purchase_invoice=@purchase_invoice and year='" + Label20.Text + "'", CON);
                        cmd.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
                        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                        cmd.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@address", TextBox12.Text);
                        cmd.Parameters.AddWithValue("@mobile_no", TextBox14.Text);
                        cmd.Parameters.AddWithValue("@Toal_qty", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@total_amount", float.Parse(TextBox10.Text));
                        cmd.Parameters.AddWithValue("@Grand__total", float.Parse(TextBox11.Text));
                        cmd.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd.Parameters.AddWithValue("@paid_amount", float.Parse(TextBox7.Text));
                        cmd.Parameters.AddWithValue("@pending_amount", float.Parse(TextBox9.Text));
                        cmd.Parameters.AddWithValue("@status", status);
                        cmd.Parameters.AddWithValue("@value", value);
                        CON.Open();
                        cmd.ExecuteNonQuery();
                        CON.Close();

                        float b11 = 0;
                        float f11 = 0;
                        float c11 = 0;

                        SqlConnection con100 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                        SqlCommand check_User_Name100 = new SqlCommand("SELECT * FROM unpay_amount_status WHERE Buyer = @Buyer and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con100);
                        check_User_Name100.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
                        con100.Open();
                        SqlDataReader reader100 = check_User_Name100.ExecuteReader();
                        if (reader100.HasRows)
                        {
                            SqlConnection con11 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                            SqlCommand cmd11 = new SqlCommand("Select * from unpay_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and invoice_no='" + Label1.Text + "'  and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con11);
                            con11.Open();
                            SqlDataReader dr11;
                            dr11 = cmd11.ExecuteReader();
                            if (dr11.Read())
                            {

                                b11 = float.Parse(dr11["pending_amount"].ToString());






                                SqlConnection con27 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cd27 = new SqlCommand("update unpay_amount_status set pending_amount=pending_amount-@pending_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con27);
                                cd27.Parameters.AddWithValue("@pending_amount", b11);
                                con27.Open();
                                cd27.ExecuteNonQuery();
                                con27.Close();

                                SqlConnection con272 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cd272 = new SqlCommand("update unpay_amount set pending_amount=pending_amount-@pending_amount,outstanding=outstanding-@outstanding where Buyer='" + DropDownList3.SelectedItem.Text + "' and  invoice_no='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con272);
                                cd272.Parameters.AddWithValue("@pending_amount", b11);
                                cd272.Parameters.AddWithValue("@outstanding", b11);
                                con272.Open();
                                cd272.ExecuteNonQuery();
                                con272.Close();

                                SqlConnection con271 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cd271 = new SqlCommand("update unpay_amount_status set pending_amount=pending_amount+@pending_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con271);
                                cd271.Parameters.AddWithValue("@pending_amount", float.Parse(TextBox9.Text));
                                con271.Open();
                                cd271.ExecuteNonQuery();
                                con271.Close();



                                string status1 = "UnBill";

                                SqlConnection con26 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cmd26 = new SqlCommand("update unpay_amount set Estimate_value=@Estimate_value,address=@address,total_amount=@total_amount,pay_amount=@pay_amount,pending_amount=@pending_amount,outstanding=outstanding+@outstanding,status=@status where Buyer='" + DropDownList3.SelectedItem.Text + "' AND invoice_no='" + Label1.Text + "' and year='" + Label20.Text + "'", con26);


                                cmd26.Parameters.AddWithValue("@Estimate_value", float.Parse(TextBox11.Text));
                                cmd26.Parameters.AddWithValue("@address", TextBox12.Text);

                                cmd26.Parameters.AddWithValue("@total_amount", float.Parse(TextBox11.Text));
                                cmd26.Parameters.AddWithValue("@pay_amount", float.Parse(TextBox7.Text));
                                cmd26.Parameters.AddWithValue("@pending_amount", float.Parse(TextBox9.Text));
                                cmd26.Parameters.AddWithValue("@outstanding", float.Parse(TextBox9.Text));

                                cmd26.Parameters.AddWithValue("@status", status1);

                                con26.Open();
                                cmd26.ExecuteNonQuery();
                                con26.Close();



                            }
                            con11.Close();
                        }

                        con100.Close();

                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Purchase entry updated successfully')", true);

                        show_category();
                        getinvoiceno();
                        TextBox10.Text = "";
                        TextBox11.Text = "";
                        TextBox7.Text = "";
                        TextBox9.Text = "";
                        TextBox12.Text = "";
                        BindData();
                        getinvoiceno1();
                        DateTime date = DateTime.Now;
                        TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");
                        TextBox14.Text = "";
                        TextBox4.Text = "";
                        show_tax();
                        BindData2();

                    }
                    else
                    {




                        string status = "Unbilled Purchase";
                        float value = 0;
                        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd = new SqlCommand("insert into purchase_unbilled_entry values(@purchase_invoice,@date,@Supplier,@address,@mobile_no,@Toal_qty,@total_amount,@Grand__total,@Com_Id,@paid_amount,@pending_amount,@status,@value,@year)", CON);
                        cmd.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
                        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                        cmd.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@address", TextBox12.Text);
                        cmd.Parameters.AddWithValue("@mobile_no", TextBox14.Text);
                        cmd.Parameters.AddWithValue("@Toal_qty", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@total_amount", float.Parse(TextBox10.Text));
                        cmd.Parameters.AddWithValue("@Grand__total", float.Parse(TextBox11.Text));
                        cmd.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd.Parameters.AddWithValue("@paid_amount", float.Parse(TextBox7.Text));
                        cmd.Parameters.AddWithValue("@pending_amount", float.Parse(TextBox9.Text));
                        cmd.Parameters.AddWithValue("@status", status);
                        cmd.Parameters.AddWithValue("@value", value);
                        cmd.Parameters.AddWithValue("@year", Label20.Text);
                        CON.Open();
                        cmd.ExecuteNonQuery();
                        CON.Close();


                        int a111 = 0;
                        float b11 = 0;
                        float f11 = 0;
                        float c11 = 0;
                        SqlConnection con100 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                        SqlCommand cmd100 = new SqlCommand("SELECT * FROM unpay_amount_status WHERE Buyer = @Buyer and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con100);
                        cmd100.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
                        con100.Open();
                        SqlDataReader reader1 = cmd100.ExecuteReader();
                        if (reader1.HasRows)
                        {
                            SqlConnection con11 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                            SqlCommand cmd11 = new SqlCommand("Select * from unpay_amount_status where Buyer='" + DropDownList3.SelectedItem.Text + "' and  Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con11);
                            con11.Open();
                            SqlDataReader dr11;
                            dr11 = cmd11.ExecuteReader();
                            if (dr11.Read())
                            {

                                b11 = float.Parse(dr11["pending_amount"].ToString());


                                f11 = float.Parse(TextBox9.Text);

                                c11 = (b11 + f11);





                                string status1 = "UnBill";
                                SqlConnection con24 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cmd24 = new SqlCommand("insert into unpay_amount values(@Buyer,@Pay_date,@Estimate_value,@address,@total_amount,@pay_amount,@pending_amount,@outstanding,@invoice_no,@Com_Id,@status,@year)", con24);
                                cmd24.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
                                cmd24.Parameters.AddWithValue("@pay_date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                                cmd24.Parameters.AddWithValue("@Estimate_value", float.Parse(TextBox11.Text));
                                cmd24.Parameters.AddWithValue("@address", TextBox12.Text);

                                cmd24.Parameters.AddWithValue("@total_amount", float.Parse(string.Format("{0:0.00}", TextBox11.Text)));
                                cmd24.Parameters.AddWithValue("@pay_amount", float.Parse(TextBox7.Text));
                                cmd24.Parameters.AddWithValue("@pending_amount", float.Parse(string.Format("{0:0.00}", TextBox9.Text)));
                                cmd24.Parameters.AddWithValue("@outstanding", float.Parse(string.Format("{0:0.00}", c11)));

                                cmd24.Parameters.AddWithValue("@invoice_no", Label1.Text);
                                cmd24.Parameters.AddWithValue("@Com_Id", company_id);
                                cmd24.Parameters.AddWithValue("@status", status1);
                                cmd24.Parameters.AddWithValue("@year", Label20.Text);
                                con24.Open();
                                cmd24.ExecuteNonQuery();
                                con24.Close();


                                SqlConnection con23 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                                SqlCommand cmd23 = new SqlCommand("update unpay_amount_status set address=@address,total_amount=total_amount+@total_amount,pending_amount=pending_amount+@pending_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con23);

                                cmd23.Parameters.AddWithValue("@address", TextBox12.Text);

                                cmd23.Parameters.AddWithValue("@total_amount", float.Parse(string.Format("{0:0.00}", TextBox11.Text)));

                                cmd23.Parameters.AddWithValue("@pending_amount", float.Parse(string.Format("{0:0.00}", TextBox9.Text)));

                                con23.Open();
                                cmd23.ExecuteNonQuery();
                                con23.Close();


                            }

                            con11.Close();






                        }
                        else
                        {

                            string status1 = "UnBill";
                            SqlConnection con23 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                            SqlCommand cmd23 = new SqlCommand("insert into unpay_amount_status values(@Buyer,@address,@total_amount,@pending_amount,@paid_amount,@Com_Id,@year)", con23);
                            cmd23.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
                            cmd23.Parameters.AddWithValue("@address", TextBox12.Text);

                            cmd23.Parameters.AddWithValue("@total_amount", float.Parse(string.Format("{0:0.00}", TextBox11.Text)));

                            cmd23.Parameters.AddWithValue("@pending_amount", float.Parse(string.Format("{0:0.00}", TextBox9.Text)));
                            cmd23.Parameters.AddWithValue("@paid_amount", float.Parse(TextBox7.Text));
                            cmd23.Parameters.AddWithValue("@Com_Id", company_id);
                            cmd23.Parameters.AddWithValue("@year", Label20.Text);
                            con23.Open();
                            cmd23.ExecuteNonQuery();
                            con23.Close();
                            string return_by = "";
                            int value1 = 0;
                            SqlConnection con24 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                            SqlCommand cmd24 = new SqlCommand("insert into unpay_amount values(@Buyer,@Pay_date,@Estimate_value,@address,@total_amount,@pay_amount,@pending_amount,@outstanding,@invoice_no,@Com_Id,@status,@year)", con24);
                            cmd24.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
                            cmd24.Parameters.AddWithValue("@pay_date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                            cmd24.Parameters.AddWithValue("@Estimate_value", float.Parse(TextBox11.Text));
                            cmd24.Parameters.AddWithValue("@address", TextBox12.Text);

                            cmd24.Parameters.AddWithValue("@total_amount", float.Parse(string.Format("{0:0.00}", TextBox11.Text)));
                            cmd24.Parameters.AddWithValue("@pay_amount", float.Parse(TextBox7.Text));
                            cmd24.Parameters.AddWithValue("@pending_amount", float.Parse(string.Format("{0:0.00}", TextBox9.Text)));
                            cmd24.Parameters.AddWithValue("@outstanding", float.Parse(string.Format("{0:0.00}", TextBox9.Text)));
                            cmd24.Parameters.AddWithValue("@invoice_no", Label1.Text);
                            cmd24.Parameters.AddWithValue("@Com_Id", company_id);
                            cmd24.Parameters.AddWithValue("@status", status1);
                            cmd24.Parameters.AddWithValue("@year", Label20.Text);
                            con24.Open();
                            cmd24.ExecuteNonQuery();
                            con24.Close();


                        }
                        con100.Close();






                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Purchase entry created successfully')", true);

                        show_category();
                        getinvoiceno();
                        TextBox10.Text = "";
                        TextBox11.Text = "";
                        TextBox7.Text = "";
                        TextBox9.Text = "";
                        TextBox12.Text = "";
                        BindData();
                        getinvoiceno1();
                        DateTime date = DateTime.Now;
                        TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");
                        TextBox14.Text = "";
                        TextBox4.Text = "";
                        BindData2();
                        show_tax();
                    }
                }
                con1000.Close();



            }
        }

    }
    private void SaveDetail(GridViewRow row)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {


        show_category();
        getinvoiceno();
        getinvoiceno1();

        TextBox10.Text = "";
        TextBox11.Text = "";

        DateTime date = DateTime.Now;
        TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");

        TextBox4.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox12.Text = "";
        show_tax();
        BindData();
        BindData2();
        TextBox14.Text = "";
    }
    private void active()
    {

    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;


        LinkButton Lnk = (LinkButton)sender;
        string name = Lnk.Text;
        Session["name"] = name;
        Response.Redirect("Account_show.aspx");


    }

    private void created()
    {

    }




    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }

        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("delete from product_entry where code='" + row.Cells[1].Text + "' and Com_Id='" + company_id + "' ", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Product entry deleted successfully')", true);

        BindData();
        show_category();



    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers1(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select subcategoryname from subcategory where Com_Id=@Com_Id and " +
                "subcategoryname like @subcategoryname + '%'";
                cmd.Parameters.AddWithValue("@subcategoryname", prefixText);
                cmd.Parameters.AddWithValue("@Com_id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["subcategoryname"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    private void show_tax()
    {

    }
    private void show_category()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Vendor where  Com_Id='" + company_id + "' ORDER BY Vendor_Code asc", con1);
        con1.Open();
        DataSet ds11 = new DataSet();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(ds11);


        DropDownList3.DataSource = ds11;
        DropDownList3.DataTextField = "Vendor_Name";
        DropDownList3.DataValueField = "Vendor_Code";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));



        con1.Close();
    }

    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        this.ModalPopupExtender2.Show();
    }

    private void showcustomertype()
    {

    }
    private void showrating()
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }




    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        this.ModalPopupExtender1.Show();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {


    }




    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {



    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }


        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("select * from Vendor where Vendor_Name='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "'", con);
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox12.Text = dr["Vendor_Address"].ToString();
            TextBox14.Text = dr["Mobile_no"].ToString();
        }
        con.Close();

    }
    protected void TextBox16_TextChanged(object sender, System.EventArgs e)
    {


    }


    protected void TextBox19_TextChanged(object sender, System.EventArgs e)
    {



    }




    protected void TextBox7_TextChanged(object sender, System.EventArgs e)
    {

        try
        {

            float value1 = float.Parse(TextBox11.Text);
            float value2 = float.Parse(TextBox7.Text);
            float total = value1 - value2;
            TextBox9.Text = total.ToString();
        }
        catch (Exception er)
        { }
    }

    protected void TextBox3_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, System.EventArgs e)
    {

    }

    protected void TextBox13_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float a = float.Parse(TextBox6.Text);
            float b = float.Parse(TextBox13.Text);
            TextBox16.Text = Convert.ToDecimal(a * b).ToString("#,##0.00");
            /*TextBox16.Focus();*/
            /*TextBox16.Text = string.Format("{0:0.00}", (total)).ToString();*/
            Button3.Focus();
        }
        catch (Exception we)
        { }
    }

    protected void TextBox29_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float a = float.Parse(TextBox28.Text);
            float b = float.Parse(TextBox29.Text);
            TextBox32.Text = (a * b).ToString();
            this.ModalPopupExtender5.Show();
        }
        catch (Exception we)
        { }
    }
    protected void TextBox14_TextChanged(object sender, System.EventArgs e)
    {
        try
        {
            Int64 temp = Convert.ToInt64(TextBox14.Text);
        }
        catch (Exception h)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please provide number only')", true);

            TextBox14.Text = "";
        }
        try
        {

            float total = float.Parse(TextBox16.Text);
            /*TextBox15.Text = string.Format("{0:0.00}", (total * tax / 100).ToString();
            float A = float.Parse(TextBox15.Text);*/
            TextBox16.Text = string.Format("{0:0.00}", (total)).ToString();
            Button3.Focus();

           


        }
        catch (Exception er)
        { }
    }
    protected void TextBox30_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            /*float tax = float.Parse(TextBox30.Text);*/
            float total = float.Parse(TextBox32.Text);
            /*TextBox31.Text = string.Format("{0:0.00}", (total)).ToString();
            float A = float.Parse(TextBox31.Text);*/
            TextBox32.Text = string.Format("{0:0.00}", (total)).ToString();
            this.ModalPopupExtender5.Show();
        }
        catch (Exception er)
        { }

    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        if (DropDownList3.SelectedItem.Text == "All")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please Select Supplier')", true);
        }
        else
        {

            if (User.Identity.IsAuthenticated)
            {
                SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
                SqlDataReader dr1000;
                con1000.Open();
                dr1000 = cmd1000.ExecuteReader();
                if (dr1000.Read())
                {
                    company_id = Convert.ToInt32(dr1000["com_id"].ToString());


                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                    con.Open();

                    SqlCommand cmd2 = new SqlCommand("select * from subcategory where subcategoryname='" + TextBox2.Text + "' and Com_Id='" + company_id + "' ", con);
                    SqlDataReader dr1;
                    dr1 = cmd2.ExecuteReader();
                    if (dr1.Read())
                    {

                        string cat_id = dr1["category_name"].ToString();

                        string product_code = dr1["subcategory_id"].ToString();

                        SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd1 = new SqlCommand("insert into purchase_unbilled_entry_details values(@Category,@purchase_invoice,@Product_code,@Product_name,@mrp,@Purchase_price,@qty,@total_amount,@Com_Id,@date,@Supplier,@RowNumber,@year)", CON1);
                        cmd1.Parameters.AddWithValue("@Category", cat_id);

                        cmd1.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
                        cmd1.Parameters.AddWithValue("@Product_code", product_code);
                        cmd1.Parameters.AddWithValue("@Product_name", TextBox2.Text);


                        cmd1.Parameters.AddWithValue("@mrp", TextBox5.Text);
                        cmd1.Parameters.AddWithValue("@Purchase_price", TextBox6.Text);


                        cmd1.Parameters.AddWithValue("@qty", TextBox13.Text);
                        cmd1.Parameters.AddWithValue("@total_amount", float.Parse(TextBox16.Text));
                        cmd1.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd1.Parameters.AddWithValue("@date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                        cmd1.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
                        cmd1.Parameters.AddWithValue("@RowNumber", Label2.Text);
                        cmd1.Parameters.AddWithValue("@year", Label20.Text);
                        CON1.Open();
                        cmd1.ExecuteNonQuery();
                        CON1.Close();



                        SqlConnection con100 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                        con100.Open();

                        SqlCommand cmd100 = new SqlCommand("select * from product_stock where Product_name='" + TextBox2.Text + "' and Com_Id='" + company_id + "' ", con100);
                        SqlDataReader dr100;
                        dr100 = cmd100.ExecuteReader();
                        if (dr100.HasRows)
                        {
                            SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                            SqlCommand cmd11 = new SqlCommand("update product_stock set Category=@Category,Product_code=@Product_code,qty=qty+@qty where Product_name=@Product_name and Com_id='" + company_id + "' and year='" + Label20.Text + "'", CON11);
                            cmd11.Parameters.AddWithValue("@Category", cat_id);
                            cmd11.Parameters.AddWithValue("@Product_code", product_code);
                            cmd11.Parameters.AddWithValue("@Product_name", TextBox2.Text);
                            cmd11.Parameters.AddWithValue("@qty", TextBox13.Text);




                            CON11.Open();
                            cmd11.ExecuteNonQuery();
                            CON11.Close();
                        }
                        else
                        {


                            SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                            SqlCommand cmd11 = new SqlCommand("insert into product_stock values(@Category,@Product_code,@Product_name,@qty,@Com_Id,@year)", CON11);
                            cmd11.Parameters.AddWithValue("@Category", cat_id);

                            cmd11.Parameters.AddWithValue("@Product_code", product_code);
                            cmd11.Parameters.AddWithValue("@Product_name", TextBox2.Text);
                            cmd11.Parameters.AddWithValue("@qty", TextBox13.Text);
                            cmd11.Parameters.AddWithValue("@Com_Id", company_id);
                            cmd11.Parameters.AddWithValue("@year", Label20.Text);


                            CON11.Open();
                            cmd11.ExecuteNonQuery();
                            CON11.Close();
                        }
                        con100.Close();


                        BindData();
                        getinvoiceno1();
                        TextBox2.Text = "";

                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox13.Text = "";
                        TextBox16.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product not valid')", true);
                    }
                    con.Close();




                }
                con1000.Close();
            }
        }
    }

    protected void Button22_Click(object sender, System.EventArgs e)
    {


        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                con.Open();

                SqlCommand cmd2 = new SqlCommand("select * from subcategory where subcategoryname='" + TextBox33.Text + "' and Com_Id='" + company_id + "' ", con);
                SqlDataReader dr1;
                dr1 = cmd2.ExecuteReader();
                if (dr1.Read())
                {

                    int cat_id = Convert.ToInt32(dr1["category_id"].ToString());

                    string product_code = dr1["subcategory_id"].ToString();



                    SqlConnection con100 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    con100.Open();
                    SqlCommand cmd100 = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label38.Text + "' and RowNumber='" + Label41.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con100);
                    SqlDataReader dr100;
                    dr100 = cmd100.ExecuteReader();
                    if (dr100.Read())
                    {

                        int qty = Convert.ToInt32(dr100["qty"].ToString());

                        SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd11 = new SqlCommand("update product_stock set Category=@Category,Product_code=@Product_code,qty=qty-@qty,Com_Id=@Com_Id where Product_name=@Product_name and Com_id='" + company_id + "' and year='" + Label20.Text + "'", CON11);
                        cmd11.Parameters.AddWithValue("@Category", cat_id);
                        cmd11.Parameters.AddWithValue("@Product_code", product_code);
                        cmd11.Parameters.AddWithValue("@Product_name", TextBox33.Text);
                        cmd11.Parameters.AddWithValue("@qty", qty);




                        CON11.Open();
                        cmd11.ExecuteNonQuery();
                        CON11.Close();

                    }



                    SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd1 = new SqlCommand("update purchase_unbilled_entry_details set Category=@Category,Product_code=@Product_code,Product_name=@Product_name,mrp=@mrp,Purchase_price=@Purchase_price,qty=@qty,total_amount=@total_amount,Com_Id=@Com_Id,date=@date,Supplier=@Supplier where purchase_invoice='" + Label38.Text + "' and RowNumber='" + Label41.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", CON1);
                    cmd1.Parameters.AddWithValue("@Category", cat_id);


                    cmd1.Parameters.AddWithValue("@Product_code", product_code);
                    cmd1.Parameters.AddWithValue("@Product_name", TextBox33.Text);


                    cmd1.Parameters.AddWithValue("@mrp", TextBox27.Text);
                    cmd1.Parameters.AddWithValue("@Purchase_price", TextBox28.Text);


                    cmd1.Parameters.AddWithValue("@qty", TextBox29.Text);
                    cmd1.Parameters.AddWithValue("@total_amount", TextBox32.Text);
                    cmd1.Parameters.AddWithValue("@Com_Id", company_id);
                    cmd1.Parameters.AddWithValue("@date", Convert.ToDateTime(TextBox8.Text).ToString("dd-MM-yyyy"));
                    cmd1.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);

                    CON1.Open();
                    cmd1.ExecuteNonQuery();
                    CON1.Close();


                    SqlConnection CON111 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd111 = new SqlCommand("update product_stock set Category=@Category,Product_code=@Product_code,qty=qty+@qty,Com_Id=@Com_Id where Product_name=@Product_name and year='" + Label20.Text + "'", CON111);
                    cmd111.Parameters.AddWithValue("@Category", cat_id);
                    cmd111.Parameters.AddWithValue("@Product_code", product_code);
                    cmd111.Parameters.AddWithValue("@Product_name", TextBox33.Text);
                    cmd111.Parameters.AddWithValue("@qty", TextBox29.Text);
                    cmd111.Parameters.AddWithValue("@Com_Id", company_id);



                    CON111.Open();
                    cmd111.ExecuteNonQuery();
                    CON111.Close();




                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product updated successfully')", true);

                    BindData();
                    getinvoiceno1();
                    TextBox33.Text = "";

                    TextBox27.Text = "";
                    TextBox28.Text = "";
                    TextBox29.Text = "";
                    TextBox32.Text = "";
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product not valid')", true);
                }
                con.Close();


            }
            con1000.Close();
        }



    }
    protected void TextBox2_TextChanged(object sender, System.EventArgs e)
    {
        TextBox5.Focus();
    }
    protected void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        ImageButton img = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)img.NamingContainer;
        int s_no = Convert.ToInt32(ROW.Cells[0].Text);
        string pro_name = ROW.Cells[1].Text;
        int qty1 = Convert.ToInt32(ROW.Cells[4].Text);
        SqlConnection con100 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con100.Open();
        SqlCommand cmd100 = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label1.Text + "' and RowNumber='" + s_no + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con100);
        SqlDataReader dr100;
        dr100 = cmd100.ExecuteReader();
        if (dr100.Read())
        {

            int qty = Convert.ToInt32(dr100["qty"].ToString());

            SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd11 = new SqlCommand("update product_stock set qty=qty-@qty where Product_name=@Product_name and Com_id='" + company_id + "' and year='" + Label20.Text + "'", CON11);

            cmd11.Parameters.AddWithValue("@Product_name", pro_name);
            cmd11.Parameters.AddWithValue("@qty", qty1);




            CON11.Open();
            cmd11.ExecuteNonQuery();
            CON11.Close();

        }
        con100.Close();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from purchase_unbilled_entry_details where RowNumber='" + s_no + "' and purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con1);
        cmd1.ExecuteNonQuery();
        con1.Close();



        BindData();
        getinvoiceno1();

    }

    protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot = tot + float.Parse(e.Row.Cells[4].Text);

        }
        TextBox4.Text = Convert.ToDecimal(tot).ToString("#,##0.00");

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot1 = tot1 + float.Parse(e.Row.Cells[5].Text);

        }
        TextBox10.Text = Convert.ToDecimal(tot1).ToString("#,##0.00");
        TextBox11.Text = Convert.ToDecimal(tot1).ToString("#,##0.00");
    }
    protected void Button5_Click(object sender, System.EventArgs e)
    {
        clear();

    }

    private void clear()
    {
        TextBox2.Text = "";

        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox13.Text = "";
        TextBox16.Text = "";
    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        this.ModalPopupExtender3.Show();
    }
    private void getinvoiceno2()
    {
        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select max(convert(int,SubString(Vendor_Code,PATINDEX('%[0-9]%',Vendor_Code),Len(Vendor_Code)))) from Vendor where Com_Id='" + company_id + "'";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                Label29.Text = "1";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a = a + 1;
                Label29.Text = a.ToString();
            }
        }
    }
    private void show_product()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

            }
            con1000.Close();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from subcategory where Com_Id='" + company_id + "' ORDER BY subcategory_id asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "subcategoryname";
        DropDownList1.DataValueField = "subcategory_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("All", "0"));





        con.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;
        Label38.Text = Label1.Text;
        Label41.Text = row.Cells[0].Text;
        TextBox33.Text = row.Cells[1].Text;

        TextBox27.Text = row.Cells[2].Text;
        TextBox28.Text = row.Cells[3].Text;
        TextBox29.Text = row.Cells[4].Text;
        TextBox32.Text = row.Cells[5].Text;
        this.ModalPopupExtender5.Show();
    }




    protected void Button20_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                if (Convert.ToInt32(Label1.Text) > Convert.ToInt32(1))
                {
                    Label1.Text = (Convert.ToInt32(Label1.Text) - 1).ToString();
                }

                SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd2 = new SqlCommand("select * from purchase_unbilled_entry where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con2);
                SqlDataReader dr2;
                con2.Open();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {

                    TextBox8.Text = Convert.ToDateTime(dr2["date"]).ToString("MM-dd-yyyy");

                    DropDownList3.SelectedItem.Text = dr2["supplier"].ToString();
                    TextBox12.Text = dr2["address"].ToString();
                    TextBox14.Text = dr2["mobile_no"].ToString();
                    TextBox4.Text = dr2["Toal_qty"].ToString();
                    TextBox10.Text = Convert.ToDecimal(dr2["total_amount"]).ToString("#,##0.00");

                    TextBox11.Text = Convert.ToDecimal(dr2["Grand__total"]).ToString("#,##0.00");
                    TextBox7.Text = Convert.ToDecimal(dr2["paid_amount"]).ToString("#,##0.00");
                    TextBox9.Text = Convert.ToDecimal(dr2["pending_amount"]).ToString("#,##0.00");

                }
                con2.Close();


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ORDER BY RowNumber asc", con);
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                da1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                getinvoiceno1();
            }
            con1000.Close();
        }
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        show_category();
        getinvoiceno();
        getinvoiceno1();

        TextBox10.Text = "";
        TextBox11.Text = "";

        DateTime date = DateTime.Now;
        TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");

        TextBox4.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox12.Text = "";
        TextBox14.Text = "";
        show_tax();
        BindData();
        BindData2();
    }
    protected void Button24_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                SqlConnection con21 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd21 = new SqlCommand("select max(purchase_invoice) from purchase_unbilled_entry where  Com_Id='" + company_id + "' and year='" + Label20.Text + "' ", con21);
                SqlDataReader dr21;
                con21.Open();
                dr21 = cmd21.ExecuteReader();
                if (dr21.Read())
                {
                    int value = Convert.ToInt32(dr21[0].ToString());
                    if (Convert.ToInt32(Label1.Text) < Convert.ToInt32(value + 1))
                    {
                        Label1.Text = (Convert.ToInt32(Label1.Text) + 1).ToString();
                    }
                }
                con21.Close();
                SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd2 = new SqlCommand("select * from purchase_unbilled_entry where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "'", con2);
                SqlDataReader dr2;
                con2.Open();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {



                    TextBox8.Text = Convert.ToDateTime(dr2["date"]).ToString("MM-dd-yyyy");

                    DropDownList3.SelectedItem.Text = dr2["supplier"].ToString();
                    TextBox12.Text = dr2["address"].ToString();
                    TextBox14.Text = dr2["mobile_no"].ToString();

                    TextBox4.Text = dr2["Toal_qty"].ToString();
                    TextBox10.Text = Convert.ToDecimal(dr2["total_amount"]).ToString("#,##0.00");

                    TextBox11.Text = Convert.ToDecimal(dr2["Grand__total"]).ToString("#,##0.00");
                    TextBox7.Text = Convert.ToDecimal(dr2["paid_amount"]).ToString("#,##0.00");
                    TextBox9.Text = Convert.ToDecimal(dr2["pending_amount"]).ToString("#,##0.00");


                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand CMD = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ORDER BY RowNumber asc", con);
                    DataTable dt1 = new DataTable();
                    SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                    da1.Fill(dt1);
                    GridView1.DataSource = dt1;
                    GridView1.DataBind();
                    getinvoiceno1();
                }
                else
                {

                    show_category();
                    getinvoiceno();
                    getinvoiceno1();

                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox14.Text = "";
                    DateTime date = DateTime.Now;
                    TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");

                    TextBox4.Text = "";
                    TextBox7.Text = "";
                    TextBox9.Text = "";
                    TextBox12.Text = "";
                    show_tax();
                    BindData();


                }
                con2.Close();
            }
            con1000.Close();
        }
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        this.ModalPopupExtender4.Show();
    }
    protected void BindData2()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from purchase_unbilled_entry where Com_Id='" + company_id + "' ORDER BY  purchase_invoice asc", con);
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                da1.Fill(dt1);
                GridView3.DataSource = dt1;
                GridView3.DataBind();
            }
            con1000.Close();
        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where company_name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                ImageButton img = (ImageButton)sender;
                GridViewRow row = (GridViewRow)img.NamingContainer;




                SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd2 = new SqlCommand("select * from purchase_unbilled_entry where purchase_invoice='" + row.Cells[0].Text + "' and Com_Id='" + company_id + "'", con2);
                SqlDataReader dr2;
                con2.Open();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    Label1.Text = dr2["purchase_invoice"].ToString();
                    TextBox8.Text = Convert.ToDateTime(dr2["date"]).ToString("dd-MM-yyyy");

                    DropDownList3.SelectedItem.Text = dr2["supplier"].ToString();
                    TextBox12.Text = dr2["address"].ToString();
                    TextBox14.Text = dr2["mobile_no"].ToString();
                    TextBox4.Text = dr2["Toal_qty"].ToString();
                    TextBox10.Text = Convert.ToDecimal(dr2["total_amount"]).ToString("#,##0.00");

                    TextBox11.Text = Convert.ToDecimal(dr2["Grand__total"]).ToString("#,##0.00");
                    TextBox7.Text = Convert.ToDecimal(dr2["paid_amount"]).ToString("#,##0.00");
                    TextBox9.Text = Convert.ToDecimal(dr2["pending_amount"]).ToString("#,##0.00");

                }
                con2.Close();


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from purchase_unbilled_entry_details where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' and year='" + Label20.Text + "' ORDER BY RowNumber asc", con);
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                da1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                getinvoiceno1();

            }
            con1000.Close();
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (!System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text, "^[a-zA-Z]"))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please Provide valide Supplier Name')", true);

            TextBox1.Text.Remove(TextBox1.Text.Length - 1);
            TextBox1.Text = "";

        }
        this.ModalPopupExtender3.Show();
    }
    protected void TextBox18_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Int64 temp = Convert.ToInt64(TextBox18.Text);
        }
        catch (Exception h)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please provide number only')", true);

            TextBox18.Text = "";
        }
        this.ModalPopupExtender3.Show();
    }
}