using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;


public partial class update : System.Web.UI.Page
{
    public CLS_CON cn = new CLS_CON();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count == 0)
            {
                Response.Redirect("LOGIN.aspx");
            }
            else
            {
                if (Session["Email_Address"].ToString() == Session["Email_Address"].ToString())
                {

                }
                else
                {
                    Response.Redirect("LOGIN.aspx");
                }
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)

    {
     

       
        String query = "UPDATE  CustomerData set First_Name=@fn,Last_Name=@ln,Password=@p,Confirm_Password=@cp where Email_Address = '" + Session["Email_Address"].ToString() + "'";
        SqlCommand sqlcmd = new SqlCommand(query, cn.con);
        sqlcmd.Parameters.AddWithValue("@fn", TextBox1.Text);
        sqlcmd.Parameters.AddWithValue("@ln", TextBox2.Text);
        sqlcmd.Parameters.AddWithValue("@p", TextBox4.Text);
        sqlcmd.Parameters.AddWithValue("@cp", TextBox5.Text);
        sqlcmd.ExecuteNonQuery();
        lbl.Visible = true;
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        

    }
        
}
