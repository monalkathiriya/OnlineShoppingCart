using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;


public partial class Forgot_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Session.Count == 0)
        //    {
        //        Response.Redirect("LOGIN.aspx");
        //    }
        //    else
        //    {
        //        if (Session["Email_Address"].ToString() == Session["Email_Address"].ToString())
        //        {

        //        }
        //        else
        //        {
        //            Response.Redirect("LOGIN.aspx");
        //        }
        //    }
        //}

    }

    void Sendmail(string pass, string maila)
    {
        try
        {
            string dpass = pass;
            string bod = "";
            string to_send = maila;
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            SmtpServer.UseDefaultCredentials = true;
            mail.From = new MailAddress("monalkathiriya@gmail.com");
            mail.To.Add(to_send);
            mail.Subject = "Details of Your E-Cart Password";

            bod += "<table style='width: 600px; height: 200px; background-color: #ADD8E6; '>";
            bod += "<tr><td>";
            bod += " Hello ," + "</td></tr>";
            bod += "<tr><td>" + " " + "</td><tr>";
            bod += "<tr><td>" + " Your Details Are As Below</tr>";
            bod += "<tr><td>" + " " + "</td><tr>";
            bod += "<tr><td>" + " Password : " + dpass + "</td></tr>";
            bod += "<tr><td>" + " " + "</td><tr>";
            bod += "<tr><td>" + " Regards," + "</td></tr>";
            bod += "<tr><td>" + "  Monal Kathiriya" + "</td></tr>";
            bod += "<tr><td>" + "  Please Do Not Share Your Password....." + "</td></tr>";
            bod += "</table>";

            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(bod.ToString(), new System.Net.Mime.ContentType("text/html"));
            mail.AlternateViews.Add(htmlView);

            mail.IsBodyHtml = true;
            mail.Body = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">" + "<HTML><head></head><body style='margin: 0; padding: 0;'> " + bod + "</body></HTML>";

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("monalkathiriya@gmail.com", "M7041598496");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            Response.Write("Message Deliverd on your mail id....");
            lbl.Text = ("Password Sent Successfully to Your Mail");
            lbl.ForeColor = Color.Green;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            Response.AddHeader("Refresh", "5,url=LOGIN.aspx");


        }
        catch (Exception ex)
        {
            lbl.Text = " E-Mail couldn't be sent, Check Your Email ID ...";
            lbl.ForeColor = Color.Red;
            string msg = ex.Message.ToString();
            Response.Write(msg);
        }
    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string Email_Address = "";
        string Password = "";
        SqlConnection sqlcon = new SqlConnection((@"Data Source = (local)\sqlexpress;initial Catalog = LoginDB; integrated Security = true;User Instance=False;"));
        string query = "SELECT Email_Address,Password From CustomerData WHERE Email_Address=@Email_Address";
        SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
        sqlcmd.Parameters.AddWithValue("@Email_Address", TextBox1.Text);
        sqlcon.Open();
        using (SqlDataReader sqlrd = sqlcmd.ExecuteReader())
        {
            if (sqlrd.Read())
            {
                Email_Address = sqlrd["Email_Address"].ToString();
                Password = sqlrd["Password"].ToString();

            }
        }
        Sendmail(Password, Email_Address);
        sqlcon.Close();
    }
}








