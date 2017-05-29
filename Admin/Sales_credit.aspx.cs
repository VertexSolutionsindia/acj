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

public partial class Admin_Sales_entry_wholesales : System.Web.UI.Page
{
    float tot = 0;
    float tot1 = 0;
    DataTable dt = null;
    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime date = DateTime.Now;
            TextBox8.Text = Convert.ToDateTime(date).ToString("dd-MM-yyyy");
            TextBox8.Attributes.Add("onkeypress", "return controlEnter('" + TextBox13.ClientID + "', event)");
            TextBox13.Attributes.Add("onkeypress", "return controlEnter('" + TextBox14.ClientID + "', event)");
            TextBox14.Attributes.Add("onkeypress", "return controlEnter('" + DropDownList3.ClientID + "', event)");


            TextBox1.Attributes.Add("onkeypress", "return controlEnter('" + TextBox12.ClientID + "', event)");
            TextBox12.Attributes.Add("onkeypress", "return controlEnter('" + TextBox17.ClientID + "', event)");
            TextBox17.Attributes.Add("onkeypress", "return controlEnter('" + TextBox3.ClientID + "', event)");
            TextBox3.Attributes.Add("onkeypress", "return controlEnter('" + TextBox4.ClientID + "', event)");
            TextBox4.Attributes.Add("onkeypress", "return controlEnter('" + TextBox5.ClientID + "', event)");
            TextBox5.Attributes.Add("onkeypress", "return controlEnter('" + TextBox15.ClientID + "', event)");
            TextBox15.Attributes.Add("onkeypress", "return controlEnter('" + TextBox16.ClientID + "', event)");
            TextBox16.Attributes.Add("onkeypress", "return controlEnter('" + TextBox18.ClientID + "', event)");
            getinvoiceno1();
            getinvoiceno();
            show_category();
            showrating();
            BindData();
            show_tax();
            getinvoicenoid();
            show_type();
            active();
            created();
            getinvoiceno1();
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
    }
    protected void TextBox27_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float total = float.Parse(TextBox11.Text);
            float dis = float.Parse(TextBox27.Text);

            float total_amount = (total * dis / 100);
            TextBox28.Text = total_amount.ToString();
            TextBox11.Text = (total - total_amount).ToString();
        }
        catch (Exception er)
        { }
    }
     //A method that returns a string which calls the connection string from the web.config
    private string GetConnectionString()
    {
        //"DBConnection" is the name of the Connection String
        //that was set up from the web.config file
        return System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
    }
    private void getinvoiceno()
    {
        int a;
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
        con1.Open();
        string query = "Select max(convert(int,SubString(invoice_no,PATINDEX('%[0-9]%',invoice_no),Len(invoice_no)))) from sales_entry_wholesale where Com_Id='" + company_id + "'";
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
    private void show_type()
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
        SqlCommand cmd = new SqlCommand("Select * from customer_type where Com_Id='" + company_id + "' ORDER BY type_id asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "type_name";
        DropDownList1.DataValueField = "type_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
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
        string ststus="Sales";
        float value=0;
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("insert into sales_entry_wholesale values(@invoice_no,@date,@customer_name,@customer_Address,@Mobile_no,@staff_name,@total_qty,@total_amount,@grand_total,@paid_amount,@Pending_amount,@status,@value,@Com_Id,@discount_per,@discount_amount,@tin_no)", CON);
        cmd.Parameters.AddWithValue("@invoice_no", Label1.Text);
        cmd.Parameters.AddWithValue("@date", TextBox8.Text);
        cmd.Parameters.AddWithValue("@customer_name", TextBox13.Text);
        cmd.Parameters.AddWithValue("@customer_Address", TextBox14.Text);
        cmd.Parameters.AddWithValue("@Mobile_no", TextBox6.Text);
        cmd.Parameters.AddWithValue("@staff_name", DropDownList3.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@total_qty", TextBox2.Text);
        cmd.Parameters.AddWithValue("@total_amount", TextBox10.Text);
        cmd.Parameters.AddWithValue("@grand_total", TextBox11.Text);
        cmd.Parameters.AddWithValue("@paid_amount",TextBox7.Text);
        cmd.Parameters.AddWithValue("@Pending_amount",TextBox9.Text);
          cmd.Parameters.AddWithValue("@status",ststus);
         cmd.Parameters.AddWithValue("@value",value);
         cmd.Parameters.AddWithValue("@Com_Id", company_id);
         cmd.Parameters.AddWithValue("@discount_per", TextBox27.Text);
         cmd.Parameters.AddWithValue("@discount_amount", TextBox28.Text);
        cmd.Parameters.AddWithValue("@tin_no",TextBox29.Text);
        CON.Open();
        cmd.ExecuteNonQuery();
        CON.Close();





        string name = "Dear Customer, Thanks for shopping with Dream garments. Your invoice value is " + TextBox11.Text + " " + " For any queries contact:9345717284 ";
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=nazeer.deens@gmail.com:vertex&senderID=TEST SMS&receipientno=" + TextBox6.Text + "&dcs=0&msgtxt=" + name + "&state=4 ";
        // Create a request object  
        WebRequest request = HttpWebRequest.Create(strUrl);
        // Get the response back  
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();


        

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sales entry created successfully')", true);
        BindData();
        show_category();
      
        TextBox10.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox11.Text = "";
        DataTable dataTable = new DataTable();
        dataTable = null;
   
        show_tax();
        Session["Name"] = Label1.Text;




        Response.Redirect("SALES_REPORT_VIEW_WHOLESALE.aspx");
     
    }
    
    protected void TextBox34_TextChanged(object sender, System.EventArgs e)
    {
       try
        {
            float tax = float.Parse(TextBox31.Text);
            float total = float.Parse(TextBox34.Text);
            TextBox37.Text = string.Format("{0:0.00}", (total * tax)).ToString();
            this.ModalPopupExtender5.Show();
        }
       catch (Exception er)
       { }
      
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

        SqlConnection CON100 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd100 = new SqlCommand("select * from sales_entry_details_wholesale where invoice_no=@invoice_no and s_no=@s_no and Com_Id='" + company_id + "'", CON100);
        cmd100.Parameters.AddWithValue("@invoice_no", Label38.Text);
        cmd100.Parameters.AddWithValue("@s_no", Label41.Text);
        CON100.Open();
        SqlDataReader dr100;
      
        dr100 = cmd100.ExecuteReader();
        if (dr100.Read())
        {

            float qty =float.Parse( dr100["qty"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("update product_stock set qty=qty+@qty where barcode='" + TextBox33.Text + "' and Com_Id='" + company_id + "'", CON);
            cmd.Parameters.AddWithValue("@qty", qty);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();
        }
        CON100.Close();
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
        SqlCommand cmd2 = new SqlCommand("select * from product_entry where product_name='" + TextBox30.Text + "' and Com_Id='" + company_id + "' ", con);
            SqlDataReader dr1;
            con.Open();
            dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {

                int cat_id = Convert.ToInt32(dr1["category_id"].ToString());
                int sub_id = Convert.ToInt32(dr1["subcategory_id"].ToString());
                string product_code = dr1["code"].ToString();

                SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1 = new SqlCommand("update sales_entry_details_wholesale set Category=@Category,Sub_category=@Sub_category,barcode=@barcode,Product_code=@Product_code,product_name=@product_name,mrp=@mrp,size=@size,color=@color,qty=@qty,dis_per=@dis_per,dis_amount=@dis_amount,total_amount=@total_amount where invoice_no=@invoice_no and s_no=@s_no and Com_Id='" + company_id + "'", CON1);
                cmd1.Parameters.AddWithValue("@invoice_no", Label38.Text);
                cmd1.Parameters.AddWithValue("@s_no", Label41.Text);
                cmd1.Parameters.AddWithValue("@Category", cat_id);
                cmd1.Parameters.AddWithValue("@Sub_category", sub_id);
                cmd1.Parameters.AddWithValue("@barcode", TextBox33.Text);
                cmd1.Parameters.AddWithValue("@Product_code", product_code);
                cmd1.Parameters.AddWithValue("@product_name", TextBox30.Text);

                cmd1.Parameters.AddWithValue("@mrp", TextBox31.Text);
                cmd1.Parameters.AddWithValue("@size", TextBox32.Text);
                cmd1.Parameters.AddWithValue("@color", TextBox38.Text);
                cmd1.Parameters.AddWithValue("@qty", TextBox34.Text);
                cmd1.Parameters.AddWithValue("@dis_per", TextBox35.Text);
                cmd1.Parameters.AddWithValue("@dis_amount", TextBox36.Text);
                cmd1.Parameters.AddWithValue("@total_amount", TextBox37.Text);



                CON1.Open();
                cmd1.ExecuteNonQuery();
                CON1.Close();


                SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd11 = new SqlCommand("update product_stock set qty=qty-@qty where barcode='" + TextBox33.Text + "' and Com_Id='" + company_id + "'", CON11);





                cmd11.Parameters.AddWithValue("@qty", TextBox34.Text);

                CON11.Open();
                cmd11.ExecuteNonQuery();
                CON11.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product updated successfully')", true);
            }
            con.Close();
            BindData();

    }
    protected void TextBox35_TextChanged(object sender, System.EventArgs e)
    {
        try
        {
            float tax = float.Parse(TextBox35.Text);
            float total = float.Parse(TextBox37.Text);
            TextBox36.Text = string.Format("{0:0.00}", (total * tax / 100)).ToString();
            float A = float.Parse(TextBox36.Text);
            TextBox37.Text = string.Format("{0:0.00}", (total - A)).ToString();
            this.ModalPopupExtender5.Show();
        }
        catch (Exception er)
        { }
       
    }
    protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;
        Label38.Text = Label1.Text;
        Label41.Text = row.Cells[0].Text;
        TextBox33.Text = row.Cells[1].Text;
        TextBox30.Text = row.Cells[2].Text;
        TextBox31.Text = row.Cells[3].Text;
        TextBox32.Text = row.Cells[4].Text;
        TextBox38.Text = row.Cells[5].Text;
        TextBox34.Text = row.Cells[6].Text;
        TextBox35.Text = row.Cells[7].Text;
        TextBox36.Text = row.Cells[8].Text;
        TextBox37.Text = row.Cells[9].Text;
        this.ModalPopupExtender5.Show();

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
        string barcode =ROW.Cells[1].Text;
        float qty = float.Parse(ROW.Cells[6].Text);

        SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd11 = new SqlCommand("update product_stock set qty=qty+@qty where barcode='" + barcode + "' and Com_Id='" + company_id + "'", CON11);





        cmd11.Parameters.AddWithValue("@qty", qty);

        CON11.Open();
        cmd11.ExecuteNonQuery();
        CON11.Close();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from sales_entry_details_wholesale where s_no='" + s_no + "' and invoice_no='" + Label1.Text + "' and Com_Id='" + company_id + "'", con1);
        cmd1.ExecuteNonQuery();
        con1.Close();



       

        BindData();
        getinvoiceno1();

    }
    private void SaveDetail(GridViewRow row)
    {

        
        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      
        show_category();
       
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox2.Text = "";
        
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox8.Text = "";
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
        SqlCommand CMD = new SqlCommand("select * from sales_entry_details_wholesale where invoice_no='" + Label1.Text + "' and Com_Id='" + company_id + "' order by s_no asc", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
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

    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct barcode from product_stock where Com_Id=@Com_Id and " +
                "barcode like @barcode + '%'";
                cmd.Parameters.AddWithValue("@barcode", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["barcode"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
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
                cmd.CommandText = "select distinct barcode from product_stock where Com_Id=@Com_Id and  " +
                "barcode like @barcode + '%'";
                cmd.Parameters.AddWithValue("@barcode", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["barcode"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers2(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct Mobile_no from customer_wholesale where Com_Id=@Com_Id and  " +
                "Mobile_no like @Mobile_no + '%'";
                cmd.Parameters.AddWithValue("@Mobile_no", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["Mobile_no"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomersdetails(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct WSCustomer_Name from customer_wholesale where Com_Id=@Com_Id and " +
                "WSCustomer_Name like @WSCustomer_Name + '%'";
                cmd.Parameters.AddWithValue("@WSCustomer_Name", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["WSCustomer_Name"].ToString());
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
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Staff_Entry where Com_Id='" + company_id + "' ORDER BY Emp_Code asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


      

        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Emp_Name";
        DropDownList3.DataValueField = "Emp_Code";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));
        con.Close();
        
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
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot = tot + float.Parse(e.Row.Cells[6].Text);

        }
        TextBox2.Text = tot.ToString();

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot1 = tot1 + float.Parse(e.Row.Cells[9].Text);

        }
        TextBox10.Text = tot1.ToString();
        TextBox11.Text = tot1.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    

    protected void Button3_Click(object sender, EventArgs e)
    {



       




     





       





    }
    
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                    con.Open();

                    SqlCommand cmd2 = new SqlCommand("select * from customer_wholesale where Mobile_no='" + TextBox6.Text + "'", con);
                    SqlDataReader dr1;
                    dr1 = cmd2.ExecuteReader();
                    if (dr1.Read())
                    {


                        TextBox13.Text = dr1["WSCustomer_Name"].ToString();
                        TextBox14.Text = dr1["WSCustomer_Add"].ToString();
                        TextBox29.Text = dr1["tin_no"].ToString();
                    }
                    con.Close();


       
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot = tot + float.Parse(e.Row.Cells[5].Text);
            TextBox10.Text = tot.ToString();
            TextBox11.Text = tot.ToString();
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tot1 = tot1 + float.Parse(e.Row.Cells[4].Text);
            TextBox2.Text = tot1.ToString();
            
        }
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

       
    }
    
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["Name"] = TextBox13.Text;




        Response.Redirect("SALES_REPORT_VIEW.aspx");
    }
    protected void Gridview2_Load(object sender, System.EventArgs e)
    {

    }


   
    protected void TextBox3_TextChanged(object sender, System.EventArgs e)
    {
       

    }
    
    
    protected void Gridview2_PreRender(object sender, System.EventArgs e)
    {

    }
    protected void TextBox16_TextChanged(object sender, System.EventArgs e)
    {
       
    }
    protected void TextBox2_TextChanged(object sender, System.EventArgs e)
    {
       
    }
    protected void TextBox17_TextChanged(object sender, System.EventArgs e)
    {
       
    }

    protected void TextBox18_TextChanged(object sender, System.EventArgs e)
    {
        
    }
    protected void Button3_Click1(object sender, System.EventArgs e)
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

    protected void Gridview2_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        
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
        string query = "Select max(s_no) from sales_entry_details_wholesale where Com_Id='" + company_id + "' and invoice_no='" + Label1.Text + "'";
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
   
    protected void Button3_Click2(object sender, System.EventArgs e)
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

            SqlCommand cmd2 = new SqlCommand("select * from product_entry where product_name='" + TextBox12.Text + "' and Com_Id='" + company_id + "' ", con);
            SqlDataReader dr1;
            dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {

                int cat_id = Convert.ToInt32(dr1["category_id"].ToString());
                int sub_id = Convert.ToInt32(dr1["subcategory_id"].ToString());
                string product_code = dr1["code"].ToString();

                SqlConnection CON1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1 = new SqlCommand("insert into sales_entry_details_wholesale values(@invoice_no,@s_no,@Category,@Sub_category,@barcode,@Product_code,@product_name,@mrp,@size,@color,@qty,@dis_per,@dis_amount,@total_amount,@Com_Id)", CON1);
                cmd1.Parameters.AddWithValue("@invoice_no",Label1.Text);
                cmd1.Parameters.AddWithValue("@s_no", Label2.Text);
                cmd1.Parameters.AddWithValue("@Category", cat_id);
                cmd1.Parameters.AddWithValue("@Sub_category", sub_id);
                cmd1.Parameters.AddWithValue("@barcode", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@Product_code", product_code);
                cmd1.Parameters.AddWithValue("@product_name", TextBox12.Text);

                cmd1.Parameters.AddWithValue("@mrp", TextBox17.Text);
                cmd1.Parameters.AddWithValue("@size",TextBox3.Text);
                cmd1.Parameters.AddWithValue("@color", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@qty", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@dis_per", TextBox15.Text);
                cmd1.Parameters.AddWithValue("@dis_amount", TextBox16.Text);
                cmd1.Parameters.AddWithValue("@total_amount", TextBox18.Text);
                cmd1.Parameters.AddWithValue("@Com_Id", company_id);


                CON1.Open();
                cmd1.ExecuteNonQuery();
                CON1.Close();


                SqlConnection CON11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd11 = new SqlCommand("update product_stock set qty=qty-@qty where barcode='" + TextBox1.Text + "' and Com_Id='" + company_id + "'", CON11);





                cmd11.Parameters.AddWithValue("@qty", TextBox5.Text);

                CON11.Open();
                cmd11.ExecuteNonQuery();
                CON11.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product added successfully')", true);

                BindData();
                getinvoiceno1();
                TextBox1.Text = "";
                TextBox12.Text = "";
                TextBox17.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox15.Text = "";
                TextBox16.Text = "";
                TextBox18.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('product not valid')", true);
            }
            con.Close();

       
    }

    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {


        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con1.Open();
        string query = "Select * from product_stock where Com_Id='" + company_id + "' and barcode='" + TextBox1.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {

            TextBox12.Text = dr["Product_name"].ToString();
            TextBox17.Text = dr["mrp"].ToString();
            TextBox5.Text = "1";
            TextBox15.Text = "0";
            TextBox16.Text = "0.0";
        }
        con1.Close();

        TextBox12.Focus();
        try
        {

            float a = float.Parse(TextBox17.Text);
            float b = float.Parse(TextBox5.Text);
            TextBox18.Text = (a * b).ToString();
            TextBox15.Focus();
        }
        catch (Exception we)
        { }
    }

    protected void TextBox5_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            float a = float.Parse(TextBox17.Text);
            float b = float.Parse(TextBox5.Text);
            TextBox18.Text = (a * b).ToString();
            TextBox15.Focus();
        }
        catch (Exception we)
        { }
    }
    protected void TextBox15_TextChanged(object sender, System.EventArgs e)
    {
       
            float tax = float.Parse(TextBox15.Text);
            float total = float.Parse(TextBox18.Text);
            TextBox16.Text = string.Format("{0:0.00}", (total * tax / 100)).ToString();
            float A = float.Parse(TextBox16.Text);
            TextBox18.Text = string.Format("{0:0.00}", ( total-A)).ToString();
            Button3.Focus();
       
    }

    protected void TextBox4_TextChanged(object sender, System.EventArgs e)
    {
        TextBox5.Focus();
    }
    protected void Button6_Click(object sender, System.EventArgs e)
    {
        this.ModalPopupExtender3.Show();
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        if (TextBox19.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter customer name')", true);

        }
        else if (TextBox21.Text == "")
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

                }
                con1000.Close();
            }
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into customer_wholesale values(@WSCustomer_code,@WSCustomer_Name,@WSCustomer_Add,@Mobile_no,@Profession,@Customer_Type,@Com_Id,@friend_name,@Friend_mobile_No,@tin_no,@cst_no)", CON);
            cmd.Parameters.AddWithValue("@WSCustomer_code", Label29.Text);
            cmd.Parameters.AddWithValue("@WSCustomer_Name", HttpUtility.HtmlDecode(TextBox19.Text));
            cmd.Parameters.AddWithValue("@WSCustomer_Add", HttpUtility.HtmlDecode(TextBox20.Text));
            cmd.Parameters.AddWithValue("@Mobile_no", HttpUtility.HtmlDecode(TextBox21.Text));
            cmd.Parameters.AddWithValue("@Profession", HttpUtility.HtmlDecode(TextBox22.Text));
            cmd.Parameters.AddWithValue("@Customer_Type", HttpUtility.HtmlDecode(DropDownList1.SelectedItem.Text));
            cmd.Parameters.AddWithValue("@Com_Id", company_id);
            cmd.Parameters.AddWithValue("@friend_name", TextBox24.Text);
            cmd.Parameters.AddWithValue("@Friend_mobile_No", TextBox25.Text);
            cmd.Parameters.AddWithValue("@tin_no", TextBox23.Text);
            cmd.Parameters.AddWithValue("@cst_no", TextBox26.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Customer wholesales Entry Addded successfully')", true);
            BindData();
            show_type();
            getinvoicenoid();
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
           
            TextBox22.Text = "";
            TextBox25.Text = "";
            TextBox24.Text = "";

        }



    }
    private void getinvoicenoid()
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
        string query = "Select Max(WSCustomer_code) from customer_wholesale where Com_Id='" + company_id + "'";
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

    protected void TextBox13_TextChanged(object sender, System.EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

            con.Open();

            SqlCommand cmd2 = new SqlCommand("select * from customer_wholesale where WSCustomer_Name='" + TextBox13.Text + "'", con);
            SqlDataReader dr1;
            dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {


                TextBox6.Text = dr1["Mobile_no"].ToString();
                TextBox14.Text = dr1["WSCustomer_Add"].ToString();
                TextBox29.Text = dr1["tin_no"].ToString();
            }
            con.Close();
        }
        catch (Exception er)
        { }
    }
}