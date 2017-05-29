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

public partial class Admin_Customer_Wholesale : System.Web.UI.Page
{
    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox3.Attributes.Add("onkeypress", "return controlEnter('" + TextBox2.ClientID + "', event)");
            TextBox2.Attributes.Add("onkeypress", "return controlEnter('" + TextBox9.ClientID + "', event)");
          
            getinvoiceno();
            show_category();
            showrating();
            BindData();
            show_type();
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
        TextBox16.Text = ROW.Cells[2].Text;
        TextBox6.Text = ROW.Cells[3].Text;
        TextBox10.Text = ROW.Cells[4].Text;
        TextBox17.Text = ROW.Cells[5].Text;
        TextBox18.Text = ROW.Cells[6].Text;
        TextBox7.Text = ROW.Cells[7].Text;
        TextBox8.Text = ROW.Cells[8].Text;
        TextBox12.Text = ROW.Cells[9].Text;
        TextBox13.Text = ROW.Cells[10].Text;
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

            }
            con1000.Close();
        }

        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update customer_wholesale set WSCustomer_Name='" + HttpUtility.HtmlDecode(TextBox16.Text) + "',WSCustomer_Add='" + HttpUtility.HtmlDecode(TextBox6.Text) + "',Mobile_no='" + HttpUtility.HtmlDecode(TextBox17.Text) + "',tin_no='" + HttpUtility.HtmlDecode(TextBox18.Text) + "', cst_no='" + HttpUtility.HtmlDecode(TextBox10.Text) + "',  Profession='" + HttpUtility.HtmlDecode(TextBox7.Text) + "',Customer_Type='" + HttpUtility.HtmlDecode(TextBox8.Text) + "',friend_name='" + HttpUtility.HtmlDecode(TextBox12.Text) + "',Friend_mobile_No='" + HttpUtility.HtmlDecode(TextBox13.Text) + "' where WSCustomer_code='" + Label29.Text + "'  and Com_Id='" + company_id + "'", CON);

        CON.Open();
        cmd.ExecuteNonQuery();
        CON.Close();
        Label31.Text = "Updated successfuly";

        this.ModalPopupExtender3.Hide();
        BindData();
        getinvoiceno();


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

            }
            con1000.Close();
        }

        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("delete from customer_wholesale where WSCustomer_code='" + Label29.Text + "'  and Com_Id='" + company_id + "' ", con1);
        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();


        Label31.Text = "Deleted successfuly";

        this.ModalPopupExtender3.Hide();
        BindData();
        getinvoiceno();

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
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
                SqlCommand cmd = new SqlCommand("delete from customer_wholesale where WSCustomer_code='" + usrid + "' and Com_Id='" + company_id + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }
        BindData();
        getinvoiceno();

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

        if (TextBox3.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter customer name')", true);

        }
        else if (TextBox9.Text == "")
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
            SqlCommand cmd = new SqlCommand("insert into customer_wholesale values(@WSCustomer_code,@WSCustomer_Name,@WSCustomer_Add,@Mobile_no,@Profession,@Customer_Type,@Com_Id,@friend_name,@Friend_mobile_No)", CON);
            cmd.Parameters.AddWithValue("@WSCustomer_code", Label1.Text);
            cmd.Parameters.AddWithValue("@WSCustomer_Name", HttpUtility.HtmlDecode(TextBox3.Text));
            cmd.Parameters.AddWithValue("@WSCustomer_Add", HttpUtility.HtmlDecode(TextBox2.Text));
            cmd.Parameters.AddWithValue("@Mobile_no", HttpUtility.HtmlDecode(TextBox9.Text));
            cmd.Parameters.AddWithValue("@Profession", HttpUtility.HtmlDecode(TextBox4.Text));
            cmd.Parameters.AddWithValue("@Customer_Type", HttpUtility.HtmlDecode(DropDownList1.SelectedItem.Text));
            cmd.Parameters.AddWithValue("@Com_Id", company_id);
            cmd.Parameters.AddWithValue("@friend_name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Friend_mobile_No", TextBox11.Text);
            cmd.Parameters.AddWithValue("@tin_no", TextBox14.Text);
            cmd.Parameters.AddWithValue("@cst_no", TextBox15.Text);
            CON.Open();
            cmd.ExecuteNonQuery();
            CON.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Wholesale Customer Entry created successfully')", true);
            BindData();
            show_category();
            getinvoiceno();
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            show_type();
            TextBox9.Text = "";
            show_category();
            TextBox5.Text = "";
            TextBox11.Text = "";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox9.Text = "";
        getinvoiceno();
        show_category();
        show_type();
        TextBox5.Text = "";
        TextBox11.Text = "";
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
        SqlCommand CMD = new SqlCommand("select * from customer_wholesale where Com_Id='" + company_id + "' ORDER BY WSCustomer_code asc", con);
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
        SqlCommand cmd = new SqlCommand("delete from customer_wholesale where WSCustomer_code='" + row.Cells[1].Text + "' and Com_Id='" + company_id + "' ", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Customer Details deleted successfully')", true);

        BindData();
        show_category();
        getinvoiceno();


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
        string query = "Select Max(WSCustomer_code) from customer_wholesale where Com_Id='" + company_id + "'";
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
        SqlCommand cmd = new SqlCommand("Select * from customer_wholesale where Com_Id='" + company_id + "' ORDER BY WSCustomer_code asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "WSCustomer_Name";
        DropDownList2.DataValueField = "WSCustomer_code";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}