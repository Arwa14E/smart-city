using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
public partial class Caffee : System.Web.UI.Page
{
    CONSTR C = new CONSTR();
    SqlCommand cmd;
    int kind;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Cookies.Add(new HttpCookie("uid", "1"));
        //Response.Cookies.Add(new HttpCookie("ukind", Server.UrlEncode("1")));
        

        kind = int.Parse(Request.Cookies["ukind"].Value.ToString());
        
        if (IsPostBack && FileUpload2.PostedFile != null)
        {
            if (FileUpload2.PostedFile.FileName.Length > 0)
            {
                FileUpload2.SaveAs(Server.MapPath("~/img/" + FileUpload2.FileName));
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('تم التحميل');", true);
                Image3.ImageUrl = "~/img/" + Path.GetFileName(FileUpload2.PostedFile.FileName);
            }
        }
       


        if (kind == 0)
        {
            Button7.Visible = true;
        }
        else
        {
            Button7.Visible = false;
        }


       
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }


    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        kind = int.Parse(Request.Cookies["ukind"].Value.ToString());
        if (kind != -1)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                string tl = ((Label)e.Item.FindControl("Label2")).Text;
                Button like_bt = (Button)e.Item.FindControl("Button6");
                C.con.Open();
                cmd = new SqlCommand(@"select * from User_Favorites WHERE [user_id] =@user_id And [item_id] =@item_id ", C.con);
                cmd.Parameters.AddWithValue("@user_id", Request.Cookies["uid"].Value.ToString());
                cmd.Parameters.AddWithValue("@item_id", tl);

                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    like_bt.ForeColor = Color.Red;
                }
                dr.Close();
                C.con.Close();

            }
        }
    }
    protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {

            kind = int.Parse(Request.Cookies["ukind"].Value.ToString());
            if (kind == 0)
            {
                ImageButton Itb = (ImageButton)e.Item.FindControl("ImageButton1");
                Itb.Visible = true;
                ImageButton Dtb = (ImageButton)e.Item.FindControl("ImageButton2");
                Dtb.Visible = true;
                Button7.Visible = true;
                Button Li = (Button)e.Item.FindControl("Button6");
                Li.Visible = true;
            }
            else if (kind == -1)
            {
                ImageButton Itb = (ImageButton)e.Item.FindControl("ImageButton1");
                Itb.Visible = false;
                ImageButton Dtb = (ImageButton)e.Item.FindControl("ImageButton2");
                Dtb.Visible = false;
                Button7.Visible = false;
                Button Li = (Button)e.Item.FindControl("Button6");
                Li.Visible = false;
            }
            else
            {
                ImageButton Itb = (ImageButton)e.Item.FindControl("ImageButton1");
                Itb.Visible = false;
                ImageButton Dtb = (ImageButton)e.Item.FindControl("ImageButton2");
                Dtb.Visible = false;
                Button7.Visible = false;
                Button Li = (Button)e.Item.FindControl("Button6");
                Li.Visible = true;
            }

        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Like")
        {

            Label tl = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label2");
            Button like_bt = (Button)DataList1.Items[e.Item.ItemIndex].FindControl("Button6");

            if (like_bt.ForeColor == Color.Black)
            {

                C.con.Open();
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Items SET likes = likes + 1 WHERE  id = '" + tl.Text + "'", C.con);
                    cmd.ExecuteNonQuery();
                }
                {
                    cmd = new SqlCommand(@"insert into User_Favorites ([user_id],[item_id]) values  ( @user_id, @item_id)", C.con);
                    cmd.Parameters.AddWithValue("@user_id", Request.Cookies["uid"].Value.ToString());
                    cmd.Parameters.AddWithValue("@item_id", tl.Text);
                    cmd.ExecuteNonQuery();
                }
                C.con.Close();
                like_bt.ForeColor = Color.Red;
                like_bt.Focus();

            }
            else
            {
                //string ID = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label2")).Text;
                C.con.Open();
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Items SET likes = likes - 1 WHERE   id = '" + tl.Text + "'", C.con);
                    cmd.ExecuteNonQuery();
                }
                {
                    SqlCommand cmd = new SqlCommand("delete [User_Favorites]  WHERE [user_id] =@user_id And [item_id] =@item_id ", C.con);
                    cmd.Parameters.AddWithValue("@user_id", Request.Cookies["uid"].Value.ToString());
                    cmd.Parameters.AddWithValue("@item_id", tl.Text);

                    cmd.ExecuteNonQuery();
                }
                C.con.Close();
                like_bt.ForeColor = Color.Black;
                like_bt.Focus();
            }
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
            
        }

        if (e.CommandName == "Edit")
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();


        }
       
        else if (e.CommandName == "Save")
        {

            TextBox tb = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1");
            TextBox tb2 = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox2");
            TextBox tb3 = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox3");
            TextBox tb1 = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox5");
            System.Web.UI.WebControls.Image im = (System.Web.UI.WebControls.Image)DataList1.Items[e.Item.ItemIndex].FindControl("Image2");
            string ID = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label20")).Text;
            SqlCommand cmd = new SqlCommand("update [Items] set [name] =@name , [source] =@path , [link] =@link , [Note] =@note  WHERE [Id] =" + ID, C.con);
            cmd.Parameters.AddWithValue("@name", tb.Text);
            cmd.Parameters.AddWithValue("@path", im.ImageUrl);
            cmd.Parameters.AddWithValue("@link", tb2.Text);
            cmd.Parameters.AddWithValue("@note", tb3.Text);
            C.con.Open();
            cmd.ExecuteNonQuery();
            C.con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('تم حفظ التعديل بنجاح ');", true);
            DataList1.EditItemIndex = -1;
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();

        }



        else if (e.CommandName == "Cancel")
        {
            DataList1.EditItemIndex = -1;
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;

            DataList1.DataBind();
        }
        else if (e.CommandName == "SELIMG")
        {
            FileUpload FileUpload1 = (FileUpload)DataList1.Items[e.Item.ItemIndex].FindControl("FileUpload1");


            //TextBox tb = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox5");

            System.Web.UI.WebControls.Image im = (System.Web.UI.WebControls.Image)DataList1.Items[e.Item.ItemIndex].FindControl("Image2");
            // im.ImageUrl = "~/images/bg_main_form.png";
            //FileUpload FileUpload1 = DataList1.FindControl("FileUpload1") as FileUpload;

            if (FileUpload1.HasFile)
            {
                // tb.Text = "~/IMAGES/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('تم التحميل');", true);
                im.ImageUrl = "img/" + Path.GetFileName(FileUpload1.PostedFile.FileName);

            }

            else
            { ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('..يجب تحديد الصورة اولاً..');", true); }


        }
        else if (e.CommandName == "Del")
        {

            Label tl = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label2");
            SqlCommand cmd = new SqlCommand("delete [items]  WHERE [Id] =" + tl.Text, C.con);
            C.con.Open();
            cmd.ExecuteNonQuery();
            C.con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Deleted Successfully ');", true);
            DataList1.EditItemIndex = -1;
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;

            DataList1.DataBind();
            

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {



    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;

        C.con.Open();

        cmd = new SqlCommand(@"insert into [Items] ([name],[Tybe], [source],[Note],[link],[likes]) 
                                             values (@name,1,@path,@note,@link,0)", C.con);
        cmd.Parameters.AddWithValue("@name", TextBox6.Text);
        cmd.Parameters.AddWithValue("@path", Image3.ImageUrl);
        cmd.Parameters.AddWithValue("@link", TextBox7.Text);
        cmd.Parameters.AddWithValue("@note", TextBox8.Text);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('تم الحفظ  بنجاح ');", true);

        Panel2.Visible = false;
        C.con.Close();
        TextBox6.Text = "";
        Image3.ImageUrl = null;

        DataList1.DataSourceID = null;
        DataList1.DataSource = SqlDataSource1;
        DataList1.DataBind();
        TextBox6.Text = TextBox7.Text = TextBox8.Text = ""; Image3.ImageUrl = null;
    }
}