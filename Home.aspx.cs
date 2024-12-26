using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        //int kind = int.Parse(Request.Cookies["ukind"].Value.ToString());
        //if (kind == -1)
        //{
        //    fav.Visible = false;
        //    pro.Visible = false;
        //    log.HRef = "SIGN_UP.aspx";
        //    log.InnerText = "SIGN UP / SIGN IN";
        //}
        //else
        //{
        //    fav.Visible = true;
        //    pro.Visible = true;
        //    log.HRef = "MainHome.aspx";
        //    log.InnerText = "SIGN OUT";
        //}
        
    }
}