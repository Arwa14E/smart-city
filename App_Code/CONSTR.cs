using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.Configuration;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;
using System.Configuration;
using System.Net;
/// <summary>
/// Summary description for CONSTR
/// </summary>
public class CONSTR
{
    public SqlConnection con;
    
    public CONSTR()
    {
        //
        // TODO: Add constructor logic here

        //
     //   conn = new SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename="E:\School Home Website\school_home\App_Data\school-home_DB.mdf";Integrated Security=True;Connect Timeout=30;User Instance=True");
        string connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        con = new SqlConnection(connectionString);
    }

    public static int vid_ID;
    public static int R1 ;
}