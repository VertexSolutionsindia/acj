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

public partial class RabbitAccount : System.Web.UI.Page
{


    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            
            showcustomertype();
            showrating();
            BindData();
            DropDownList1.Items.Insert(0, new ListItem("All", "0"));
            active();
                created();
        }

    }
    private void active()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Active where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList5.DataSource = ds;
        DropDownList5.DataTextField = "Active";
        DropDownList5.DataValueField = "No";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
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
         company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Created where com_id='"+company_id+"' ORDER BY No asc", con);
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
    protected void BindData()
    {
        
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from account_entry where com_id='"+company_id+"'", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
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
        Response.Redirect("~/Admin/accountsadd.aspx");
    }
   
    private void showcustomertype()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accountcustomer_type where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Accountcustomer_type";
        DropDownList2.DataValueField = "No";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    private void showrating()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accoun_rating where com_id='"+company_id+"' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList6.DataSource = ds;
        DropDownList6.DataTextField = "Accoun_rating";
        DropDownList6.DataValueField = "No";
        DropDownList6.DataBind();
        DropDownList6.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
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
}