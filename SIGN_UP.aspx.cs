using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class SIGN_UP : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader dr;
    CONSTR C = new CONSTR();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        C.con.Open();
        cmd = new SqlCommand(@"select * from All_users where Email = @username and Pass = @pass", C.con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            int id = 0;
            string name = "";
            string eemail = "";
            string pw = "";
            int kind = -1;
            while (dr.Read())
            {
                id = dr.GetInt32(0);
                eemail = dr.GetString(1);
                name = dr.GetString(4);
                kind = dr.GetInt32(3);
                pw = dr.GetString(2);
            }
            dr.Close();
            C.con.Close();
            Response.Cookies.Add(new HttpCookie("uid", id.ToString()));
            Response.Cookies.Add(new HttpCookie("eemail", Server.UrlEncode(eemail)));
            Response.Cookies.Add(new HttpCookie("usname", Server.UrlEncode(name)));
            Response.Cookies.Add(new HttpCookie("pa", Server.UrlEncode(pw)));
            Response.Cookies.Add(new HttpCookie("ukind", Server.UrlEncode(kind.ToString())));
            Response.Redirect("Home.aspx"); 
        
        }

        else Response.Write("<script language='javascript'> alert('Wrong Email or Password'); </script>");

    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
       
        try
        {

            
                bool Is_Exsist = false;
                {
                    C.con.Open();
                    cmd = new SqlCommand(@"select * from All_users where Email = @username", C.con);
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Is_Exsist = true;
                    }
                    C.con.Close();

                }
                if (Is_Exsist == false)
                {
                    C.con.Open();
                    cmd = new SqlCommand(@"insert into All_users ([Email],[Pass],[U_Kind],[U_Name]) values  ( @Email, @Password,1,@name)", C.con);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox5.Text);

                    cmd.Parameters.AddWithValue("@name", TextBox4.Text);
                    cmd.ExecuteNonQuery();



                    SqlCommand c = new SqlCommand("SELECT MAX(User_Id) FROM All_users", C.con);
                    int User_ID = (int)c.ExecuteScalar(); ;
                    Response.Cookies.Add(new HttpCookie("uid", Server.UrlEncode(User_ID.ToString())));
                    Response.Cookies.Add(new HttpCookie("pa", Server.UrlEncode(TextBox5.Text)));
                    Response.Cookies.Add(new HttpCookie("ukind", Server.UrlEncode("1")));
                    Response.Cookies.Add(new HttpCookie("usname", Server.UrlEncode(TextBox4.Text)));
                    Response.Cookies.Add(new HttpCookie("eemail", Server.UrlEncode(TextBox3.Text)));
                    Response.Redirect("Home.aspx");

                    TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
                    C.con.Close();

                }
           
        }
        catch (Exception ex)
        {

            Label1.ForeColor = Color.Red;
            Label1.Text = "Missing Data";
        }
    }
}