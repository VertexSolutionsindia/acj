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

public partial class Admin_Day_wise_purchase : System.Web.UI.Page
{
    public static int company_id = 0;
    float m = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (User.Identity.IsAuthenticated)
            {
                SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
                SqlDataReader dr1000;
                con1000.Open();
                dr1000 = cmd1000.ExecuteReader();
                if (dr1000.Read())
                {
                    company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                    Label2.Text = dr1000["company_name"].ToString();
                }
                con1000.Close();
            }


            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd = new SqlCommand("select * from currentfinancialyear where no='1'", con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                DateTime date = Convert.ToDateTime(dr["start_date"]);
                DateTime date1 = Convert.ToDateTime(dr["end_date"]);
                DateTime today = DateTime.Now;
                if (today >= date && today <= date1)
                {
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }

            }

           
            getinvoiceno();
            show_category();
            showrating();
            BindData();

            active();
            created();

            BindData2();
            show_financial();
            getcurrentfinancial();
        }

    }
    private void show_financial()
    {




        string constr = ConfigurationManager.AppSettings["connection"];
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Select no,financial_year from financial_year where Com_Id='" + company_id + "' ORDER BY no asc"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                ListBox1.DataSource = cmd.ExecuteReader();
                ListBox1.DataTextField = "financial_year";
                ListBox1.DataValueField = "no";
                ListBox1.DataBind();
                con.Close();
            }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        ImageButton img = (ImageButton)sender;
        GridViewRow row = (GridViewRow)img.NamingContainer;

        SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd2 = new SqlCommand("select * from financial_year where no='" + row.Cells[0].Text + "' and  Com_Id='" + company_id + "'", con2);
        SqlDataReader dr2;
        con2.Open();
        dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            Label1.Text = dr2["no"].ToString();
            TextBox1.Text = dr2["financial_year"].ToString();
            TextBox2.Text = Convert.ToDateTime(dr2["start_date"]).ToString("MM/dd/yyyy");
            TextBox4.Text = Convert.ToDateTime(dr2["end_date"]).ToString("MM/dd/yyyy");

        }
        con2.Close();



    }
    protected void BindData2()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand CMD = new SqlCommand("select * from financial_year where Com_Id='" + company_id + "' ORDER BY no asc", con);
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(CMD);
                da1.Fill(dt1);
                GridView3.DataSource = dt1;
                GridView3.DataBind();
            }
        }

    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("delete from financial_year where no='" + Label1.Text + "' and Com_Id='" + company_id + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('financial year deleted successfully')", true);
                BindData();


                getinvoiceno();

                TextBox1.Text = "";
                BindData2();

            }
            con1000.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        getinvoiceno();
        TextBox1.Text = "";
        BindData2();
        show_financial();
        getcurrentfinancial();
        TextBox2.Text = "";
        TextBox4.Text = "";
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


    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                string confirmValue = Request.Form["confirm_value"];
                if (confirmValue == "Yes")
                {
                    ImageButton img = (ImageButton)sender;
                    GridViewRow row = (GridViewRow)img.NamingContainer;
                    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd = new SqlCommand("delete from financial_year where no='" + row.Cells[1].Text + "' and Com_Id='" + company_id + "' ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('financial deleted successfully')", true);

                    BindData();
                    show_category();
                    getinvoiceno();
                }
            }
            con1000.Close();
        }


    }
    private void getinvoiceno()
    {

        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                int a;

                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                con1.Open();
                string query = "Select Max(no) from financial_year where Com_Id='" + company_id + "' ";
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
                con1.Close();
            }
            con1000.Close();
        }
    }
    private void show_category()
    {


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
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> SearchCustomers2(string prefixText, int count)
    {


        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.AppSettings["connection"];

            using (SqlCommand cmd = new SqlCommand())
            {


                cmd.CommandText = "select Item_group from category where  Com_Id=@Com_Id and  " +
                "Item_name like @Item_name + '%' ";
                cmd.Parameters.AddWithValue("@Item_name", prefixText);
                cmd.Parameters.AddWithValue("@Com_Id", company_id);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["Item_name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {



    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        getinvoiceno();
        TextBox1.Text = "";
        BindData2();
        show_financial();
        getcurrentfinancial();
        TextBox2.Text = "";
        TextBox4.Text = "";

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                if (Convert.ToInt32(Label1.Text) > Convert.ToInt32(1))
                {
                    Label1.Text = (Convert.ToInt32(Label1.Text) - 1).ToString();
                }

                SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd2 = new SqlCommand("select * from financial_year where no='" + Label1.Text + "' and Com_Id='" + company_id + "'", con2);
                SqlDataReader dr2;
                con2.Open();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    TextBox1.Text = dr2["financial_year"].ToString();
                    TextBox2.Text = Convert.ToDateTime(dr2["start_date"]).ToString("MM/dd/yyyy");
                    TextBox4.Text = Convert.ToDateTime(dr2["end_date"]).ToString("MM/dd/yyyy");
                }
                con2.Close();
            }
            con1000.Close();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                if (TextBox1.Text == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter country')", true);
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand cmd1 = new SqlCommand("select * from financial_year where no='" + Label1.Text + "' AND Com_Id='" + company_id + "'  ", con1);
                    con1.Open();
                    SqlDataReader dr1;
                    dr1 = cmd1.ExecuteReader();
                    if (dr1.HasRows)
                    {

                        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd = new SqlCommand("Update financial_year set financial_year=@financial_year,Com_Id=@Com_Id,start_date=@start_date,end_date=@end_date where no=@no", CON);
                        cmd.Parameters.AddWithValue("@no", Label1.Text);
                        cmd.Parameters.AddWithValue("@financial_year", TextBox1.Text);



                        cmd.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd.Parameters.AddWithValue("@start_date", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@end_date", TextBox4.Text);
                        CON.Open();
                        cmd.ExecuteNonQuery();
                        CON.Close();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Financial year updated successfully')", true);
                        BindData();
                        show_category();
                        getinvoiceno();

                        TextBox1.Text = "";

                        BindData2();
                        show_financial();
                        TextBox2.Text = "";
                        TextBox4.Text = "";
                    }
                    else
                    {


                        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd = new SqlCommand("insert into financial_year values(@no,@financial_year,@Com_Id,@start_date,@end_date)", CON);
                        cmd.Parameters.AddWithValue("@no", Label1.Text);
                        cmd.Parameters.AddWithValue("@financial_year", TextBox1.Text);



                        cmd.Parameters.AddWithValue("@Com_Id", company_id);
                        cmd.Parameters.AddWithValue("@start_date", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@end_date", TextBox4.Text);
                        CON.Open();
                        cmd.ExecuteNonQuery();
                        CON.Close();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Financial year created successfully')", true);
                        BindData();
                        show_category();
                        getinvoiceno();

                        TextBox1.Text = "";

                        BindData2();
                        show_financial();
                        TextBox2.Text = "";
                        TextBox4.Text = "";
                    }
                    con1.Close();

                }
            }
            con1000.Close();

        }
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                SqlConnection con21 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd21 = new SqlCommand("select max(no) from financial_year where  Com_Id='" + company_id + "' ", con21);
                SqlDataReader dr21;
                con21.Open();
                dr21 = cmd21.ExecuteReader();
                if (dr21.Read())
                {
                    int value = Convert.ToInt32(dr21[0].ToString());
                    if (Convert.ToInt32(Label1.Text) < Convert.ToInt32(value + 1))
                    {
                        Label1.Text = (Convert.ToInt32(Label1.Text) + 1).ToString();
                    }
                }
                con21.Close();
                SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd2 = new SqlCommand("select * from financial_year where no='" + Label1.Text + "' and  Com_Id='" + company_id + "'", con2);
                SqlDataReader dr2;
                con2.Open();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    TextBox1.Text = dr2["financial_year"].ToString();

                    TextBox2.Text = Convert.ToDateTime(dr2["start_date"]).ToString("MM/dd/yyyy");
                    TextBox4.Text = Convert.ToDateTime(dr2["end_date"]).ToString("MM/dd/yyyy");
                }
                else
                {

                    getinvoiceno();
                    TextBox1.Text = "";
                    BindData2();
                    show_financial();
                    getcurrentfinancial();
                    TextBox2.Text = "";
                    TextBox4.Text = "";

                }
                con2.Close();
            }
            con1000.Close();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        this.ModalPopupExtender1.Show();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());


                if (ListBox1.Text == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('please select financial year')", true);
                }
                else
                {
                    int value = 1;
                    SqlConnection con11 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                    SqlCommand check_User_Name1 = new SqlCommand("select * from currentfinancialyear WHERE no =@no and  Com_Id='" + company_id + "'", con11);
                    check_User_Name1.Parameters.AddWithValue("@no", value);
                    con11.Open();
                    SqlDataReader reader1 = check_User_Name1.ExecuteReader();
                    if (reader1.HasRows)
                    {
                        SqlConnection con10 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                        SqlCommand cmd10 = new SqlCommand("update currentfinancialyear set financial_year=@financial_year,Com_Id=@Com_Id,start_date=@@start_date,end_date=@end_date where no='" + value + "' and  Com_Id='" + company_id + "'", con10);
                        cmd10.Parameters.AddWithValue("@financial_year", ListBox1.SelectedItem.Text);
                        cmd10.Parameters.AddWithValue("@Com_Id", company_id);
                        if (ListBox1.SelectedItem.Text == "2017-2018")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            cmd10.Parameters.AddWithValue("@start_date", date1);
                            cmd10.Parameters.AddWithValue("@end_date", date2);
                        }
                        if (ListBox1.SelectedItem.Text == "2018-2019")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            cmd10.Parameters.AddWithValue("@start_date", date1);
                            cmd10.Parameters.AddWithValue("@end_date", date2);
                        }
                        if (ListBox1.SelectedItem.Text == "2019-2020")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            cmd10.Parameters.AddWithValue("@start_date", date1);
                            cmd10.Parameters.AddWithValue("@end_date", date2);
                        }
                        con10.Open();
                        cmd10.ExecuteNonQuery();
                        con10.Close();
                        getcurrentfinancial();
                    }
                    else
                    {
                        int value1 = 1;
                        SqlConnection con10 = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["connection"]);
                        SqlCommand check_User_Name = new SqlCommand("insert into currentfinancialyear values(@no,@financial_year,@Com_Id,@start_date,@end_date)", con10);
                        check_User_Name.Parameters.AddWithValue("@no", value1);
                        check_User_Name.Parameters.AddWithValue("@financial_year", ListBox1.SelectedItem.Text);
                        check_User_Name.Parameters.AddWithValue("@Com_Id", company_id);
                        if (ListBox1.SelectedItem.Text == "2017-2018")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            check_User_Name.Parameters.AddWithValue("@start_date", date1);
                            check_User_Name.Parameters.AddWithValue("@end_date", date2);
                        }
                        if (ListBox1.SelectedItem.Text == "2018-2019")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            check_User_Name.Parameters.AddWithValue("@start_date", date1);
                            check_User_Name.Parameters.AddWithValue("@end_date", date2);
                        }
                        if (ListBox1.SelectedItem.Text == "2019-2020")
                        {
                            string date1 = "04/01/2017";
                            string date2 = "03/31/2018";

                            check_User_Name.Parameters.AddWithValue("@start_date", date1);
                            check_User_Name.Parameters.AddWithValue("@end_date", date2);
                        }
                        con10.Open();
                        check_User_Name.ExecuteNonQuery();
                        con10.Close();

                        getcurrentfinancial();
                    }


                }


            }
            con1000.Close();

        }
    }
    private void getcurrentfinancial()
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());

                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("Select no,financial_year from currentfinancialyear where no='1' and Com_Id='" + company_id + "'", con);
                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                ListBox2.DataSource = ds;
                ListBox2.DataTextField = "financial_year";
                ListBox2.DataValueField = "no";
                ListBox2.DataBind();

                con.Close();
            }
            con1000.Close();
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            SqlConnection con1000 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
            SqlCommand cmd1000 = new SqlCommand("select * from user_details where Name='" + User.Identity.Name + "'", con1000);
            SqlDataReader dr1000;
            con1000.Open();
            dr1000 = cmd1000.ExecuteReader();
            if (dr1000.Read())
            {
                company_id = Convert.ToInt32(dr1000["com_id"].ToString());
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd1 = new SqlCommand("select * from currentfinancialyear where no='1' and Com_Id='" + company_id + "'", con1);
                SqlDataReader dr1;
                con1.Open();
                dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    Response.Redirect("~/Admin/Dashboard.aspx");

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please set current financial year')", true);
                }
                con1.Close();
            }
            con1000.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (TextBox1.Text == "2017-2018")
        {
            TextBox2.Text = "04-01-2017";
            TextBox4.Text = "03-31-2018";
        }
        if (TextBox1.Text == "2018-2019")
        {
            TextBox2.Text = "04-01-2018";
            TextBox4.Text = "03-31-2019";
        }
        if (TextBox1.Text == "2019-2020")
        {
            TextBox2.Text = "04-01-2019";
            TextBox4.Text = "03-31-2020";
        }
    }


}