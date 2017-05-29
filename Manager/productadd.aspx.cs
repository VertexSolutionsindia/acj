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

public partial class Rabbitproductadd : System.Web.UI.Page
{
    string value="";
    int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
           
            showdropdown();
            CheckBox1.Checked = true;
            if (Session["name1"] != null)
            {
                value = Session["name1"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cd = new SqlCommand("select * from product_entry where Product_name='" + value + "'", con);
                con.Open();
                SqlDataReader dr;
                dr = cd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox2.Text = dr["Product_name"].ToString();
                    TextBox3.Text = dr["Part_no"].ToString();
                    TextBox4.Text = dr["Size"].ToString();
                    DropDownList1.SelectedItem.Text = dr["category"].ToString();
                    TextBox5.Text = dr["price"].ToString();
                    TextBox6.Text = dr["Summary"].ToString();


                }
                
            }

           




        }

    }
    protected void LoginLink_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/login.aspx");

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string value1 = "";
        if (Session["name1"] != null)
        {
            value1 = Session["name1"].ToString();
        }
        company_id = Convert.ToInt32(Session["company_id"].ToString());
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd1 = new SqlCommand("select * from product_entry where Product_name='" + value1 + "' and com_id='" + company_id + "'", con1);
        con1.Open();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.HasRows)
        {
             DateTime date = Convert.ToDateTime(DateTime.Today);
             company_id = Convert.ToInt32(Session["company_id"].ToString());
                 SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                 SqlCommand cmd = new SqlCommand("update Product_entry set Product_name=@Product_name,Part_no=@Part_no,Size=@Size,category=@category,Price=@Price,summary=@summary,created=@created,status=@status,edit_date=@edit_date where Product_name='" + value1 + "' and  com_id='" + company_id + "'", CON);

                 CON.Open();
                 cmd.Parameters.AddWithValue("@Product_name", TextBox2.Text);
                 cmd.Parameters.AddWithValue("@Part_no", TextBox3.Text);
                 cmd.Parameters.AddWithValue("@Size", TextBox4.Text);
                 cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Text);
                 cmd.Parameters.AddWithValue("@Price", TextBox5.Text);
                 cmd.Parameters.AddWithValue("@summary", TextBox6.Text);
                 cmd.Parameters.AddWithValue("@created", Convert.ToDateTime(date));
                 if (CheckBox1.Checked == true)
                 {
                     cmd.Parameters.AddWithValue("@status", CheckBox1.Text);
                 }
                 else if (CheckBox2.Checked == true)
                 {
                     cmd.Parameters.AddWithValue("@status", CheckBox2.Text);

                 }
                 cmd.Parameters.AddWithValue("@edit_date",Convert.ToDateTime( date));


                 cmd.ExecuteNonQuery();
                 CON.Close();
                 TextBox2.Text = "";
                 TextBox3.Text = "";
                 TextBox4.Text = "";
                 TextBox5.Text = "";
                 TextBox6.Text = "";
                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Product Entry updated successfully')", true);
             
        }
        else
        {

            company_id = Convert.ToInt32(Session["company_id"].ToString());
           
            DateTime date = Convert.ToDateTime(DateTime.Today);
            if (TextBox2.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Please enter Product Name')", true);
            }
            else
            {
                SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
                SqlCommand cmd = new SqlCommand("insert into Product_entry values(@Product_name,@Part_no,@Size,@category,@Price,@summary,@created,@status,@edit_date,@com_id)", CON);

                CON.Open();
                cmd.Parameters.AddWithValue("@Product_name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Part_no", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Size", TextBox4.Text);
                cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Price", TextBox5.Text);
                cmd.Parameters.AddWithValue("@summary", TextBox6.Text);
                cmd.Parameters.AddWithValue("@created", Convert.ToDateTime(date));
                if (CheckBox1.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@status", CheckBox1.Text);
                }
                else if (CheckBox2.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@status", CheckBox2.Text);

                }
                cmd.Parameters.AddWithValue("@edit_date", DBNull.Value);
                cmd.Parameters.AddWithValue("@com_id", company_id);

                cmd.ExecuteNonQuery();
                CON.Close();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert Message", "alert('Product Entry created successfully')", true);
            }
        }
    }
}