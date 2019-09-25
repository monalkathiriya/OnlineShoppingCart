using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class ProductPage : System.Web.UI.Page
{

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
       
    

        protected void LinkButton_Click(object sender,EventArgs e)
        {
        Session.Clear();
        
        Session.RemoveAll();
        Session.Abandon();
        if (Session["Email_Address"] == null)
        {
            Response.Redirect("LOGIN.aspx");

        }
        }




}
