using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;


public partial class register : System.Web.UI.Page
{
    public CLS_CON cn = new CLS_CON();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session.Count == 0)
        //{
        //    Response.Redirect("LOGIN.aspx");
        //}
        //else
        //{
        //    if (Session["Email_Address"].ToString() == Session["Email_Address"].ToString())
        //    {

        //    }
        //    else
        //    {
        //        Response.Redirect("LOGIN.aspx");
        //    }
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

            String query = "SELECT COUNT(*) From CustomerData WHERE Email_Address=@Email_Address";
            SqlCommand cmd = new SqlCommand(query, cn.con);
            cmd.Parameters.AddWithValue("@Email_Address", TextBox3.Text.Trim());
            int ca = Convert.ToInt32(cmd.ExecuteScalar());
            if (ca > 0)
            {
                lbl.Text = ("Email is Already Registered or Email field is require");
                lbl.ForeColor = Color.Red;
                lbl.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

            }
            else
            {
                String insert = "INSERT INTO CustomerData (First_Name,Last_Name, Email_Address,Password,Confirm_Password) VALUES (@FirstName,@LastName, @EmailAddress,@Password,@ConfirmPassword)";
                SqlCommand sqlcmd = new SqlCommand(insert, cn.con);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.CommandType = System.Data.CommandType.Text;
                sqlcmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                sqlcmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                sqlcmd.Parameters.AddWithValue("@EmailAddress", TextBox3.Text);
                sqlcmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                sqlcmd.Parameters.AddWithValue("@ConfirmPassword", TextBox5.Text);
                int count = Convert.ToInt32(sqlcmd.ExecuteNonQuery());

                if (count > 0)
                {
                    lbl.Text = ("Registration Has Been Successfully... ");
                    lbl.ForeColor = Color.Green;
                    lbl.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                }
                


            }
           


        
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}















