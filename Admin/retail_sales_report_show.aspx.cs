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

public partial class Admin_retail_sales_report_show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        TextBox1.Text = Session["Name"].ToString();
        ReportDocument rprt = new ReportDocument();

        rprt.Load(Server.MapPath("CrystalReport2.rpt"));
        /*Sales_invoiceTableAdapters.DataTable1TableAdapter ta = new Sales_invoiceTableAdapters.DataTable1TableAdapter();

        Sales_invoice.DataTable1DataTable table = ta.GetData(TextBox1.Text);
        rprt.SetDataSource(table.DefaultView);



        CrystalReportViewer1.ReportSource = rprt;
        CrystalReportViewer1.DataBind();*/
    }
}