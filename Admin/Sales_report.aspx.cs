using System;
using System.IO;
using System.Web;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Microsoft.Reporting.WebForms;




public partial class Admin_Sales_report : System.Web.UI.Page
{
    public static int company_id=0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["company_id"] != null)
        {
            company_id = Convert.ToInt32(Session["company_id"].ToString());
        }

        TextBox1.Text = Session["Name"].ToString();
        TextBox2.Text = company_id.ToString();


       
     
 
       
       

       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Sales_entry.aspx");

       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Warning[] warnings;
        string[] streamids;
        string mimeType;
        string encoding;
        string extension;

        byte[] bytes = ReportViewer1.LocalReport.Render("PDF", null, out mimeType,
                       out encoding, out extension, out streamids, out warnings);

        FileStream fs = new FileStream(HttpContext.Current.Server.MapPath("output.pdf"), FileMode.Create);
        fs.Write(bytes, 0, bytes.Length);
        fs.Close();

        //Open exsisting pdf
        Document document = new Document(PageSize.LETTER);
        PdfReader reader = new PdfReader(HttpContext.Current.Server.MapPath("output.pdf"));
        //Getting a instance of new pdf wrtiter
        PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(
           HttpContext.Current.Server.MapPath("Print.pdf"), FileMode.Create));
        document.Open();
        PdfContentByte cb = writer.DirectContent;

        int i = 0;
        int p = 0;
        int n = reader.NumberOfPages;
        Rectangle psize = reader.GetPageSize(1);

        float width = psize.Width;
        float height = psize.Height;

        //Add Page to new document
        while (i < n)
        {
            document.NewPage();
            p++;
            i++;

            PdfImportedPage page1 = writer.GetImportedPage(reader, i);
            cb.AddTemplate(page1, 0, 0);
        }

        //Attach javascript to the document
        PdfAction jAction = PdfAction.JavaScript("this.print(true);\r", writer);
        writer.AddJavaScript(jAction);
        document.Close();

        //Attach pdf to the iframe
        frmPrint.Attributes["src"] = "Print.pdf";
    }
}