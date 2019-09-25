<%@ WebHandler Language="C#" Class="ProductImageHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Data;

public class ProductImageHandler : IHttpHandler {
public CLS_CON cn = new CLS_CON();
    public void ProcessRequest(HttpContext context)
    {
       

            string query = "select Product_Image from Item_List where Id = " + context.Request.QueryString["imgId"];
            SqlCommand command = new SqlCommand(query, cn.con);
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.End();
            
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}


