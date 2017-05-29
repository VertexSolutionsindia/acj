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
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;

using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
#endregion


public partial class Admin_Purchase_edit : System.Web.UI.Page
{
    float tot = 0;
    float tot1 = 0;
    DataTable dt = null;
    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            TextBox2.Attributes.Add("onkeypress", "return controlEnter('" + TextBox3.ClientID + "', event)");
            TextBox3.Attributes.Add("onkeypress", "return controlEnter('" + TextBox5.ClientID + "', event)");
            TextBox5.Attributes.Add("onkeypress", "return controlEnter('" + TextBox6.ClientID + "', event)");
            TextBox6.Attributes.Add("onkeypress", "return controlEnter('" + TextBox13.ClientID + "', event)");
            TextBox13.Attributes.Add("onkeypress", "return controlEnter('" + TextBox14.ClientID + "', event)");
            TextBox14.Attributes.Add("onkeypress", "return controlEnter('" + TextBox15.ClientID + "', event)");
            TextBox15.Attributes.Add("onkeypress", "return controlEnter('" + TextBox16.ClientID + "', event)");
            getinvoiceno1();
           
            DateTime date = DateTime.Now;
            TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");
            getinvoiceno();
          
            show_category();
            showrating();

            show_tax();
            active();
            created();
            show_supplier();


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


