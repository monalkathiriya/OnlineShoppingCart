using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class List : System.Web.UI.Page
{
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
        SqlCommand cmd = new SqlCommand("select * from Item_List ", cn.con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        gv.DataSource = ds;
        gv.DataBind();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int Id = Convert.ToInt32(gv.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = new SqlCommand("Delete from Item_List where Id = @Id", cn.con);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();
        this.Refreshdata();
        lbl.Text = ("Product Data Deleted Successfully........");
        lbl.Visible = true;
        lbl.ForeColor = Color.Red;
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        Response.AddHeader("Refresh","4,url=List.aspx");
    }
    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        gv.EditIndex = e.NewEditIndex;
        this.Refreshdata();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int Id = Convert.ToInt32(gv.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
        TextBox pc =  (TextBox) gv.Rows[e.RowIndex].Cells[0].Controls[0];
        TextBox pn = (TextBox)gv.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox pd = (TextBox)gv.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox pp = (TextBox)gv.Rows[e.RowIndex].Cells[5].Controls[0];
        gv.EditIndex = -1;
        SqlCommand sqlcmd = new SqlCommand("Update Item_List set Product_Category= ' " + pc.Text + " ', Product_Name='" + pn.Text + "',Product_Discription='" + pd.Text + "',Product_Price='" + pp.Text + "' where Id='" + Id + "'", cn.con);


        sqlcmd.ExecuteNonQuery();
        this.Refreshdata();
        lbl.Text = ("Product Data Updated Successfully........");
        lbl.Visible = true;
        lbl.ForeColor = Color.Green;
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        Response.AddHeader("Refresh", "4,url=List.aspx");
    }



    protected void LinkButton_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("LOGIN.aspx");


    }
    protected void OnRowDataBound(object As ,GridViewRowEventArgs e)
    {

    }
    protected void OnRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {   
        gv.EditIndex = -1;
        Refreshdata();
    }
}



