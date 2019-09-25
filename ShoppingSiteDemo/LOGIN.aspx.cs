using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Web.Caching;
using System.Web.SessionState;



public partial class LOGIN : System.Web.UI.Page
{
    public CLS_CON cn = new CLS_CON();





    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 120;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "SELECT COUNT(*)FROM CustomerData WHERE Email_Address=@EmailAddress AND Password=@Password";
        SqlCommand sqlcmd = new SqlCommand(query, cn.con);
        sqlcmd.Parameters.AddWithValue("@EmailAddress", TextBox1.Text.Trim());
        sqlcmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
        int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
        if (count > 0)
        {

            Session["Email_Address"] = TextBox1.Text;
            Response.Redirect("ProductPage.aspx");

        }
        else
        {
            lbl.Text = ("Incorrect Email Address or Password....");
            lbl.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            Response.AddHeader("Refresh", "2,url=LOGIN.aspx");
        }





    }
}



