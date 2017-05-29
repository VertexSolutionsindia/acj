using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Settings : System.Web.UI.Page
{
    int company_id = 0;
    int no = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
           
        
            contact();
          
            SMSGROUP();
            emailGROUP();


            contact1();
            contact2();
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
    protected void ImageButton122_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label163.Text = ROW.Cells[0].Text;
        TextBox84.Text = ROW.Cells[1].Text;
        TextBox86.Text = ROW.Cells[2].Text;
        TextBox88.Text = ROW.Cells[3].Text;
        this.ModalPopupExtender82.Show();

    }
    protected void ImageButton123_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
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


        SqlCommand cmd = new SqlCommand("delete from add_contact where No='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        contact();
    }
    protected void Button207_Click(object sender, EventArgs e)
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
        SqlCommand cmd = new SqlCommand("update add_contact set Customer_name=@Customer_name,Mobile_number=@Mobile_number,Email_add=@Email_add where No='" + Label163.Text + "' and com_id='" + company_id + "'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Customer_name", TextBox84.Text);
        cmd.Parameters.AddWithValue("@Mobile_number", TextBox86.Text);
        cmd.Parameters.AddWithValue("@Email_add", TextBox88.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        contact();
      
    }
    protected void Button204_Click(object sender, EventArgs e)
    {
        if (TextBox83.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter contact name')", true);
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
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into add_contact values(@Customer_name,@Mobile_number,@com_id,@Email_add)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Customer_name", TextBox83.Text);
            cmd.Parameters.AddWithValue("@Mobile_number", TextBox85.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.Parameters.AddWithValue("@Email_add", TextBox87.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox83.Text = "";
            TextBox85.Text = "";
            TextBox87.Text = "";
            contact();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Contact created successfully')", true);
        }
    }
    protected void GridView41_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

  
    private void SMSGROUP()
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
        GridView43.DataSource = dt1;
        GridView43.DataBind();






    }
    protected void ImageButton128_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        TextBox92.Text = ROW.Cells[0].Text;
        TextBox90.Text = ROW.Cells[1].Text;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from sms_group where sms_group_name='" + ROW.Cells[0].Text + "'  and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label18.Text = no.ToString();
        }
        this.ModalPopupExtender86.Show();

    }
    protected void ImageButton129_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
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


        SqlCommand cmd = new SqlCommand("delete from sms_group where sms_group_name='" + ROW.Cells[0].Text + "'  and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SMSGROUP();
    }


    protected void Button217_Click(object sender, EventArgs e)
    {


          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update sms_group set sms_group_name=@sms_group_name,sms_group_contact=@sms_group_contact where No='" + Label18.Text + "' and com_id='" + company_id + "'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@sms_group_name", TextBox92.Text);
        cmd.Parameters.AddWithValue("@sms_group_contact", TextBox90.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        SMSGROUP();



    }
    protected void Button214_Click(object sender, EventArgs e)
    {
        if (TextBox91.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Compaign Type ')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
              SqlCommand cmd = new SqlCommand("insert into sms_group values(@sms_group_name,@sms_group_contact,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@sms_group_name", TextBox91.Text);
            cmd.Parameters.AddWithValue("@sms_group_contact", TextBox89.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox91.Text = "";
            SMSGROUP();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sms group type created successfully')", true);
        }
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
        SqlCommand CMD = new SqlCommand("select * from add_contact where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView44.DataSource = dt1;
        GridView44.DataBind();






    }
    protected void GridView44_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView44.SelectedRow;

        TextBox89.Text = TextBox89.Text + row.Cells[2].Text + ",";

    }







    private void emailGROUP()
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
        SqlCommand CMD = new SqlCommand("select * from Email_group where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView45.DataSource = dt1;
        GridView45.DataBind();






    }
    protected void ImageButton126_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        TextBox95.Text = ROW.Cells[0].Text;
        TextBox96.Text = ROW.Cells[1].Text;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Email_group where Email_group_name='" + ROW.Cells[0].Text + "'  and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label8.Text = no.ToString();
        }
        this.ModalPopupExtender84.Show();

    }
    protected void ImageButton125_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Email_group where Email_group_name='" + ROW.Cells[0].Text + "'  and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        emailGROUP();
    }


    protected void Button212_Click(object sender, EventArgs e)
    {


        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Email_group set Email_group_name=@Email_group_name,Email_group_contact=@Email_group_contact where No='" + Label8.Text + "' and com_id='" + company_id + "'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Email_group_name", TextBox95.Text);
        cmd.Parameters.AddWithValue("@Email_group_contact", TextBox96.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        emailGROUP();



    }
    protected void Button209_Click(object sender, EventArgs e)
    {
        if (TextBox93.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Compaign Type ')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString()); SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Email_group values(@Email_group_name,@Email_group_contact,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Email_group_name", TextBox93.Text);
            cmd.Parameters.AddWithValue("@Email_group_contact", TextBox94.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox93.Text = "";
            TextBox94.Text = "";
            emailGROUP();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Email group type created successfully')", true);
        }
    }
    private void contact2()
    {

        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from add_contact where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView42.DataSource = dt1;
        GridView42.DataBind();






    }
    protected void GridView42_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView42.SelectedRow;

        TextBox94.Text = TextBox94.Text + row.Cells[2].Text + ",";

    }





   

}