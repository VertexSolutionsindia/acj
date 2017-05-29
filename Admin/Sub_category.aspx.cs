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


public partial class Admin_Sub_category : System.Web.UI.Page
{
    public static int  company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Form.DefaultButton = Button1.UniqueID;
            DropDownList3.Focus();
            DropDownList3.Attributes.Add("onkeypress", "return controlEnter('" + TextBox3.ClientID + "', event)");
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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label29.Text = ROW.Cells[1].Text;
        DropDownList4.SelectedItem.Text= ROW.Cells[2].Text;
        TextBox16.Text = ROW.Cells[3].Text;
       
        this.ModalPopupExtender3.Show();
    }
    protected void Button16_Click(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand("update subcategory set category_id='" + DropDownList4.SelectedItem.Value + "', category_name='" + HttpUtility.HtmlDecode(DropDownList4.SelectedItem.Text) + "', subcategoryname='" + HttpUtility.HtmlDecode(TextBox16.Text) + "' where subcategory_id='" + Label29.Text + "'  and Com_Id='" + company_id + "' ", CON);

                CON.Open();
                cmd.ExecuteNonQuery();
                CON.Close();
                Label31.Text = "Updated successfuly";

                this.ModalPopupExtender3.Hide();
                BindData();
                getinvoiceno();

            }
            con1000.Close();
        }
    }
    protected void Button17_Click(object sender, EventArgs e)
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
                SqlCommand cmd1 = new SqlCommand("delete from subcategory where subcategory_id='" + Label29.Text + "' and Com_Id='" + company_id + "' ", con1);
                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();


                Label31.Text = "Deleted successfuly";

                this.ModalPopupExtender3.Hide();
                BindData();
                getinvoiceno();
            }
            con1000.Close();
        }
  
    }
    protected void Button14_Click(object sender, EventArgs e)
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

                foreach (GridViewRow gvrow in GridView1.Rows)
                {
                    //Finiding checkbox control in gridview for particular row
                    CheckBox chkdelete = (CheckBox)gvrow.FindControl("CheckBox3");
                    //Condition to check checkbox selected or not
                    if (chkdelete.Checked)
                    {
                        //Getting UserId of particular row using datakey value
                        int usrid = Convert.ToInt32(gvrow.Cells[1].Text);
                        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

                        con.Open();
                        SqlCommand cmd = new SqlCommand("delete from subcategory where subcategory_id='" + usrid + "' and Com_Id='" + company_id + "'", con);
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                }
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Subcategory deleted successfully')", true);
                BindData();
                getinvoiceno();
            }
            con1000.Close();
        } 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedItem.Text == "All")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please Select valid category')", true);
        }
        else if (TextBox3.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter brand name')", true);
        }
        else
        {
             SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
             SqlCommand cmd1 = new SqlCommand("select * from subcategory where subcategoryname='" + TextBox3.Text + "' and category_name='"+DropDownList3.SelectedItem.Text+"'  and Com_Id='" + company_id + "' ", con1);
            con1.Open();
            SqlDataReader dr1;
            dr1=cmd1.ExecuteReader();
            if (dr1.HasRows)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Subcategory already exist')", true);
                TextBox3.Text = "";
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
                        SqlCommand cmd = new SqlCommand("insert into subcategory values(@subcategory_id,@subcategoryname,@category_id,@Com_Id,@category_name)", CON);
                        cmd.Parameters.AddWithValue("@subcategory_id", Label1.Text);
                        cmd.Parameters.AddWithValue("@subcategoryname", HttpUtility.HtmlDecode(TextBox3.Text));
                        cmd.Parameters.AddWithValue("@category_id", HttpUtility.HtmlDecode(DropDownList3.SelectedItem.Value));
                        cmd.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd.Parameters.AddWithValue("@category_name", DropDownList3.SelectedItem.Text);
                        CON.Open();
                        cmd.ExecuteNonQuery();
                        CON.Close();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Subcategory created successfully')", true);
                        BindData();
                        show_category();
                        getinvoiceno();
                        TextBox3.Text = "";
                    }
                    con1000.Close();
                }
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        getinvoiceno();
        show_category();
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

                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from subcategory where Com_Id='" + company_id + "' ORDER BY subcategory_id asc", con);
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                da1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
            }
            con1000.Close();
        }
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

                ImageButton img = (ImageButton)sender;
                GridViewRow row = (GridViewRow)img.NamingContainer;
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("delete from subcategory where subcategory_id='" + row.Cells[1].Text + "' and Com_Id='" + company_id + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sub-Category deleted successfully')", true);

                BindData();
                show_category();
                getinvoiceno();
            }
            con1000.Close();
        }
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
            con1000.Close();
        }
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
                cmd.CommandText = "select distinct subcategoryname from subcategory where Com_Id=@Com_Id and " +
                "subcategoryname like @subcategoryname + '%'";
                cmd.Parameters.AddWithValue("@subcategoryname", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
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

                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("Select * from subcategory where category_id='" + DropDownList2.SelectedItem.Value + "' and Com_Id='" + company_id + "'", con);
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


                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from subcategory where category_id='" + DropDownList2.SelectedItem.Value + "' and Com_Id='" + company_id + "' ORDER BY subcategory_id asc", con1);
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

                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("Select * from category where Com_Id='" + company_id + "' ORDER BY category_id asc", con);
                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);


                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "categoryname";
                DropDownList2.DataValueField = "category_id";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("All", "0"));


                DropDownList3.DataSource = ds;
                DropDownList3.DataTextField = "categoryname";
                DropDownList3.DataValueField = "category_id";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("All", "0"));

                DropDownList4.DataSource = ds;
                DropDownList4.DataTextField = "categoryname";
                DropDownList4.DataValueField = "category_id";
                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, new ListItem("All", "0"));
                con.Close();
            }
            con1000.Close();
        }
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
        BindData();
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
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Focus();
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
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
                SqlCommand CMD = new SqlCommand("select * from subcategory where subcategoryname='" + TextBox1.Text + "' and Com_Id='" + company_id + "'", con1);
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
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void TextBox3_Load(object sender, EventArgs e)
    {
       
    }
   
}