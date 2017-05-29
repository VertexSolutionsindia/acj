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


using System.ComponentModel;

using System.Drawing;

using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;
using System.Net;
#endregion


public partial class SMS : System.Web.UI.Page
{
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            contact();
            contact1();
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
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {     string name ="";
         String value1 = TextBox1.Text;
        Char delimiter1 = ',';
        String[] substrings1 = value1.Split(delimiter1);
        foreach (var substring1 in substrings1)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd1 = new SqlCommand("select * from add_contact where Mobile_number='" + substring1 + "'", con1);
            con1.Open();
              SqlDataReader dr1;
            dr1=cmd1.ExecuteReader();
            if(dr1.Read())
            {
                 name = name + dr1["Customer_name"].ToString() + "-" + dr1["Mobile_number"].ToString()+",";
            }
                
        }

            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            SqlCommand cmd = new SqlCommand("insert into Sms_Details values(@mobile_no,@message,@com_id)", con);
            cmd.Parameters.AddWithValue("@mobile_no",name);
            cmd.Parameters.AddWithValue("@message", TextBox2.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
       
       

        String value = TextBox1.Text;
        Char delimiter = ',';
        String[] substrings = value.Split(delimiter);
        foreach (var substring in substrings)
        {


            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=nazeer.sheik@vertexsolution.co.in:vertex&senderID=TEST SMS&receipientno=" + substring + "&dcs=0&msgtxt=" + TextBox2.Text + "&state=4 ";
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
            strUrl = "";
        }
     
       ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('SMS sent successfully')", true);
        
        TextBox1.Text = "";
        TextBox2.Text= "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text =TextBox1.Text+ " ,";
    
    }
    private void contact()
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
        SqlCommand CMD = new SqlCommand("select * from add_contact where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView41.DataSource = dt1;
        GridView41.DataBind();






    }
    private void contact1()
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
        SqlCommand CMD = new SqlCommand("select * from sms_group where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();






    }
    protected void GridView41_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView41.SelectedRow;

        TextBox4.Text = TextBox4.Text+ row.Cells[2].Text + ",";
      
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox4.Text;
        ModalPopupExtender19.Hide();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        TextBox3.Text = TextBox3.Text + row.Cells[2].Text;

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox3.Text;
        ModalPopupExtender1.Hide();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}