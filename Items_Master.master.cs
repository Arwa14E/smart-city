using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Items_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int kind = int.Parse(Request.Cookies["ukind"].Value.ToString());
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
                email.HRef ="mailto:"+ dr.GetString(1);
            }
        }
            dr.Close();
            C.con.Close();
        if (kind == -1)
        {
            fav.Visible = false;
            pro.Visible = false;
            log.HRef = "SIGN_UP.aspx";
            log.InnerText = "SIGN UP / SIGN IN";
            hom.HRef = "MainHome.aspx";
            abo.HRef = "MainAbout.aspx";
        }
        else
        {
            fav.Visible = true;
            pro.Visible = true;
            log.HRef = "MainHome.aspx";
            log.InnerText = "SIGN OUT";
            hom.HRef = "Home.aspx";
            abo.HRef = "About.aspx";
        }
        
    }
}
