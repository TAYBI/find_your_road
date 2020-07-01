using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace find_your_road.Classes
{
    public class Post
    {
        private String title;
        private String disc;
        private String password;
        private String type;
        private String details;

        public Post(String title, String disc, String pss, String type)
        {
            this.title = title;
            this.disc = disc;
            this.password = pss;
            this.type = type;
        }

        public String getName()
        {
            return title;
        }
        public String getPassword()
        {
            return password;
        }
        public String getEmail()
        {
            return disc;
        }
        public String getBio()
        {
            return type;
        }
    }
}