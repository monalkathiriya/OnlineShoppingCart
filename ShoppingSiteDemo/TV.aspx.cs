using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Web.Security;
using System.Drawing;

public partial class TV : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    { 
        String query1 = "SELECT COUNT(*) From Product_Data WHERE Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(query1, cn.con);
        cmd.Parameters.AddWithValue("@Product_ID", Label1.Text);
        int ca = Convert.ToInt32(cmd.ExecuteScalar());
        if (ca > 0)
        {
            lbl.Text = ("Product is Already in Cart .......");
            lbl.ForeColor = Color.Red;
            lbl.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            Response.AddHeader("Refresh", "2,url=TV.aspx");

        }
        else
        {
            string imgLoc = "C:/Program Files (x86)/IIS Express/Images/1.jpeg";
            byte[] img = null;
            FileStream fs = new FileStream(imgLoc, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            img = br.ReadBytes((int)fs.Length);

            string query = "Insert into Product_Data (Product_ID ,Product_Name,Product_Image ,Product_Price) values (@Product_ID,@Product_Name,@img,@Product_Price)";

            SqlCommand sqlcmd = new SqlCommand(query, cn.con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.CommandType = System.Data.CommandType.Text;
            sqlcmd.Parameters.AddWithValue("@Product_ID", Label1.Text);
            sqlcmd.Parameters.AddWithValue("@Product_Name", L1.Text);
            sqlcmd.Parameters.AddWithValue("@img", img);
            sqlcmd.Parameters.AddWithValue("@Product_Price", L4.Text);
            int count = Convert.ToInt32(sqlcmd.ExecuteNonQuery());

            if (count > 0)
            {
                lbl.Visible = true;
                lbl.Text = "Successfully Added to Cart.....";
                lbl.ForeColor = Color.Green;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                Response.AddHeader("Refresh", "2,url=TV.aspx");

            }
        }


    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        String query1 = "SELECT COUNT(*) From Product_Data WHERE Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(query1, cn.con);
        cmd.Parameters.AddWithValue("@Product_ID", Label2.Text);
        int ca = Convert.ToInt32(cmd.ExecuteScalar());
        if (ca > 0)
        {
            lbl.Text = ("Product is Already in Cart.......");
            lbl.ForeColor = Color.Red;
            lbl.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            Response.AddHeader("Refresh", "2,url=TV.aspx");

        }
        else
        {
            string imgLoc = "C:/Program Files (x86)/IIS Express/Images/2.jpeg";
            byte[] img = null;
            FileStream fs = new FileStream(imgLoc, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            img = br.ReadBytes((int)fs.Length);
            string query = "Insert into Product_Data (Product_ID ,Product_Name,Product_Image ,Product_Price) values (@Product_ID,@Product_Name,@img,@Product_Price)";

            SqlCommand sqlcmd = new SqlCommand(query, cn.con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.CommandType = System.Data.CommandType.Text;
            sqlcmd.Parameters.AddWithValue("@Product_ID", Label2.Text);
            sqlcmd.Parameters.AddWithValue("@Product_Name", L2.Text);
            sqlcmd.Parameters.AddWithValue("@img", img);
            sqlcmd.Parameters.AddWithValue("@Product_Price", L5.Text);
            int count = Convert.ToInt32(sqlcmd.ExecuteNonQuery());

            if (count > 0)
            {
                lbl.Visible = true;
                lbl.Text = "Successfully Added to Cart.....";
                lbl.ForeColor = Color.Green;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                Response.AddHeader("Refresh", "2,url=TV.aspx");

            }
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String query1 = "SELECT COUNT(*) From Product_Data WHERE Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(query1, cn.con);
        cmd.Parameters.AddWithValue("@Product_ID", Label3.Text);
        int ca = Convert.ToInt32(cmd.ExecuteScalar());
        if (ca > 0)
        {
            lbl.Text = ("Product is Already in Cart ........");
            lbl.ForeColor = Color.Red;
            lbl.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            Response.AddHeader("Refresh", "2,url=TV.aspx");

        }

        else
        {

            string imgLoc = "C:/Program Files (x86)/IIS Express/Images/3.jpeg";
            byte[] img = null;
            FileStream fs = new FileStream(imgLoc, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            img = br.ReadBytes((int)fs.Length);
            string query = "Insert into Product_Data (Product_ID ,Product_Name,Product_Image ,Product_Price) values (@Product_ID,@Product_Name,@img,@Product_Price)";

            SqlCommand sqlcmd = new SqlCommand(query, cn.con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.CommandType = System.Data.CommandType.Text;
            sqlcmd.Parameters.AddWithValue("@Product_ID", Label3.Text);
            sqlcmd.Parameters.AddWithValue("@Product_Name", L3.Text);
            sqlcmd.Parameters.AddWithValue("@img", img);
            sqlcmd.Parameters.AddWithValue("@Product_Price", L6.Text);
            int count = Convert.ToInt32(sqlcmd.ExecuteNonQuery());
            if (count > 0)
            {
                lbl.Visible = true;
                lbl.Text = "Successfully Added to Cart.....";
                lbl.ForeColor = Color.Green;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                Response.AddHeader("Refresh", "2,url=TV.aspx");
            }
        }


    }
    protected void LinkButton_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("LOGIN.aspx");


    }
}





