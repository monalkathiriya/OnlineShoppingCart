using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Data.OleDb;

public partial class Cart : System.Web.UI.Page
{
    int total=0;
    public CLS_CON cn = new CLS_CON();

  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Refreshdata();
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


    public void Refreshdata()
    {


        SqlCommand cmd1 = new SqlCommand("select * from Product_Data ", cn.con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd1);
        DataTable ds = new DataTable();
        sda.Fill(ds);
        gv.DataSource = ds;
        gv.DataBind();

    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)

    {
        int Product_ID = Convert.ToInt32(gv.DataKeys[e.RowIndex].Value);
        string query = "Delete from Product_Data where Product_ID = @Product_ID";
        SqlCommand sqlcmd = new SqlCommand(query, cn.con);
        sqlcmd.Parameters.AddWithValue("@Product_ID", Product_ID);
        sqlcmd.ExecuteNonQuery();
        this.Refreshdata();
        lbl.Text = ("Product Successfully Removed From Cart...........");
        lbl.ForeColor = Color.Red;
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        Response.AddHeader("REFRESH", "2,url=Cart.aspx");
    }

    protected void LinkButton_Click(object sender, EventArgs e)

    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("LOGIN.aspx");
    }

    protected void ProductQuantity_SelectedIndexChanged(object sender, EventArgs e)

    {
        
        DropDownList Product_Quantity = sender as DropDownList;
        GridViewRow row = (GridViewRow)Product_Quantity.NamingContainer;
        int Pricevalue = Convert.ToInt32(row.Cells[3].Text);
        Label lblTotal = row.FindControl("lblTotal") as Label;
        lblTotal.Text = Convert.ToString(Pricevalue * Convert.ToInt32(Product_Quantity.SelectedItem.Text));
       







        for (int i = 0; i < 1; i++)
         {
          int grdTotal = Convert.ToInt32(Pricevalue * Convert.ToInt32(Product_Quantity.SelectedItem.Text));
           total = total + grdTotal;
        }





    }


    public void Gv_OnRowDataBound(object sender, GridViewRowEventArgs e)
    {


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string que;
        SqlCommand cmd = new SqlCommand("que", cn.con);
        string id = "";
        string qty = "";
        string price = "";

        for (int j = 0; j < gv.Rows.Count; j++)
        {
            id = gv.Rows[j].Cells[0].Text;

            DropDownList xyz = (DropDownList)gv.Rows[j].Cells[2].FindControl("Product_Quantity");
            qty = xyz.SelectedValue;
            price = ((Label)gv.Rows[j].Cells[4].FindControl("lbltotal")).Text;

            que = @"Update  Product_Data set Product_Quantity = '" + qty + "',TotalPrice = '" + price + "' where Product_ID=" + id;
            cmd.CommandText = que;
            cmd.ExecuteNonQuery();
        }



        string que1 = "Select Sum(TotalPrice) from Product_Data ";
        using (SqlCommand command = new SqlCommand(que1, cn.con))
        {
            object result = command.ExecuteScalar();
            lblGrandTotal.Text = Convert.ToString(result);





        }


    }
}