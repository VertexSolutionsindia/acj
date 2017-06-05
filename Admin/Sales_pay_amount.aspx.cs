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
using System.Drawing;
#endregion

public partial class Admin_Sales_pay_amount : System.Web.UI.Page
{
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
                Label1.Text = dr1["financial_year"].ToString();

            }
            con1.Close();
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
            DateTime date = DateTime.Now;
            TextBox4.Text = Convert.ToDateTime(date).ToString("MM-dd-yyyy");
            getinvoiceno();
            show_category();
            showrating();
            BindData();

            active();
            created();
            string supplier = "";
            if (Session["Supplier"] != null)
            {
                supplier = Session["Supplier"].ToString();
            }

            getoutstandng(supplier);

        }
    }
    private void getoutstandng(string supplier)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("select * from receive_amount_status where Buyer='" + supplier + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' ", con);
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox3.Text = dr["Buyer"].ToString();
            TextBox1.Text = dr["address"].ToString();
            TextBox2.Text = dr["pending_amount"].ToString();
        }
        con.Close();
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
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

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

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers1(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Vendor_Name from Vendor where Com_Id=@Com_Id and " +
                "Vendor_Name like @Vendor_Name + '%'";
                cmd.Parameters.AddWithValue("@Vendor_Name", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["Vendor_Name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers11(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select barcode from product_stock where Com_Id=@Com_Id and " +
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


    }
    protected void BindData()
    {
        string supplier = "";
            if (Session["Supplier"] != null)
            {
                supplier = Session["Supplier"].ToString();
            }

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from receive_amount where Buyer='" + supplier + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' order by NO asc", con1);
        DataTable dt1 = new DataTable();
        con1.Open();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {



    }
    private void getinvoiceno()
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
        GridView1.PageIndex = e.NewPageIndex;
        show_category();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[0].Text = "Page " + (GridView1.PageIndex + 1) + " of " + GridView1.PageCount;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {




    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
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
    protected void TextBox4_TextChanged(object sender, EventArgs e)
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
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.ClearContent();
        Response.AddHeader("content-disposition", "attachment; filename=gvtoexcel.xls");
        Response.ContentType = "application/excel";
        System.IO.StringWriter sw = new System.IO.StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /*Tell the compiler that the control is rendered
         * explicitly by overriding the VerifyRenderingInServerForm event.*/
    }
    protected void Button2_Click(object sender, EventArgs e)
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


        string return_by = "";
        int value1 = 0;
        string status1 = "Collection entry";
        SqlConnection con23 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
        SqlCommand cmd23 = new SqlCommand("insert into receive_amount values(@Buyer,@Pay_date,@Estimate_value,@Address,@Total_amount,@pay_amount,@pending_amount,@outstanding,@estimate_no,@Com_Id,@status,@year)", con23);
        cmd23.Parameters.AddWithValue("@Buyer", TextBox3.Text);
        cmd23.Parameters.AddWithValue("@Pay_date", TextBox4.Text);
        cmd23.Parameters.AddWithValue("@Estimate_value", DBNull.Value);
        cmd23.Parameters.AddWithValue("@Address", TextBox1.Text);
        cmd23.Parameters.AddWithValue("@Total_amount", TextBox2.Text);


        cmd23.Parameters.AddWithValue("@pay_amount", TextBox5.Text);


        float a1 = float.Parse(TextBox2.Text);
        float b1 = float.Parse(TextBox5.Text);
        float c1 = a1 - b1;
        cmd23.Parameters.AddWithValue("@outstanding", c1);
        cmd23.Parameters.AddWithValue("@pending_amount", c1);
        cmd23.Parameters.AddWithValue("@estimate_no", DBNull.Value);
        cmd23.Parameters.AddWithValue("@Com_Id", company_id);
        cmd23.Parameters.AddWithValue("@status", status1);
        cmd23.Parameters.AddWithValue("@year", Label1.Text);
        con23.Open();
        cmd23.ExecuteNonQuery();
        con23.Close();



        SqlConnection con22 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
        SqlCommand cmd22 = new SqlCommand("update receive_amount_status set Buyer=@Buyer,address=@address,total_amount=@total_amount,pending_amount=@pending_amount,paid_amount=@paid_amount,Com_Id=@Com_Id where Buyer='" + TextBox3.Text + "' and year='" + Label1.Text + "' ", con22);


        cmd22.Parameters.AddWithValue("@Buyer", TextBox3.Text);

        cmd22.Parameters.AddWithValue("@address", TextBox1.Text);





        float a = float.Parse(TextBox2.Text);
        float b = float.Parse(TextBox5.Text);
        float c = a - b;
        cmd22.Parameters.AddWithValue("@total_amount", c);
        cmd22.Parameters.AddWithValue("@pending_amount", c);
        cmd22.Parameters.AddWithValue("@paid_amount", TextBox5.Text);
        cmd22.Parameters.AddWithValue("@Com_Id", company_id);
 
        con22.Open();
        cmd22.ExecuteNonQuery();
        con22.Close();


        string status = "Purchase";
        int value = 0;
        SqlConnection con26 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
        SqlCommand cmd26 = new SqlCommand("insert into sales_amount values(@date,@status,@amount,@value,@Com_Id,@year)", con26);
        cmd26.Parameters.AddWithValue("@date", TextBox4.Text);
        cmd26.Parameters.AddWithValue("@status", status);
        cmd26.Parameters.AddWithValue("@amount", TextBox5.Text);
        cmd26.Parameters.AddWithValue("value", value);
        cmd26.Parameters.AddWithValue("@Com_Id", company_id);
        cmd26.Parameters.AddWithValue("@year", Label1.Text);
        con26.Open();
        cmd26.ExecuteNonQuery();
        con26.Close();



        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Amount added successfully')", true);
        BindData();

        TextBox5.Text = "";
        getoutstandng(TextBox3.Text);

    }
    }
