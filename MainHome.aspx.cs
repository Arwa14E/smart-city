using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MainHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies.Add(new HttpCookie("ukind", Server.UrlEncode("-1")));
        SqlCommand cmd;
        SqlDataReader dr;
        CONSTR C = new CONSTR();
        C.con.Open();
        cmd = new SqlCommand(@"select * from All_users where U_Kind = 0", C.con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                email.HRef = "mailto:" + dr.GetString(1);
            }
        }
        dr.Close();
        C.con.Close();

    }
}