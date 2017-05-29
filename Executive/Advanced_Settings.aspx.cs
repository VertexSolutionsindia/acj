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
            email();
            getcompaign();
            getcompaignstatus();
            getcompaignresponce();
            getleadstatus();
            getleadsource();
            getleadpriority();
            getleadoppornity_stage();
            getleadwonreason();
            getleadlostreason();
            getacountcustomer_type();
           getAccountowner_ship();
           getaccountrating();
           getaccountsegment();
           getaccountcompititor();
           getAcountNoofemployees();
           getAccountindustry();
            getaccountnaetitle();
            getAccountdesignation();
            getAccountCountry();
            getAccountTaskstatus();
            getAccounttasktype();
            getQuotestage();
            getQuoteValidity();
            getQuotedeleiveryleadtime();
            getquoteshipping();
            getPaymentterms();
            getticket_status();
            getSeverity();
            getAwarrantytype();
            getsales_order_stage();
            getinvoice();
            getproductcategory();
            getproducttype();
            getTax_Type();
            gettax();
            getCurrency();
            created();
            Active();
            Modified();
            contact();
            email();
            SMSGROUP();
            contact1();
        }
      
    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

    }
   
    private void getcompaign()
    {
     
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Compaign_type where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView6.DataSource = dt1;
        GridView6.DataBind();






    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
       
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        TextBox18.Text = ROW.Cells[0].Text;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Compaign_type where Compaign_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label35.Text = no.ToString();
        }
        this.ModalPopupExtender7.Show();

    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
      
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Compaign_type where Compaign_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getcompaign();
    }
   
   
    protected void Button34_Click(object sender, EventArgs e)
    {

        company_id = Convert.ToInt32(Session["company_id"].ToString());
          SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand cmd = new SqlCommand("update Compaign_type set Compaign_type=@Compaign_type where No='" + Label35.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Compaign_type", TextBox18.Text);
            cmd.ExecuteNonQuery();
            CON.Close();
            getcompaign();
          
     
       
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Compaign Type ')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Compaign_type values(@Compaign_type,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Compaign_type", TextBox8.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox8.Text = "";
            getcompaign();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Compaign type created successfully')", true);
        }
    }
    private void  getcompaignstatus()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Compaign_Status where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();






    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        TextBox2.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Compaign_Status where Compaign_Status='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label3.Text = no.ToString();
        }
        this.ModalPopupExtender2.Show();

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Compaign_Status where Compaign_Status='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getcompaignstatus();
       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Compaign_Status set Compaign_Status=@Compaign_Status where No='" + Label3.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Compaign_Status", TextBox2.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getcompaignstatus();

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        if (TextBox1.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Compaign Status ')", true);
        }
        else
        {
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Compaign_Status values(@Compaign_Status,@com_id)", CON);
           
            CON.Open();
            cmd.Parameters.AddWithValue("@Compaign_Status", TextBox1.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox1.Text = "";
            getcompaignstatus();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Compaign status created successfully')", true);
        }
    }
    private void getcompaignresponce()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Compaign_responce where com_id='"+company_id+"'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();






    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        TextBox4.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Compaign_responce where Compaign_responce='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label7.Text = no.ToString();
        }
        this.ModalPopupExtender4.Show();

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        company_id = Convert.ToInt32(Session["company_id"].ToString());


        SqlCommand cmd = new SqlCommand("delete from Compaign_responce where Compaign_responce='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getcompaignresponce();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Compaign_responce set Compaign_responce=@Compaign_responce where No='" + Label7.Text + "' and com_id='"+company_id+"' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Compaign_responce", TextBox4.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getcompaignresponce();
       
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Compaign responce')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());

            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Compaign_responce values(@Compaign_responce,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Compaign_responce", TextBox3.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox3.Text = "";
            getcompaignresponce();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Compaign responce created successfully')", true);
        }
    }





    private void getleadstatus()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_status where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView3.DataSource = dt1;
        GridView3.DataBind();






    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox6.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_status  where Lead_status ='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label11.Text = no.ToString();
        }
        this.ModalPopupExtender8.Show();

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_status where Lead_status='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadstatus();
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_status set Lead_status=@Lead_status where No='" + Label11.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_status", TextBox6.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadstatus();
      
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter lead status')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_status values(@Lead_status,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_status", TextBox5.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox5.Text = "";
            getleadstatus();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead status created successfully')", true);
        }
    }

    private void getleadsource()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_source where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView4.DataSource = dt1;
        GridView4.DataBind();






    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox9.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_source where Lead_source='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label15.Text = no.ToString();
        }
        this.ModalPopupExtender10.Show();

    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_source where Lead_source='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadsource();
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_source set Lead_source=@Lead_source where No='" + Label15.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_source", TextBox9.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadsource();
      
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        if (TextBox7.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter lead source')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_source values(@Lead_source,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_source", TextBox7.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox7.Text = "";
            getleadsource();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead source created successfully')", true);
        }
    }




    private void getleadpriority()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_Priority where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView5.DataSource = dt1;
        GridView5.DataBind();






    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox11.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_Priority where Lead_Priority='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label19.Text = no.ToString();
        }
        this.ModalPopupExtender12.Show();

    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_Priority where Lead_Priority='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadpriority();
    }
    protected void Button25_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_Priority set Lead_Priority=@Lead_Priority where No='" + Label19.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_Priority", TextBox11.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadpriority();
      
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        if (TextBox10.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Lead Priority')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_Priority values(@Lead_Priority,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_Priority", TextBox10.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox10.Text = "";
            getleadpriority();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead Priority created successfully')", true);
        }
    }

    private void getleadoppornity_stage()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_Opportunity_stage where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView7.DataSource = dt1;
        GridView7.DataBind();






    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        
        TextBox13.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_Opportunity_stage where Lead_Opportunity_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label24.Text = no.ToString();
        }
        this.ModalPopupExtender14.Show();

    }
    protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_Opportunity_stage where Lead_Opportunity_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadoppornity_stage();
       
    }
    protected void Button30_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_Opportunity_stage set Lead_Opportunity_stage=@Lead_Opportunity_stage where No='" + Label24.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_Opportunity_stage", TextBox13.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadoppornity_stage();
      
    }
    protected void Button27_Click(object sender, EventArgs e)
    {
        if (TextBox12.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Lead Opportunity')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_Opportunity_stage values(@Lead_Opportunity_stage,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_Opportunity_stage", TextBox12.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox12.Text = "";
            getleadoppornity_stage();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead Opportunity created successfully')", true);
        }
    }



    private void getleadwonreason()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_Won_Reason where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView8.DataSource = dt1;
        GridView8.DataBind();






    }
    protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox15.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_Won_Reason where Lead_Won_Reason='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label28.Text = no.ToString();
        }
        this.ModalPopupExtender16.Show();

    }
    protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_Won_Reason where Lead_Won_Reason='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadwonreason();
    }
    protected void Button40_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_Won_Reason set Lead_Won_Reason=@Lead_Won_Reason where No='" + Label28.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_Won_Reason", TextBox15.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadwonreason();
      
    }
    protected void Button37_Click(object sender, EventArgs e)
    {
        if (TextBox14.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Lead Won Reason')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_Won_Reason values(@Lead_Won_Reason,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_Won_Reason", TextBox14.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox14.Text = "";
            getleadwonreason();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead Won Reason created successfully')", true);

        }
    }

    private void getleadlostreason()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Lead_Lost_Reason where  com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView9.DataSource = dt1;
        GridView9.DataBind();






    }
    protected void ImageButton26_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox17.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Lead_Lost_Reason where Lead_Lost_Reason='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label32.Text = no.ToString();
        }
        this.ModalPopupExtender18.Show();

    }
    protected void ImageButton27_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Lead_Lost_Reason where Lead_Lost_Reason='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"' and com_id='" + company_id + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getleadlostreason();
    }
    protected void Button45_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Lead_Lost_Reason set Lead_Lost_Reason=@Lead_Lost_Reason where No='" + Label32.Text + "' and com_id='" + company_id + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Lead_Lost_Reason", TextBox17.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getleadlostreason();
        
    }
    protected void Button42_Click(object sender, EventArgs e)
    {
        if (TextBox16.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Lead Lost Reason')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Lead_Lost_Reason values(@Lead_Lost_Reason,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Lead_Lost_Reason", TextBox16.Text);
            
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox16.Text = "";
            getleadlostreason();
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Lead Lost Reason created successfully')", true);
        }
    }

    private void getacountcustomer_type()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Accountcustomer_type where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView10.DataSource = dt1;
        GridView10.DataBind();

        company_id = Convert.ToInt32(Session["company_id"].ToString());




    }
    protected void ImageButton29_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        
        TextBox20.Text = ROW.Cells[0].Text;
           
         company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accountcustomer_type where Accountcustomer_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label39.Text = no.ToString();
        }
        this.ModalPopupExtender20.Show();

    }
    protected void ImageButton30_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accountcustomer_type where Accountcustomer_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getacountcustomer_type();
    }
    protected void Button50_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());

        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accountcustomer_type set Accountcustomer_type=@Accountcustomer_type where No='" + Label39.Text + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Accountcustomer_type", TextBox20.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getacountcustomer_type();
     
    }
    protected void Button47_Click(object sender, EventArgs e)
    {
        if (TextBox19.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Customer Type')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());

            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accountcustomer_type values(@Accountcustomer_type,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Accountcustomer_type", TextBox19.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox19.Text = "";
            getacountcustomer_type();
              ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Customer Type created successfully')", true);
        }
    }



     private void getAccountowner_ship()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());


        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Accountowner_ship where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView11.DataSource = dt1;
        GridView11.DataBind();






    }
    protected void ImageButton32_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        TextBox22.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accountowner_ship where Accountowner_ship='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label43.Text = no.ToString();
        }
        this.ModalPopupExtender22.Show();

    }
    protected void ImageButton33_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlCommand cmd = new SqlCommand("delete from Accountowner_ship where Accountowner_ship='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountowner_ship();
    }
    protected void Button55_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accountowner_ship set Accountowner_ship=@Accountowner_ship where No='" + Label43.Text + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Accountowner_ship", TextBox22.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
       getAccountowner_ship();
       
    }
    protected void Button52_Click(object sender, EventArgs e)
    {
        if (TextBox21.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account ownership')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accountowner_ship values(@Accountowner_ship,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Accountowner_ship", TextBox21.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox21.Text = "";
            getAccountowner_ship();
              ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account ownership created successfully')", true);
        }
    }




    private void getaccountrating()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Accoun_rating where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView12.DataSource = dt1;
        GridView12.DataBind();






    }
    protected void ImageButton35_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        TextBox24.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accoun_rating where Accoun_rating='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label47.Text = no.ToString();
        }
        this.ModalPopupExtender24.Show();

    }
    protected void ImageButton36_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accoun_rating where Accoun_rating='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getaccountrating();
    }
    protected void Button60_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accoun_rating set Accoun_rating=@Accoun_rating where No='" + Label47.Text + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Accoun_rating", TextBox24.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getaccountrating();
      
    }
    protected void Button57_Click(object sender, EventArgs e)
    {
        if (TextBox23.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Ratings')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accoun_rating values(@Accoun_rating,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Accoun_rating", TextBox23.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox23.Text = "";
            getaccountrating();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Ratings created successfully')", true);
        }
    }



    private void getaccountsegment()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Segment where com_id='"+company_id+"'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView13.DataSource = dt1;
        GridView13.DataBind();






    }
    protected void ImageButton38_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        TextBox26.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Segment where Segment='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label51.Text = no.ToString();
        }
        this.ModalPopupExtender26.Show();

    }
    protected void ImageButton39_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Segment where Segment='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getaccountsegment();
    }
    protected void Button65_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Segment set Segment=@Segment where No='" + Label51.Text + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Segment", TextBox26.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getaccountsegment();
      
    }
    protected void Button62_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        if (TextBox25.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter segment')", true);
        }
        else
        {
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Segment values(@Segment,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Segment", TextBox25.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox25.Text = "";
            getaccountsegment();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Segment created successfully')", true);
        }
    }





    private void getaccountcompititor()
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Account_compititor where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView14.DataSource = dt1;
        GridView14.DataBind();






    }
    protected void ImageButton41_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        TextBox28.Text = ROW.Cells[0].Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Account_compititor where Account_compititor='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label55.Text = no.ToString();
        }
        this.ModalPopupExtender28.Show();

    }
    protected void ImageButton42_Click(object sender, ImageClickEventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Account_compititor where Account_compititor='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getaccountcompititor();
    }
    protected void Button70_Click(object sender, EventArgs e)
    {
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Account_compititor set Account_compititor=@Account_compititor where No='" + Label55.Text + "' and com_id='"+company_id+"'", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Account_compititor", TextBox28.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        getaccountcompititor();
       
    }
    protected void Button67_Click(object sender, EventArgs e)
    {
        if (TextBox27.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Compititors')", true);
        }
        else
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
            SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Account_compititor values(@Account_compititor,@com_id)", CON);

            CON.Open();
            cmd.Parameters.AddWithValue("@Account_compititor", TextBox27.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            CON.Close();
            TextBox27.Text = "";
            getaccountcompititor();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account compititors created successfully')", true);
        }
    }




    private void getAcountNoofemployees()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Account_No_of_employees where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView15.DataSource = dt1;
        GridView15.DataBind();






    }
    protected void ImageButton44_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox30.Text = ROW.Cells[0].Text;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Account_No_of_employees where Account_No_of_employees='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label59.Text = no.ToString();
        }
        this.ModalPopupExtender30.Show();

    }
    protected void ImageButton45_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Account_No_of_employees where Account_No_of_employees='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAcountNoofemployees();
    }
    protected void Button75_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Account_No_of_employees set Account_No_of_employees=@Account_No_of_employees where No='" + Label59.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Account_No_of_employees", TextBox30.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAcountNoofemployees();
      
    }
    protected void Button72_Click(object sender, EventArgs e)
    {
        if (TextBox29.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account No Of Employees')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Account_No_of_employees values(@Account_No_of_employees,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Account_No_of_employees", TextBox29.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox29.Text = "";
            getAcountNoofemployees();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account No Of Employees created successfully')", true);
        }
    }




    private void getAccountindustry()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Account_Industry where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView16.DataSource = dt1;
        GridView16.DataBind();






    }
    protected void ImageButton47_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox18.Text = ROW.Cells[0].Text;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Account_Industry where Account_Industry='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label63.Text = no.ToString();
        }
        this.ModalPopupExtender32.Show();

    }
    protected void ImageButton48_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Account_Industry where Account_Industry='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountindustry();
    }
    protected void Button80_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Account_Industry set Account_Industry=@Account_Industry where No='" + Label63.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Account_Industry", TextBox32.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountindustry();
      
    }
    protected void Button77_Click(object sender, EventArgs e)
    {
        if (TextBox31.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Industry')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Account_Industry values(@Account_Industry,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Account_Industry", TextBox31.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox31.Text = "";
            getAccountindustry();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Industry created successfully')", true);
        }
    }




    private void getaccountnaetitle()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Account_nametitle where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView17.DataSource = dt1;
        GridView17.DataBind();






    }
    protected void ImageButton50_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox34.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Account_nametitle where Account_nametitle='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label67.Text = no.ToString();
        }
        this.ModalPopupExtender34.Show();

    }
    protected void ImageButton51_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Account_nametitle where Account_nametitle='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getaccountnaetitle();
    }
    protected void Button85_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Account_nametitle set Account_nametitle=@Account_nametitle where No='" + Label67.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Account_nametitle", TextBox34.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getaccountnaetitle();
       
    }
    protected void Button82_Click(object sender, EventArgs e)
    {
        if (TextBox33.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Name title')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Account_nametitle values(@Account_nametitle,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Account_nametitle", TextBox33.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox33.Text = "";
            getaccountnaetitle();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Name title created successfully')", true);
        }
    }




    private void getAccountdesignation()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Accoun_Designation where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView18.DataSource = dt1;
        GridView18.DataBind();






    }
    protected void ImageButton53_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox36.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accoun_Designation where Accoun_Designation='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label71.Text = no.ToString();
        }
        this.ModalPopupExtender36.Show();

    }
    protected void ImageButton54_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accoun_Designation where Accoun_Designation='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountdesignation();
    }
    protected void Button90_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accoun_Designation set Accoun_Designation=@Accoun_Designation where No='" + Label71.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Accoun_Designation", TextBox36.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountdesignation();
     
    }
    protected void Button87_Click(object sender, EventArgs e)
    {
        if (TextBox35.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Designation')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString()); 
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accoun_Designation values(@Accoun_Designation,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Accoun_Designation", TextBox35.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox35.Text = "";
            getAccountdesignation();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Designation created successfully')", true);
        }
    }



    private void getAccountCountry()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Accoun_Country where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView19.DataSource = dt1;
        GridView19.DataBind();






    }
    protected void ImageButton56_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;

        TextBox38.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accoun_Country where Accoun_Country='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label75.Text = no.ToString();
        }
        this.ModalPopupExtender38.Show();

    }
    protected void ImageButton57_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accoun_Country where Accoun_Country='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountCountry();
    }
    protected void Button95_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accoun_Country set Accoun_Country=@Accoun_Country where No='" + Label75.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Accoun_Country", TextBox38.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountCountry();
       
    }
    protected void Button92_Click(object sender, EventArgs e)
    {
        if (TextBox37.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Account Country')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accoun_Country values(@Accoun_Country,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Accoun_Country", TextBox37.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox37.Text = "";
            getAccountCountry();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Account Country created successfully')", true);
        }
    }

    private void getAccountTaskstatus()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Accoun_Taskstatus where com_id='"+company_id+"'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView20.DataSource = dt1;
        GridView20.DataBind();






    }
    protected void ImageButton59_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox40.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accoun_Taskstatus where Accoun_Taskstatus='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label79.Text = no.ToString();
        }
        this.ModalPopupExtender40.Show();

    }
    protected void ImageButton60_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accoun_Taskstatus where Accoun_Taskstatus='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountTaskstatus();
    }
    protected void Button100_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accoun_Taskstatus set Accoun_Taskstatus=@Accoun_Taskstatus where No='" + Label79.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Accoun_Taskstatus", TextBox40.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAccountTaskstatus();
      
    }
    protected void Button97_Click(object sender, EventArgs e)
    {
        if (TextBox39.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Task Status')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
              SqlCommand cmd = new SqlCommand("insert into Accoun_Taskstatus values(@Accoun_Taskstatus,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Accoun_Taskstatus", TextBox39.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox39.Text = "";
            getAccountTaskstatus();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Task Status created successfully')", true);
        }
    }


    private void getAccounttasktype()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Accoun_Tasktype where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView21.DataSource = dt1;
        GridView21.DataBind();






    }
    protected void ImageButton62_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox42.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Accoun_Tasktype where Accoun_Tasktype='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label83.Text = no.ToString();
        }
        this.ModalPopupExtender42.Show();

    }
    protected void ImageButton63_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Accoun_Tasktype where Accoun_Tasktype='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAccounttasktype();
    }
    protected void Button105_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Accoun_Tasktype set Accoun_Tasktype=@Accoun_Tasktype where No='" + Label83.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Accoun_Tasktype", TextBox42.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAccounttasktype();
       
    }
    protected void Button102_Click(object sender, EventArgs e)
    {
        if (TextBox41.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter task type')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString()); 
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Accoun_Tasktype values(@Accoun_Tasktype,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Accoun_Tasktype", TextBox41.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox41.Text = "";
            getAccounttasktype();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Task type created successfully')", true);
        }
    }


    private void getQuotestage()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Quote_stage where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView22.DataSource = dt1;
        GridView22.DataBind();






    }
    protected void ImageButton65_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox44.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Quote_stage where Quote_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label87.Text = no.ToString();
        }
        this.ModalPopupExtender44.Show();

    }
    protected void ImageButton66_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Quote_stage where Quote_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getQuotestage();
    }
    protected void Button110_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Quote_stage set Quote_stage=@Quote_stage where No='" + Label87.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Quote_stage", TextBox44.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getQuotestage();
       
    }
    protected void Button107_Click(object sender, EventArgs e)
    {
        if (TextBox43.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Quote stage')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Quote_stage values(@Quote_stage,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Quote_stage", TextBox43.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox43.Text = "";
            getQuotestage();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Quote stage created successfully')", true);
        }
    }



    private void getQuoteValidity()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Quote_Validity where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView23.DataSource = dt1;
        GridView23.DataBind();






    }
    protected void ImageButton68_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox46.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Quote_Validity where Quote_Validity='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label91.Text = no.ToString();
        }
        this.ModalPopupExtender46.Show();

    }
    protected void ImageButton69_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Quote_Validity where Quote_Validity='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getQuoteValidity();
    }
    protected void Button115_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Quote_Validity set Quote_Validity=@Quote_Validity where No='" + Label91.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Quote_Validity", TextBox46.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getQuoteValidity();
      
    }
    protected void Button112_Click(object sender, EventArgs e)
    {
        if (TextBox45.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Quote validity')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Quote_Validity values(@Quote_Validity,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Quote_Validity", TextBox45.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox45.Text = "";
            getQuoteValidity();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Quote validity created successfully')", true);
        }
    }





    private void getQuotedeleiveryleadtime()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Quote_Delivery_lead_time where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView24.DataSource = dt1;
        GridView24.DataBind();






    }
    protected void ImageButton71_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox48.Text = ROW.Cells[0].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Quote_Delivery_lead_time where Quote_Delivery_lead_time='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label95.Text = no.ToString();
        }
        this.ModalPopupExtender48.Show();

    }
    protected void ImageButton72_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Quote_Delivery_lead_time where Quote_Delivery_lead_time='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getQuotedeleiveryleadtime();
    }
    protected void Button120_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Quote_Delivery_lead_time set Quote_Delivery_lead_time=@Quote_Delivery_lead_time where No='" + Label95.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Quote_Delivery_lead_time", TextBox48.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getQuotedeleiveryleadtime();
     
    }
    protected void Button117_Click(object sender, EventArgs e)
    {
        if (TextBox47.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Quote Delivery lead')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Quote_Delivery_lead_time values(@Quote_Delivery_lead_time,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Quote_Delivery_lead_time", TextBox47.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox47.Text = "";
            getQuotedeleiveryleadtime();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Quote Delivery lead created successfully')", true);
        }
    }




    private void getquoteshipping()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Quote_Shipping where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView25.DataSource = dt1;
        GridView25.DataBind();






    }
    protected void ImageButton75_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox50.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Quote_Shipping where Quote_Shipping='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label99.Text = no.ToString();
        }
        this.ModalPopupExtender50.Show();

    }
    protected void ImageButton74_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Quote_Shipping where Quote_Shipping='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getquoteshipping();
    }
    protected void Button125_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Quote_Shipping set Quote_Shipping=@Quote_Shipping where No='" + Label99.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Quote_Shipping", TextBox50.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getquoteshipping();
       
    }
    protected void Button122_Click(object sender, EventArgs e)
    {
        if (TextBox49.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Quote shipping')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Quote_Shipping values(@Quote_Shipping,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Quote_Shipping", TextBox49.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox49.Text = "";
            getquoteshipping();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Quote shipping created successfully')", true);
        }
    }





    private void getPaymentterms()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Quote_Payment_terms where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView26.DataSource = dt1;
        GridView26.DataBind();






    }
    protected void ImageButton77_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox52.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Quote_Payment_terms where Quote_Payment_terms='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label103.Text = no.ToString();
        }
        this.ModalPopupExtender52.Show();

    }
    protected void ImageButton78_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Quote_Payment_terms where Quote_Payment_terms='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getPaymentterms();
    }
    protected void Button130_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Quote_Payment_terms set Quote_Payment_terms=@Quote_Payment_terms where No='" + Label103.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Quote_Payment_terms", TextBox52.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getPaymentterms();
      
    }
    protected void Button127_Click(object sender, EventArgs e)
    {
        if (TextBox51.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Quote payment terms')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString()); 
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Quote_Payment_terms values(@Quote_Payment_terms,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Quote_Payment_terms", TextBox51.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox51.Text = "";
            getPaymentterms();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Quote payment terms successfully')", true);
        }
    }




    private void getticket_status()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Ticket_status where com_id='"+company_id+"'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView27.DataSource = dt1;
        GridView27.DataBind();






    }
    protected void ImageButton80_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
   
        TextBox54.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Ticket_status where Ticket_status='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label107.Text = no.ToString();
        }
        this.ModalPopupExtender54.Show();

    }
    protected void ImageButton81_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Ticket_status where Ticket_status='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getticket_status();
    }
    protected void Button135_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Ticket_status set Ticket_status=@Ticket_status where No='" + Label107.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Ticket_status", TextBox54.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getticket_status();
      
    }
    protected void Button132_Click(object sender, EventArgs e)
    {
        if (TextBox53.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter ticket status')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Ticket_status values(@Ticket_status,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Ticket_status", TextBox53.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox53.Text = "";
            getticket_status();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Ticket status created successfully')", true);
        }
    }





    private void getSeverity()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Severity where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView28.DataSource = dt1;
        GridView28.DataBind();






    }
    protected void ImageButton83_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox56.Text = ROW.Cells[0].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Severity where Severity='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label111.Text = no.ToString();
        }
        this.ModalPopupExtender56.Show();

    }
    protected void ImageButton84_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Severity where Severity='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getSeverity();
    }
    protected void Button140_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Severity set Severity=@Severity where No='" + Label111.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Severity", TextBox56.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getSeverity();
      
    }
    protected void Button137_Click(object sender, EventArgs e)
    {
        if (TextBox55.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter sevirity')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Severity values(@Severity,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Severity", TextBox55.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox55.Text = "";
            getSeverity();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sevirity created successfully')", true);
        }
    }





    private void getAwarrantytype()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Warrenty_type where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView29.DataSource = dt1;
        GridView29.DataBind();






    }
    protected void ImageButton86_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox58.Text = ROW.Cells[0].Text;



          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Warrenty_type where Warrenty_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label115.Text = no.ToString();
        }
        this.ModalPopupExtender58.Show();

    }
    protected void ImageButton87_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Warrenty_type where Warrenty_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getAwarrantytype();
    }
    protected void Button145_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Warrenty_type set Warrenty_type=@Warrenty_type where No='" + Label115.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Warrenty_type", TextBox58.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getAwarrantytype();
      
    }
    protected void Button142_Click(object sender, EventArgs e)
    {
        if (TextBox57.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter warrenty type')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Warrenty_type values(@Warrenty_type,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Warrenty_type", TextBox57.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox57.Text = "";
            getAwarrantytype();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Warrenty type created successfully')", true);
        }
    }



    private void getsales_order_stage()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Sales_order_stage where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView30.DataSource = dt1;
        GridView30.DataBind();






    }
    protected void ImageButton89_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox60.Text = ROW.Cells[0].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Sales_order_stage where Sales_order_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label119.Text = no.ToString();
        }
        this.ModalPopupExtender60.Show();

    }
    protected void ImageButton90_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Sales_order_stage where Sales_order_stage='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getsales_order_stage();
    }
    protected void Button150_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Sales_order_stage set Sales_order_stage=@Sales_order_stage where No='" + Label119.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Sales_order_stage", TextBox60.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getsales_order_stage();
       
    }
    protected void Button147_Click(object sender, EventArgs e)
    {
        if (TextBox59.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter sales order stage')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString()); 
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Sales_order_stage values(@Sales_order_stage,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Sales_order_stage", TextBox59.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox59.Text = "";
            getsales_order_stage();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Sales order stage created successfully')", true);
        }
    }





    private void getinvoice()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Invoice_value where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView31.DataSource = dt1;
        GridView31.DataBind();






    }
    protected void ImageButton92_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox62.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Invoice_value where Invoice_value='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label123.Text = no.ToString();
        }
        this.ModalPopupExtender36.Show();

    }
    protected void ImageButton93_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Invoice_value where Invoice_value='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getinvoice();
    }
    protected void Button155_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Invoice_value set Invoice_valuen=@Invoice_value where No='" + Label123.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Invoice_value", TextBox62.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getinvoice();
       
    }
    protected void Button152_Click(object sender, EventArgs e)
    {
        if (TextBox61.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter invoice value')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString()); 
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Invoice_value values(@Invoice_value,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Invoice_value", TextBox61.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox61.Text = "";
            getinvoice();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('invoice value created successfully')", true);
        }
    }






    private void getproductcategory()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Product_category where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView32.DataSource = dt1;
        GridView32.DataBind();






    }
    protected void ImageButton95_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
     
        TextBox64.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Product_category where Product_category='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label127.Text = no.ToString();
        }
        this.ModalPopupExtender64.Show();

    }
    protected void ImageButton96_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Product_category where Product_category='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getproductcategory();
    }
    protected void Button160_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Product_category set Product_category=@Product_category where No='" + Label127.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Product_category", TextBox64.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getproductcategory();
       
    }
    protected void Button157_Click(object sender, EventArgs e)
    {
        if (TextBox63.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter product category')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Product_category values(@Product_category,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Product_category", TextBox63.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox63.Text = "";
            getproductcategory();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Product category created successfully')", true);
        }
    }




    private void getproducttype()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Product_type where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView33.DataSource = dt1;
        GridView33.DataBind();






    }
    protected void ImageButton98_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox66.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Product_type where Product_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label131.Text = no.ToString();
        }
        this.ModalPopupExtender66.Show();

    }
    protected void ImageButton99_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Product_type where Product_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getproducttype();
    }
    protected void Button165_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Product_type set Product_type=@Product_type where No='" + Label131.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Product_type", TextBox66.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getproducttype();
       
    }
    protected void Button162_Click(object sender, EventArgs e)
    {
        if (TextBox65.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Product type')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Product_type values(@Product_type,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Product_type", TextBox65.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox65.Text = "";
            getproducttype();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Product type created successfully')", true);
        }
    }


    private void getTax_Type()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Tax_type where com_id='"+company_id+"'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView34.DataSource = dt1;
        GridView34.DataBind();






    }
    protected void ImageButton101_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox68.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Tax_type where Tax_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label135.Text = no.ToString();
        }
        this.ModalPopupExtender68.Show();

    }
    protected void ImageButton102_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Tax_type where Tax_type='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getTax_Type();
    }
    protected void Button170_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Tax_type set Tax_type=@Tax_type where No='" + Label135.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Tax_type", TextBox68.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getTax_Type();
      
    }
    protected void Button167_Click(object sender, EventArgs e)
    {
        if (TextBox67.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter tax Type')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Tax_type values(@Tax_type,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Tax_type", TextBox67.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox67.Text = "";
            getTax_Type();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Tax type created successfully')", true);
        }
    }






    private void gettax()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Tax where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView35.DataSource = dt1;
        GridView35.DataBind();






    }
    protected void ImageButton104_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox70.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Tax where Tax='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label139.Text = no.ToString();
        }
        this.ModalPopupExtender70.Show();

    }
    protected void ImageButton105_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Tax where Tax='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gettax();
    }
    protected void Button175_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Tax set Tax=@Tax where No='" + Label139.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Tax", TextBox70.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        gettax();
      
    }
    protected void Button172_Click(object sender, EventArgs e)
    {
        if (TextBox69.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter tax')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Tax values(@Tax,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Tax", TextBox69.Text);
                 cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox69.Text = "";
            gettax();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Tax created successfully')", true);
        }
    }







    private void getCurrency()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Currency where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView36.DataSource = dt1;
        GridView36.DataBind();






    }
    protected void ImageButton107_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox72.Text = ROW.Cells[1].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Currency where Currency='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label143.Text = no.ToString();
        }
        this.ModalPopupExtender72.Show();

    }
    protected void ImageButton108_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Currency where Currency='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getCurrency();
    }
    protected void Button180_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Currency set Currency=@Currency where No='" + Label143.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Currency", TextBox72.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getCurrency();
    }
    protected void Button177_Click(object sender, EventArgs e)
    {
        if (TextBox71.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Currency')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Currency values(@Currency,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Currency", TextBox71.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox71.Text = "";
            getCurrency();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Currency created successfully')", true);
        }
    }





    private void getcustomfield()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Custom_field where com_id='" + company_id + "' ", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView37.DataSource = dt1;
        GridView37.DataBind();






    }
    protected void ImageButton110_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox74.Text = ROW.Cells[0].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Custom_field where Custom_field='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label147.Text = no.ToString();
        }
        this.ModalPopupExtender74.Show();

    }
    protected void ImageButton111_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Custom_field where Custom_field='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        getcustomfield();
    }
    protected void Button185_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Custom_field set Custom_field=@Custom_field where No='" + Label147.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Custom_field", TextBox74.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        getcustomfield();
       
    }
    protected void Button182_Click(object sender, EventArgs e)
    {
        if (TextBox73.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter custom field')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Custom_field values(@Custom_field,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Custom_field", TextBox73.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox73.Text = "";
            getcustomfield();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Custom field created successfully')", true);
        }
    }



    private void created()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Created where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView38.DataSource = dt1;
        GridView38.DataBind();






    }
    protected void ImageButton113_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
      
        TextBox78.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Created where Created='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label151.Text = no.ToString();
        }
        this.ModalPopupExtender76.Show();

    }
    protected void ImageButton114_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Created where Created='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        created();
    }
    protected void Button192_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Created set Created=@Created where No='" + Label151.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Created", TextBox78.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        created();
        
    }
    protected void Button189_Click(object sender, EventArgs e)
    {
        if (TextBox77.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter created value')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Created values(@Created,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Created", TextBox77.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox77.Text = "";
            created();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('created value created successfully')", true);
        }
    }





    private void Active()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
          SqlCommand CMD = new SqlCommand("select * from Active where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView39.DataSource = dt1;
        GridView39.DataBind();






    }
    protected void ImageButton116_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;

        TextBox80.Text = ROW.Cells[0].Text;


          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Active where Active='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label155.Text = no.ToString();
        }
        this.ModalPopupExtender78.Show();

    }
    protected void ImageButton117_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Active where Active='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Active();
    }
    protected void Button197_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Active set Active=@Active where No='" + Label155.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Active", TextBox80.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Active();
      
    }
    protected void Button194_Click(object sender, EventArgs e)
    {
        if (TextBox79.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter active')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Active values(@Active,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Active", TextBox79.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox79.Text = "";
            Active();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Active created successfully')", true);
        }
    }



    private void Modified()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from Modified where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView40.DataSource = dt1;
        GridView40.DataBind();






    }
    protected void ImageButton119_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
       
        TextBox82.Text = ROW.Cells[0].Text;

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from Modified where Modified='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            no = Convert.ToInt32(dr["No"].ToString());
            Label159.Text = no.ToString();
        }
        this.ModalPopupExtender80.Show();

    }
    protected void ImageButton120_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from Modified where Modified='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Modified();
    }
    protected void Button202_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update Modified set Modified=@Modified where No='" + Label159.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Modified", TextBox82.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Modified();
       
    }
    protected void Button199_Click(object sender, EventArgs e)
    {
        if (TextBox81.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter modified')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());  
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into Modified values(@Modified,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Modified", TextBox81.Text);

            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox81.Text = "";
            Modified();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Modified created successfully')", true);
        }
    }
    private void contact()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
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
        this.ModalPopupExtender82.Show();

    }
    protected void ImageButton123_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from add_contact where No='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        contact();
    }
    protected void Button207_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update add_contact set Customer_name=@Customer_name,Mobile_number=@Mobile_number where No='" + Label163.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Customer_name", TextBox84.Text);
        cmd.Parameters.AddWithValue("@Mobile_number", TextBox86.Text);
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
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into add_contact values(@Customer_name,@Mobile_number,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Customer_name", TextBox83.Text);
            cmd.Parameters.AddWithValue("@Mobile_number", TextBox85.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox83.Text = "";
            TextBox85.Text = "";
            contact();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Contact created successfully')", true);
        }
    }
    protected void GridView41_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void email()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand CMD = new SqlCommand("select * from add_email where com_id='" + company_id + "'", con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(CMD);
        da1.Fill(dt1);
        GridView42.DataSource = dt1;
        GridView42.DataBind();






    }
    protected void ImageButton125_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
        Label10.Text = ROW.Cells[0].Text;
        TextBox89.Text = ROW.Cells[1].Text;
        TextBox90.Text = ROW.Cells[2].Text;
        this.ModalPopupExtender84.Show();

    }
    protected void ImageButton126_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton IMG = (ImageButton)sender;
        GridViewRow ROW = (GridViewRow)IMG.NamingContainer;
          company_id = Convert.ToInt32(Session["company_id"].ToString()); 
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from add_email where No='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        email();
    }
    protected void Button212_Click(object sender, EventArgs e)
    {
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update add_email set Customer_name=@Customer_name,email_id=@email_id where No='" + Label10.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Customer_name", TextBox89.Text);
        cmd.Parameters.AddWithValue("@email_id", TextBox90.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        email();

    }
    protected void Button209_Click(object sender, EventArgs e)
    {
        if (TextBox87.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter contact name')", true);
        }
        else
        {
              company_id = Convert.ToInt32(Session["company_id"].ToString());   
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("insert into add_email values(@Customer_name,@email_id,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@Customer_name", TextBox87.Text);
            cmd.Parameters.AddWithValue("@email_id", TextBox88.Text);
            cmd.Parameters.AddWithValue("@com_id", company_id);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox87.Text = "";
            TextBox88.Text = "";
            email();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Contact created successfully')", true);
        }
    }
    private void SMSGROUP()
    {

          company_id = Convert.ToInt32(Session["company_id"].ToString());   
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
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("Select * from sms_group where sms_group='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
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
          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);


        SqlCommand cmd = new SqlCommand("delete from sms_group where sms_group='" + ROW.Cells[0].Text + "'  and com_id='"+company_id+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SMSGROUP();
    }


    protected void Button217_Click(object sender, EventArgs e)
    {


          company_id = Convert.ToInt32(Session["company_id"].ToString());   
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("update sms_group set sms_group=@sms_group where No='" + Label18.Text + "' and com_id='"+company_id+"'", con);

        con.Open();
        cmd.Parameters.AddWithValue("@sms_group", TextBox92.Text);
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
            SqlCommand cmd = new SqlCommand("insert into sms_group values(@sms_group,@com_id)", con);

            con.Open();
            cmd.Parameters.AddWithValue("@sms_group", TextBox91.Text);
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

          company_id = Convert.ToInt32(Session["company_id"].ToString());  
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

        ListBox1.Items.Add(row.Cells[1].Text + "-" + row.Cells[2].Text );

    }

}