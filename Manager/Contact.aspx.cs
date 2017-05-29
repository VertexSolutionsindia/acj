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

public partial class Admin_Contact : System.Web.UI.Page
{

    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            created();
            Modified();
            BindData();



        }
    }
    protected void BindData()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from contact_entry where com_id='"+company_id+"' ", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    private void Modified()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Modified where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList3.DataSource = ds;
        DropDownList3.DataTextField = "Modified";
        DropDownList3.DataValueField = "No";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("All", "0"));

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


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Created";
        DropDownList2.DataValueField = "No";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

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
        Response.Redirect("~/Admin/Addcontact.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;


        LinkButton Lnk = (LinkButton)sender;
        string name = Lnk.Text;
        Session["name"] = name;
        Response.Redirect("Contact_show.aspx");


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