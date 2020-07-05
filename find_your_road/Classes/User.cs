using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace find_your_road.Classes
{
    public class User
    {
        private String name;
        private String email;
        private String password;
        private String bio;
        private String avatar;

        public User(String name, String email, String pss, String bio, String avatar)
        {
            this.name = name;
            this.email = email;
            this.password = pss;
            this.bio = bio;
            this.avatar = avatar;
        }

        public String getName()
        {
            return name;
        }
        public String getPassword()
        {
            return password;
        }
        public String getEmail()
        {
            return email;
        }
        public String getBio()
        {
            return bio;
        }
        public String getAvatar()
        {
            return avatar;
        }
    }
}