            string name = Session["purchase_invoice"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("select * from purchase_entry where purchase_invoice='" + name + "' and Com_Id='" + company_id + "'", con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

               
                Label1.Text = dr["purchase_invoice"].ToString();
                TextBox8.Text =Convert.ToDateTime( dr["date"]).ToString("MM/dd/yyyy");
                DropDownList3.SelectedItem.Text = dr["Supplier"].ToString();

                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1 = new SqlCommand("select * from Vendor where Vendor_Name='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "'", con1);
                SqlDataReader dr1;
                con1.Open();
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    TextBox12.Text = dr1["Vendor_Address"].ToString();
                }
                con1.Close();

                TextBox4.Text = dr["Toal_qty"].ToString();
                TextBox10.Text = dr["total_amount"].ToString();
                TextBox11.Text = dr["Grand__total"].ToString();
                TextBox7.Text = dr["paid_amount"].ToString();
                TextBox9.Text = dr["pending_amount"].ToString();

            }
            BindData();
            getinvoiceno1();
        }
       
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;
        Label38.Text = Label1.Text;
        Label41.Text = row.Cells[0].Text;
        TextBox33.Text = row.Cells[1].Text;
        TextBox26.Text = row.Cells[2].Text;
        TextBox27.Text = row.Cells[3].Text;
        TextBox28.Text = row.Cells[4].Text;
        TextBox29.Text = row.Cells[5].Text;
        TextBox30.Text = row.Cells[6].Text;
        TextBox31.Text = row.Cells[7].Text;
        TextBox32.Text = row.Cells[8].Text;
        this.ModalPopupExtender5.Show();
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

            }
            con1000.Close();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con.Open();

        SqlCommand cmd2 = new SqlCommand("select * from product_entry where product_name='" + TextBox33.Text + "' and Com_Id='" + company_id + "' ", con);
        SqlDataReader dr1;
        dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {

            int cat_id = Convert.ToInt32(dr1["category_id"].ToString());
            int sub_id = Convert.ToInt32(dr1["subcategory_id"].ToString());
            string product_code = dr1["code"].ToString();

            SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("update purchase_entry_details set Category=@Category,subcategory=@subcategory,Product_code=@Product_code,Product_name=@Product_name,barcode=@barcode,mrp=@mrp,Purchase_price=@Purchase_price,qty=@qty,tax=@tax,tax_amount=@tax_amount,total_amount=@total_amount,Com_Id=@Com_Id,date=@date,Supplier=@Supplier where purchase_invoice='" + Label38.Text + "' and RowNumber='" + Label41.Text + "' and Com_Id='" + company_id + "'", CON1);
            cmd1.Parameters.AddWithValue("@Category", cat_id);
            cmd1.Parameters.AddWithValue("@subcategory", sub_id);

            cmd1.Parameters.AddWithValue("@Product_code", product_code);
            cmd1.Parameters.AddWithValue("@Product_name", TextBox33.Text);
            cmd1.Parameters.AddWithValue("@barcode", TextBox26.Text);

            cmd1.Parameters.AddWithValue("@mrp", TextBox27.Text);
            cmd1.Parameters.AddWithValue("@Purchase_price", TextBox28.Text);


            cmd1.Parameters.AddWithValue("@qty", TextBox29.Text);
            cmd1.Parameters.AddWithValue("@tax", TextBox30.Text);
            cmd1.Parameters.AddWithValue("@tax_amount", TextBox31.Text);
            cmd1.Parameters.AddWithValue("@total_amount", TextBox32.Text);
            cmd1.Parameters.AddWithValue("@Com_Id", company_id);
            cmd1.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);

            CON1.Open();
            cmd1.ExecuteNonQuery();
            CON1.Close();


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
            SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd11 = new SqlCommand("update product_stock set Category=@Category,subcategory=@subcategory,Product_code=@Product_code,Product_name=@Product_name,barcode=@barcode,mrp=@mrp,Purchase_price=@Purchase_price,qty=@qty,tax=@tax,tax_amount=@tax_amount,total_amount=@total_amount,Com_Id=@Com_Id,date=@date,Supplier=@Supplier where purchase_invoice='" + Label38.Text + "' and row_number='" + Label41.Text + "' and Com_Id='" + company_id + "'", CON11);
            cmd11.Parameters.AddWithValue("@Category", cat_id);
            cmd11.Parameters.AddWithValue("@subcategory", sub_id);

            cmd11.Parameters.AddWithValue("@Product_code", product_code);
            cmd11.Parameters.AddWithValue("@Product_name", TextBox33.Text);
            cmd11.Parameters.AddWithValue("@barcode", TextBox26.Text);

            cmd11.Parameters.AddWithValue("@mrp", TextBox27.Text);
            cmd11.Parameters.AddWithValue("@Purchase_price", TextBox28.Text);


            cmd11.Parameters.AddWithValue("@qty", TextBox29.Text);
            cmd11.Parameters.AddWithValue("@tax", TextBox30.Text);
            cmd11.Parameters.AddWithValue("@tax_amount", TextBox31.Text);
            cmd11.Parameters.AddWithValue("@total_amount", TextBox32.Text);
            cmd11.Parameters.AddWithValue("@Com_Id", company_id);
            cmd11.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd11.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);

            CON11.Open();
            cmd11.ExecuteNonQuery();
            CON11.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product updated successfully')", true);

            BindData();
            getinvoiceno1();
            TextBox33.Text = "";
            TextBox26.Text = "";
            TextBox27.Text = "";
            TextBox28.Text = "";
            TextBox29.Text = "";
            TextBox30.Text = "";
            TextBox31.Text = "";
            TextBox32.Text = "";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product not valid')", true);
        }
        con.Close();






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
    protected void TextBox30_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float tax = float.Parse(TextBox30.Text);
            float total = float.Parse(TextBox32.Text);
            TextBox31.Text = string.Format("{0:0.00}", (total * tax / 100)).ToString();
            float A = float.Parse(TextBox31.Text);
            TextBox32.Text = string.Format("{0:0.00}", (A + total)).ToString();
            this.ModalPopupExtender5.Show();
        }
        catch (Exception er)
        { }

    }
    private void BindData()
    {
        string strQuery = " select *" + " from purchase_entry_details where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "' order by RowNumber asc  ";
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
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
                cmd.CommandText = "select product_name from product_entry where Com_Id=@Com_Id and " +
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

    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
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
            con1000.Close();
        }

        int a;

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select max(convert(int,SubString(purchase_invoice,PATINDEX('%[0-9]%',purchase_invoice),Len(purchase_invoice)))) from purchase_entry where Com_Id='" + company_id + "'";
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
        string query = "Select max(convert(int,SubString(RowNumber,PATINDEX('%[0-9]%',RowNumber),Len(RowNumber)))) from purchase_entry_details where Com_Id='" + company_id + "' and purchase_invoice='" + Label1.Text + "'";
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

         SqlConnection con10 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con10.Open();
        SqlCommand cmd10 = new SqlCommand("delete from Purchase_entry where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "'", con10);
        cmd10.ExecuteNonQuery();
        con10.Close();

       

        if (TextBox7.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter paid amount')", true);
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
            string status = "Purchase";
            float value = 0;
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into purchase_entry values(@purchase_invoice,@date,@Supplier,@Toal_qty,@total_amount,@Grand__total,@Com_Id,@paid_amount,@pending_amount,@status,@value)", CON);
            cmd.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
            cmd.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Toal_qty", TextBox4.Text);
            cmd.Parameters.AddWithValue("@total_amount", TextBox10.Text);
            cmd.Parameters.AddWithValue("@Grand__total", TextBox11.Text);
            cmd.Parameters.AddWithValue("@Com_Id", company_id);
            cmd.Parameters.AddWithValue("@paid_amount", TextBox7.Text);
            cmd.Parameters.AddWithValue("@pending_amount", TextBox9.Text);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@value", value);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();

            float b11 = 0;
            float f11 = 0;
            float c11 = 0;

            SqlConnection con100 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
            SqlCommand check_User_Name100 = new SqlCommand("SELECT * FROM pay_amount_status WHERE Buyer = @Buyer and Com_Id='" + company_id + "' ", con100);
            check_User_Name100.Parameters.AddWithValue("@Buyer", DropDownList3.SelectedItem.Text);
            con100.Open();
            SqlDataReader reader100 = check_User_Name100.ExecuteReader();
            if (reader100.HasRows)
            {
                SqlConnection con11 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                SqlCommand cmd11 = new SqlCommand("Select * from pay_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and invoice_no='" + Label1.Text + "'  and Com_Id='" + company_id + "'", con11);
                con11.Open();
                SqlDataReader dr11;
                dr11 = cmd11.ExecuteReader();
                if (dr11.Read())
                {

                    b11 = float.Parse(dr11["pending_amount"].ToString());






                    SqlConnection con27 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                    SqlCommand cd27 = new SqlCommand("update pay_amount_status set pending_amount=pending_amount-@pending_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "'", con27);
                    cd27.Parameters.AddWithValue("@pending_amount", b11);
                    con27.Open();
                    cd27.ExecuteNonQuery();
                    con27.Close();

                    SqlConnection con272 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                    SqlCommand cd272 = new SqlCommand("update pay_amount set pending_amount=pending_amount-@pending_amount,outstanding=outstanding-@outstanding where Buyer='" + DropDownList3.SelectedItem.Text + "' and  invoice_no='" + Label1.Text + "' and Com_Id='" + company_id + "' ", con272);
                    cd272.Parameters.AddWithValue("@pending_amount", b11);
                    cd272.Parameters.AddWithValue("@outstanding", b11);
                    con272.Open();
                    cd272.ExecuteNonQuery();
                    con272.Close();

                    SqlConnection con271 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                    SqlCommand cd271 = new SqlCommand("update pay_amount_status set pending_amount=pending_amount+@pending_amount where Buyer='" + DropDownList3.SelectedItem.Text + "' and Com_Id='" + company_id + "'", con271);
                    cd271.Parameters.AddWithValue("@pending_amount", TextBox9.Text);
                    con271.Open();
                    cd271.ExecuteNonQuery();
                    con271.Close();





                    SqlConnection con26 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                    SqlCommand cmd26 = new SqlCommand("update pay_amount set Estimate_value=@Estimate_value,address=@address,total_amount=@total_amount,pay_amount=@pay_amount,pending_amount=@pending_amount,outstanding=outstanding+@outstanding where Buyer='" + DropDownList3.SelectedItem.Text + "' AND invoice_no='" + Label1.Text + "'", con26);


                    cmd26.Parameters.AddWithValue("@Estimate_value", TextBox11.Text);
                    cmd26.Parameters.AddWithValue("@address", TextBox12.Text);

                    cmd26.Parameters.AddWithValue("@total_amount", TextBox11.Text);
                    cmd26.Parameters.AddWithValue("@pay_amount", TextBox7.Text);
                    cmd26.Parameters.AddWithValue("@pending_amount", TextBox9.Text);
                    cmd26.Parameters.AddWithValue("@outstanding", TextBox9.Text);



                    con26.Open();
                    cmd26.ExecuteNonQuery();
                    con26.Close();



                }
                con11.Close();
            }

            con100.Close();




        }

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Purchase entry created successfully')", true);
        BindData();
        show_category();
       
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox12.Text = "";
      
        TextBox8.Text = "";
        show_supplier();
        TextBox4.Text = "";
        show_tax();
        Response.Redirect("~/Admin/Purchase_report.aspx");



    }
    private void SaveDetail(GridViewRow row)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        BindData();
        show_category();

        TextBox10.Text = "";
        TextBox11.Text = "";

        TextBox8.Text = "";
        show_supplier();
        TextBox4.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox12.Text = "";
        show_tax();
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
                cmd.CommandText = "select product_name from product_entry where Com_Id=@Com_Id and " +
                "product_name like @product_name + '%'";
                cmd.Parameters.AddWithValue("@product_name", prefixText);
                cmd.Parameters.AddWithValue("@Com_id", company_id);
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {




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
    private void show_supplier()
    {

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["name1"] = "";
        Response.Redirect("~/Admin/Category_Add.aspx");
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

    protected void LinkButton1_Click(object sender, EventArgs e)
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

        }
        con.Close();

    }
    protected void TextBox16_TextChanged(object sender, System.EventArgs e)
    {


    }
    protected void TextBox17_TextChanged(object sender, System.EventArgs e)
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
    protected void TextBox2_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, System.EventArgs e)
    {
        TextBox5.Focus();
    }
    protected void TextBox5_TextChanged(object sender, System.EventArgs e)
    {
        TextBox6.Focus();
    }
    protected void TextBox6_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void TextBox18_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, System.EventArgs e)
    {
        try
        {
            float a = float.Parse(TextBox6.Text);
            float b = float.Parse(TextBox13.Text);
            TextBox16.Text = (a * b).ToString();
            TextBox14.Focus();
        }
        catch (Exception er)
        { }
    }
    protected void TextBox14_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float tax = float.Parse(TextBox14.Text);
            float total = float.Parse(TextBox16.Text);
            TextBox15.Text = string.Format("{0:0.00}", (total * tax / 100)).ToString();
            float A = float.Parse(TextBox15.Text);
            TextBox16.Text = string.Format("{0:0.00}", (A + total)).ToString();
            Button3.Focus();
        }
        catch (Exception we)
        { }
    }
    protected void Button3_Click(object sender, System.EventArgs e)
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

        con.Open();

        SqlCommand cmd2 = new SqlCommand("select * from product_entry where product_name='" + TextBox2.Text + "'", con);
        SqlDataReader dr1;
        dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {

            int cat_id = Convert.ToInt32(dr1["category_id"].ToString());
            int sub_id = Convert.ToInt32(dr1["subcategory_id"].ToString());
            string product_code = dr1["code"].ToString();

            SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1 = new SqlCommand("insert into purchase_entry_details values(@Category,@subcategory,@purchase_invoice,@Product_code,@Product_name,@barcode,@mrp,@Purchase_price,@qty,@tax,@tax_amount,@total_amount,@Com_Id,@date,@Supplier,@RowNumber)", CON1);
            cmd1.Parameters.AddWithValue("@Category", cat_id);
            cmd1.Parameters.AddWithValue("@subcategory", sub_id);
            cmd1.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
            cmd1.Parameters.AddWithValue("@Product_code", product_code);
            cmd1.Parameters.AddWithValue("@Product_name", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@barcode", TextBox3.Text);

            cmd1.Parameters.AddWithValue("@mrp", TextBox5.Text);
            cmd1.Parameters.AddWithValue("@Purchase_price", TextBox6.Text);


            cmd1.Parameters.AddWithValue("@qty", TextBox13.Text);
            cmd1.Parameters.AddWithValue("@tax", TextBox14.Text);
            cmd1.Parameters.AddWithValue("@tax_amount", TextBox15.Text);
            cmd1.Parameters.AddWithValue("@total_amount", TextBox16.Text);
            cmd1.Parameters.AddWithValue("@Com_Id", company_id);
            cmd1.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd1.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
            cmd1.Parameters.AddWithValue("@RowNumber", Label2.Text);
            CON1.Open();
            cmd1.ExecuteNonQuery();
            CON1.Close();


            SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd11 = new SqlCommand("insert into product_stock values(@Category,@subcategory,@purchase_invoice,@Product_code,@Product_name,@barcode,@mrp,@Purchase_price,@qty,@tax,@tax_amount,@total_amount,@Com_Id,@date,@Supplier,@row_number)", CON11);
            cmd11.Parameters.AddWithValue("@Category", cat_id);
            cmd11.Parameters.AddWithValue("@subcategory", sub_id);
            cmd11.Parameters.AddWithValue("@purchase_invoice", Label1.Text);
            cmd11.Parameters.AddWithValue("@Product_code", product_code);
            cmd11.Parameters.AddWithValue("@Product_name", TextBox2.Text);
            cmd11.Parameters.AddWithValue("@barcode", TextBox3.Text);

            cmd11.Parameters.AddWithValue("@mrp", TextBox5.Text);
            cmd11.Parameters.AddWithValue("@Purchase_price", TextBox6.Text);


            cmd11.Parameters.AddWithValue("@qty", TextBox13.Text);
            cmd11.Parameters.AddWithValue("@tax", TextBox14.Text);
            cmd11.Parameters.AddWithValue("@tax_amount", TextBox15.Text);
            cmd11.Parameters.AddWithValue("@total_amount", TextBox16.Text);
            cmd11.Parameters.AddWithValue("@Com_Id", company_id);
            cmd11.Parameters.AddWithValue("@date", TextBox8.Text);
            cmd11.Parameters.AddWithValue("@Supplier", DropDownList3.SelectedItem.Text);
            cmd11.Parameters.AddWithValue("@row_number", Label2.Text);
            CON11.Open();
            cmd11.ExecuteNonQuery();
            CON11.Close();



        }
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product added successfully')", true);

        getinvoiceno1();
        BindData();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox2.Focus();

    }
    protected void TextBox2_TextChanged1(object sender, System.EventArgs e)
    {
        TextBox3.Focus();
    }
  

    
    protected void Button5_Click(object sender, System.EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
    }

    protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
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


        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from Purchase_entry_details where RowNumber='" + s_no + "' and purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "'", con1);
        cmd1.ExecuteNonQuery();
        con1.Close();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con2.Open();
        SqlCommand cmd2 = new SqlCommand("delete from product_stock where purchase_invoice='" + Label1.Text + "' and Com_Id='" + company_id + "'", con2);
        cmd2.ExecuteNonQuery();
        con2.Close();

        BindData();
        getinvoiceno1();
    }
    protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot = tot + float.Parse(e.Row.Cells[5].Text);

        }
        TextBox4.Text = tot.ToString();

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot1 = tot1 + float.Parse(e.Row.Cells[8].Text);

        }
        TextBox10.Text = tot1.ToString();
        TextBox11.Text = tot1.ToString();
    }

   
}