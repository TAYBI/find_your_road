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

namespace find_your_road
{
    public partial class UserInfo : System.Web.UI.Page
    {
        User user;
        String bio;
        String user_id;
        SqlConnection con = new SqlConnection("Data Source=Bilal-PC;Initial "+
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
                String card = "<div id=\"" + dr[0].ToString() + "\" class=\"card\">" +
                              "<h5><b>" + dr[2].ToString() + "</b></h5>" +
                              "<p>" + dr[3].ToString() + "</p>" +
                              "</div>";
                my_post.InnerHtml += card;
            }
            con.Close();
        }

        public void get_post_I_liked()
        {
            con.Open();
            post_I_liked.InnerHtml = "";
            user_id = (String)Session["User_id"];
            SqlCommand cmd = new SqlCommand("SELECT P.*  FROM Post P,"+
                " Post_Liked PL WHERE P.PostId = PL.PostId and PL.UserId = '"+user_id+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String card = "<div id=\"" + dr[0].ToString() + "\" class=\"card\">" +
                              "<h5><b>" + dr[2].ToString() + "</b></h5>" +
                              "<p>" + dr[3].ToString() + "</p>" +
                              "</div>";
                post_I_liked.InnerHtml += card;
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


                    get_my_post();
                    get_post_I_liked();
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

        protected void User_Avatar_Click(object sender, ImageClickEventArgs e)
        {
            //string folderPath = Server.MapPath("~/Desktop/");

            //Check whether Directory (Folder) exists.
            //if (!Directory.Exists(folderPath))
            //{
            //    //If Directory (Folder) does not exists Create it.
            //    Directory.CreateDirectory(folderPath);
            //}

            ////Save the File to the Directory (Folder).
            //FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            ////Display the Picture in Image control.
            //User_Avatar.ImageUrl = Path.GetFileName(FileUpload1.FileName);

            //try
            //{
            //    FileUpload dtg = new FileUpload();
            //    dtg.tit
            // //   OpenFile
            //}
            //catch (Exception m)
            //{
            //}
            //user = (User)Session["User"];
            //con.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM User_ WHERE UserId = '" +
            //                                   user_id + "'", con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    Page.Title = "Profile | " + dr[1].ToString();
            //    User_name.Text = dr[1].ToString();
            //    Input_Name.Text = dr[1].ToString();
            //    User_bio.Text = dr[4].ToString();
            //    bio = dr[4].ToString();
            //}
            //con.Close();
        }

        protected void uploadFile_Click(object sender, EventArgs e)
        {
            //String id = (String)Session["User_id"] ;

            //if(FileUpload1.PostedFile != null)
            //{
            //    string strpath = Path.GetExtension(FileUpload1.FileName);
            //    if (strpath != ".jpeg" && strpath != ".jpg" && strpath != ".png" && strpath != ".gif")
            //    {
            //        // TODO
            //        // display msg EROR
            //    }

            //    string fileimage = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //    FileUpload1.SaveAs(Server.MapPath("~/imgs/") + fileimage);

            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("UPDATE User_ SET  Avatar = '~/imgs/"+ fileimage +"'"
            //                                    + " WHERE UserId = '" + id+ "'", con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();

            //    User_Avatar.ImageUrl = "~/imgs/" + fileimage;
            //}

        //    string folderPath = Server.MapPath("~/Files/");

        //    //Check whether Directory (Folder) exists.
        //    if (!Directory.Exists(folderPath))
        //    {
        //        //If Directory (Folder) does not exists Create it.
        //        Directory.CreateDirectory(folderPath);
        //    }

        //    //Save the File to the Directory (Folder).
        //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //    //Display the Picture in Image control.
        //    User_Avatar.ImageUrl =  "~/Files/" + Path.GetFileName(FileUpload1.FileName);
        }
    }
}