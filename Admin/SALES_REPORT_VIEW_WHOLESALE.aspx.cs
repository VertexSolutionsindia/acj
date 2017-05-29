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
using System.Net.Mail;
using System.Net;
using System.Windows.Forms;
using System.Drawing.Printing;
using System.Windows.Forms;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;


public partial class Admin_SALES_REPORT_VIEW_WHOLESALE : System.Web.UI.Page
{
    public static int company_id = 0;
    protected void Page_Load(object sender, EventArgs e)
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

        TextBox1.Text = Session["Name"].ToString();
        TextBox2.Text = company_id.ToString();
        ReportDocument rprt = new ReportDocument();

        rprt.Load(Server.MapPath("CrystalReport2.rpt"));
     
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Sales_entry_wholesales.aspx");
    }
}