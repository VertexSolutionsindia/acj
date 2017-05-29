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

public partial class Rabbitproduct : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            showdropdown();
            BindData();
            active();
            created();


            company_id = Convert.ToInt32(Session["company_id"].ToString());
          
        }
        if (!IsPostBack)
        {
          
        }

    }
     protected void BindData()
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
             SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Product_entry where com_id='"+company_id+"'", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    private void showdropdown()
     {
         company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Product_category where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "Product_category";
        DropDownList1.DataValueField = "No";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void active()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Active where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Active";
        DropDownList2.DataValueField = "No";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void created()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Created where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Created";
        DropDownList3.DataValueField = "No";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["name1"] = "";
        Response.Redirect("~/Admin/productadd.aspx");
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
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        int na =Convert.ToInt32( DropDownList4.SelectedItem.Text);
        if ( na== 5)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select top 5 * from Product_entry where com_id='" + company_id + "' ", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        else if (na == 10)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select top 10 * from Product_entry where com_id='" + company_id + "' ", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
       
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string date = grdrow.Cells[4].Text;
        string part_no = grdrow.Cells[1].Text;
        string category = grdrow.Cells[2].Text;
        string price = grdrow.Cells[3].Text;
        LinkButton Lnk = (LinkButton)sender;
        string name = Lnk.Text;
        Session["part_no"] = part_no;
        Session["category"] = category;
        Session["price"] = price;
        Session["date"] = date;
        Session["name"] = name;
        Response.Redirect("Product_show.aspx");
       

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Product_entry where status='" + DropDownList2.SelectedItem.Text + "' and com_id='" + company_id + "'", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}