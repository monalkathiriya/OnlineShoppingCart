using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for CLS_CON
/// </summary>
public class CLS_CON
{
    public SqlConnection con;
    public CLS_CON()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["CON_STR"].ConnectionString);
        con.Open();

    }
}