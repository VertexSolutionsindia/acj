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

public partial class Adminuser_User_details : System.Web.UI.Page
{
    int no = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            
            BindData();
           
           
        }
    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label35.Text = ROW.Cells[0].Text;

       TextBox18.Text = ROW.Cells[1].Text;
       TextBox6.Text = ROW.Cells[2].Text;
       TextBox7.Text = ROW.Cells[3].Text;
       TextBox8.Text = ROW.Cells[4].Text;
       TextBox9.Text = ROW.Cells[5].Text;
       getdata();
        this.ModalPopupExtender19.Show();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("update Company_detail set company_name=@company_name,Address=@Address,Mobile_number=@Mobile_number,Tin_no=@Tin_no,Cst_no=@Cst_no where com_id='" + Label35.Text + "'", con);
        cmd.Parameters.AddWithValue("@company_name", TextBox18.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Mobile_number", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Tin_no", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Cst_no", TextBox9.Text);
   

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getdata();
        BindData();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Company details updated successfully')", true);
    }
    private void getdata()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from user_details where com_id='" + Label35.Text + "'", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label1.Text = ROW.Cells[0].Text;

        TextBox1.Text = ROW.Cells[1].Text;
        TextBox2.Text = ROW.Cells[2].Text;
        TextBox3.Text=ROW.Cells[4].Text;
        TextBox4.Text=ROW.Cells[5].Text;
        TextBox5.Text=ROW.Cells[6].Text;
       
     
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from role_details ORDER BY roleid asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "Rolename";
        DropDownList1.DataValueField = "roleid";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("-- Select item --", "0"));

        con.Close();
        DropDownList1.SelectedItem.Text = ROW.Cells[3].Text;
        this.ModalPopupExtender1.Show();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("update user_details set user_name=@user_name,password=@password,Roleid=@Roleid,rolename=@rolename,Name=@Name,Email=@Email,Mobile_no=@Mobile_no where user_id='" + Label1.Text + "'", con);
        cmd.Parameters.AddWithValue("@user_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Roleid", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@rolename", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox3.Text);
           cmd.Parameters.AddWithValue("@Email",TextBox4.Text);
        cmd.Parameters.AddWithValue("@Mobile_no",TextBox5.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getdata();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('User details created successfully')", true);
    
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
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[0].Text = "Page " + (GridView1.PageIndex + 1) + " of " + GridView1.PageCount;
        }
    }
    protected void BindData()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Company_detail", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
                        ImageButton IMG = (ImageButton)sender;
                        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
                        int number = Convert.ToInt32(ROW.Cells[0].Text);
                        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd = new SqlCommand("delete from user_details where user_id='" + number + "'", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('User details deleted successfully')", true);
                    }
         
      
        getdata();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
          string confirmValue = Request.Form["confirm_value"];
          if (confirmValue == "Yes")
          {
              ImageButton IMG = (ImageButton)sender;
              GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
              int number = Convert.ToInt32(ROW.Cells[0].Text);
              SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
              SqlCommand cmd = new SqlCommand("delete from Company_detail where com_id='" + number + "'", con);
              con.Open();
              cmd.ExecuteNonQuery();
              con.Close();


              SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
              SqlCommand cmd1 = new SqlCommand("delete from user_details where user_id='" + number + "'", con1);
              con1.Open();
              cmd1.ExecuteNonQuery();
              con1.Close();
              ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Company deleted successfully')", true);
          }
          BindData();
    }
}