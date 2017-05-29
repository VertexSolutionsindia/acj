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

public partial class Taskadd : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TYPE();


            DropDownList1.Items.Insert(0, new ListItem("-- Choose Option --", "0"));



        }

        DateTime date = Convert.ToDateTime(DateTime.Today);
        TextBox5.Text = date.ToString();
    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    private void TYPE()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("Select * from Accoun_Tasktype where com_id='" + company_id + "' ORDER BY No asc", con);
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);


        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Accoun_Tasktype";
        DropDownList2.DataValueField = "No";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("All", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd = new SqlCommand("insert into task_entry values(@Task,@type,@assigned_to,@Priority,@due_date,@due_time,@summary,@reminder,@com_id)", con);
        cmd.Parameters.AddWithValue("@Task",TextBox2.Text);
        cmd.Parameters.AddWithValue("@type",DropDownList2.SelectedItem.Text);
           cmd.Parameters.AddWithValue("@assigned_to",DropDownList3.SelectedItem.Text);
           cmd.Parameters.AddWithValue("@Priority",DropDownList1.SelectedItem.Text);
           cmd.Parameters.AddWithValue("@due_date",Convert.ToDateTime( TextBox5.Text));
           cmd.Parameters.AddWithValue("@due_time",DropDownList4.SelectedItem.Text);
           cmd.Parameters.AddWithValue("@summary",TextBox1.Text);
        if(CheckBox1.Checked==true)
        {
            
            cmd.Parameters.AddWithValue("@reminder",CheckBox1.Text);
        }
        else if (CheckBox2.Checked == true)
        {
            cmd.Parameters.AddWithValue("@reminder", CheckBox2.Text);
        }
        cmd.Parameters.AddWithValue("@com_id", company_id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Task created successfully')", true);
           
    }
}