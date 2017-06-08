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

public partial class Admin_Account_ledger : System.Web.UI.Page
{
    float Debit1 = 0;
    float Credit1 = 0;
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

            getinvoiceno();
            show_category();
            showrating();
            BindData();

            active();
            created();


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

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers1(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct Vendor_Name from Vendor where Com_Id=@Com_Id and " +
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

           

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
       // SqlCommand CMD = new SqlCommand("SELECT  CONVERT(datetime,date,101) as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM sales_entry as a where Com_Id='" + company_id + "'  group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_entry where Com_Id='" + company_id + "'  group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_amount where Com_Id='" + company_id + "'  group by date,status,amount,value", con1);
        SqlCommand CMD = new SqlCommand("select date,status AS Particulars, sum(value) as Debit,sum(grand_total) as Credit  from sales_credit_entry where Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,grand_total union select date,status AS Particulars, sum(value) as Debit,sum(grand_total) as Credit  from sales_entry where Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,grand_total union select date,status AS Particulars, sum(Grand__total) as Debit,sum(value) as Credit  from purchase_entry where  Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,Grand__total union select date,status AS Particulars, sum(Grand__total) as Debit,sum(value) as Credit  from purchase_unbilled_entry where  Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,Grand__total", con1);
        DataTable dt1 = new DataTable();
        con1.Open();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
            }
            con1000.Close();
        }
    }
    protected void BindData()
    {

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

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label Debit = (Label)e.Row.FindControl("lblDebit");
            Debit1 = Debit1 + float.Parse(Debit.Text);

        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("Debit");
            lblTotalPrice.Text = Debit1.ToString();
        }

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label Credit = (Label)e.Row.FindControl("lblCredit");
            Credit1 = Credit1 + float.Parse(Credit.Text);

        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalPrice = (Label)e.Row.FindControl("Credit");
            lblTotalPrice.Text = Credit1.ToString();
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
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
       // SqlCommand CMD = new SqlCommand("SELECT  CONVERT(datetime,date,101) as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM sales_entry as a where date='" + TextBox3.Text + "' and Com_Id='" + company_id + "' group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_entry as a where date='" + TextBox3.Text + "' and Com_Id='" + company_id + "' group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_amount as a where date='" + TextBox3.Text + "' and Com_Id='" + company_id + "' group by date,status,amount,value", con1);
        SqlCommand CMD = new SqlCommand("select date,status AS Particulars, sum(value) as Debit,sum(grand_total) as Credit  from sales_entry where date='" + TextBox3.Text + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,grand_total union select date,status AS Particulars, sum(paid_amount) as Debit,sum(value) as Credit  from purchase_entry where date='" + TextBox3.Text + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,paid_amount ORDER BY date asc", con1);
        
        DataTable dt1 = new DataTable();
        con1.Open();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
  
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
        if (TextBox3.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter From Date')", true);

        }
        else if (TextBox4.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter To Date')", true);
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
            //SqlCommand CMD = new SqlCommand("SELECT CONVERT(datetime,date,101) as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM sales_entry as a where date between '" + TextBox3.Text + "' and '" + TextBox4.Text + "' and Com_Id='" + company_id + "' group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(paid_amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_entry as a where date between '" + TextBox3.Text + "' and '" + TextBox4.Text + "' and Com_Id='" + company_id + "' group by date,status,paid_amount,value union SELECT DISTINCT date as Date, status as Particulars,sum(amount) as Debit,isnull(sum(value),0) as Credit FROM purchase_amount as a where date between '" + TextBox3.Text + "' and '" + TextBox4.Text + "' and Com_Id='" + company_id + "'   group by date,status,amount,value", con1);
            SqlCommand CMD = new SqlCommand("select date,status AS Particulars, sum(value) as Debit,sum(grand_total) as Credit  from sales_entry where date between '" + Convert.ToDateTime(TextBox3.Text).ToString("MM-dd-yyyy") + "' and '" + Convert.ToDateTime(TextBox4.Text).ToString("MM-dd-yyyy") + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,grand_total union select date,status AS Particulars, sum(paid_amount) as Debit,sum(value) as Credit  from purchase_entry where date between '" + Convert.ToDateTime(TextBox3.Text).ToString("MM-dd-yyyy") + "' and '" + Convert.ToDateTime(TextBox4.Text).ToString("MM-dd-yyyy") + "' and Com_Id='" + company_id + "' and year='" + Label1.Text + "' group by date,status,value,paid_amount ORDER BY date asc", con1);
            DataTable dt1 = new DataTable();
            con1.Open();
            SqlDataAdapter da1 = new SqlDataAdapter(CMD);
            da1.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
                }
                con1000.Close();
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox4.Text = "";
        show_category();
    }
}