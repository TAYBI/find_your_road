using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using find_your_road.Classes;

namespace find_your_road.Classes
{
    public class User
    {
        private String name;
        private String email;
        private String password;
        private String bio;

        public User(String name, String email, String pss, String bio)
        {
            this.name = name;
            this.email = email;
            this.password = pss;
            this.bio = bio;
        }

        public String getName()
        {
            return name;
        }
        public String getEmail()
        {
            return email;
        }
        public String getPassword()
        {
            return password;
        }
        public String getBio()
        {
            return bio;
        }
    }
}