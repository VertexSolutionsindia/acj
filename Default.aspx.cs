using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlCommand cmd = new SqlCommand("insert into Compaign_type values(@Compaign_type)", CON);

        CON.Open();
        cmd.Parameters.AddWithValue("@Compaign_type", TextBox1.Text);
        cmd.ExecuteNonQuery();
        CON.Close();
        TextBox2.Text = "created";
    }
}