using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

public partial class ADD : System.Web.UI.Page
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


        String query = "SELECT COUNT(*) From Item_List where Id=@pro";
        SqlCommand cmd = new SqlCommand(query, cn.con);
        cmd.Parameters.AddWithValue("@pro", TextBox1.Text.Trim());
        int ca = Convert.ToInt32(cmd.ExecuteScalar());
        if (ca > 0)
        {
            lbl.Text = ("This Product is Alreday in item list.............");
            lbl.ForeColor = Color.Red;
        }
        else if (pi.HasFile)
        {
            int length = pi.PostedFile.ContentLength;
            byte[] imgbyte = new byte[length];
            HttpPostedFile img = pi.PostedFile;
            img.InputStream.Read(imgbyte, 0, length);



            String insert = "INSERT INTO Item_List (Id,Product_Category, Product_Name,Product_Image,Product_Discription,Product_Price) VALUES (@pro,@pc,@pn,@pi,@pd,@pp)";
            SqlCommand sqlcmd = new SqlCommand(insert, cn.con);
            {
                sqlcmd.CommandType = CommandType.StoredProcedure;
            }
            sqlcmd.CommandType = System.Data.CommandType.Text;
            sqlcmd.Parameters.AddWithValue("@pro", TextBox1.Text);
            sqlcmd.Parameters.AddWithValue("@pc", TextBox2.Text);
            sqlcmd.Parameters.AddWithValue("@pn", TextBox3.Text);
            sqlcmd.Parameters.AddWithValue("@pi", imgbyte);
            sqlcmd.Parameters.AddWithValue("@pd", TextBox5.Text);
            sqlcmd.Parameters.AddWithValue("@pp", TextBox6.Text);
            int count = Convert.ToInt32(sqlcmd.ExecuteNonQuery());

            if (count > 0)
            {


                lbl.Visible = true;
                ClientScript.RegisterStartupScript(GetType(), "alert", "HideLabel();", true);
                Response.AddHeader("Refresh", "3,url=ADD.aspx");

            }

        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            TextBox5.Text = "";
            TextBox6.Text = "";
        }



    }


    protected void LinkButton_Click(object sender, EventArgs e)
    {
      //  Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("LOGIN.aspx");


    }
}
    
