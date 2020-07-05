using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using find_your_road.Classes;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Web.Security;

namespace find_your_road
{
    public partial class UserInfo : System.Web.UI.Page
    {
        User user;
        String bio;
        String user_id;
        public static SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                              "Catalog=db;Integrated Security=True");
        //String imageLoc = "";

        public void get_my_post()
        {
            con.Open();
            my_post.InnerHtml = "";
            user_id = (String)Session["User_id"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Post WHERE UserId ='"+user_id+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String card = "<div class=\"card\">" +
                                "<h3><b>" + dr[2].ToString() + "</b></h3>" +
                                "<p>" + dr[3].ToString() + "</p>" +
                                "<div class=\"btns_my_posts\">" +
                                    "<button id=\"" + dr[0].ToString() + 
       "\" class=\"modifier_post button button_card\" runat=\"server\">modifier</button>" +
                                    "<button id=\"" + dr[0].ToString() + 
       "\" class=\"supprimer_post button button_card danger\" runat=\"server\">supprimer</button>" +
                                "</div>" +
                              "</div>";
                my_post.InnerHtml += card;
            }
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                    Response.Redirect("Sign In.aspx");
                else
                {
                    user = (User)Session["User"];
                    Page.Title = "Profile | " + user.getName();
                    User_name.Text = user.getName();
                    Input_Name.Text = user.getName();
                    User_bio.Text = user.getBio();
                    bio = user.getBio();
                    bio_asp_value.Value = user.getBio();
                    User_Avatar.ImageUrl = user.getAvatar();

                    get_my_post();
                }
                if((String)Session["User_id"] != null)
                    user_id = (String)Session["User_id"];
            }
        }
        
        protected string User_Bio_Input { get { return bio; } }

        protected void change_profile_Click(object sender, EventArgs e)
        {
            String bio_ = bio_asp_value.Value.ToString();
            String name = Input_Name.Text;
            user = (User)Session["User"];
            user_id = (String)Session["User_id"];
            
            con.Open();
            SqlCommand cmd2 = new SqlCommand("UPDATE User_ SET Name ='" + name + "', Bio = '" + bio_
                + "' WHERE UserId ='" + user_id + "'", con);
            cmd2.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand("SELECT * FROM User_ WHERE UserId = '" +
                                                user_id + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Page.Title = "Profile | " + dr[1].ToString();
                User_name.Text = dr[1].ToString();
                Input_Name.Text = dr[1].ToString();
                User_bio.Text = dr[4].ToString();
                bio = dr[4].ToString();
            }
            con.Close();
        }

        protected void change_mdps_Click(object sender, EventArgs e)
        {
            user = (User)Session["User"];
            user_id = (String)Session["User_id"];

            if (change_mdps_orgn.Text == user.getPassword() && 
                change_mdps_config.Text == change_mdps_config2.Text)
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("UPDATE User_ SET Password ='" +
                    change_mdps_config.Text + "' WHERE UserId ='" + user_id + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String id = (String)Session["User_id"] ;
            String path = Server.MapPath(FileUpload1.FileName);
            if (path != null)
            {
                string strpath = Path.GetExtension(FileUpload1.FileName);
                if (strpath != ".jpeg" && strpath != ".jpg" && strpath != ".png" && strpath != ".gif")
                    err.Text = "seulement les images (jpeg, jpg, png, gif) !";

                string fileimage = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string random = Membership.GeneratePassword(12, 1).ToString();
                //fileimage += random + strpath;
                try
                {
                    FileUpload1.SaveAs(Server.MapPath("~/imgs/") + fileimage);
                }
                catch (Exception m)
                {
                    err.Text = "échec du téléchargement de l'image !";
                    return;
                }


                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE User_ SET Avatar = '~/imgs/" + fileimage + "'"
                                                + " WHERE UserId = '" + id + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                User_Avatar.ImageUrl = "~/imgs/" + fileimage;
                scc.Text = "reconnectez-vous à nouveau pour confirmer les modifications";
            }
            else
                err.Text = "échec du téléchargement de l'image !";
        }

        [System.Web.Services.WebMethod]
        public static string id_Session(string strpath)
        {
            Page objp = new Page();
            objp.Session["Post_Id"] = strpath;
            return strpath;
        }

        [System.Web.Services.WebMethod]
        public static string edit_post(string strpath)
        {
            Page objp = new Page();
            objp.Session["Edit_Post_Id"] = strpath;
            return strpath;
        }

        [System.Web.Services.WebMethod]
        public static string delete_post(string strpath)
        {  
            SqlConnection con2 = new SqlConnection("Data Source=Bilal-PC;Initial " +
                                          "Catalog=db;Integrated Security=True");
            con2.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Post WHERE PostId = '"+strpath+"'", con2);
            cmd.ExecuteNonQuery();
            con2.Close();
            return strpath;
        }

        protected void Delete_Acount(object sender, EventArgs e)
        {
            user_id = (String)Session["User_id"];
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from User_ Where UserId = '" +user_id+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Sign In.aspx");
        }
    }
}