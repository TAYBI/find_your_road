<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="find_your_road.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/user_profile.css" />
    <title>Document</title>
</head>
<body>
<form id="Form1" runat="server">
  <a  class="home_link" href="Home.aspx">Home</a>
 <header>
      <div class="container">
        <div class="user_info">
          <div class="avatar">
            <img src="imgs/avatar.jpg" width="150" height="150" />
          </div>
          <div class="user_personel_info">
            <h2 class="user_name">Lorem, ipsum.</h2>
            <!-- <h3 class="user_email">example@example.com</h3> -->
            <p class="user_bio">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error
              labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque
              quae dolore eligendi harum ratione voluptatum aliquid
              consequuntur?
            </p>
          </div>
        </div>
      </div>
    </header>

    <div class="tab">
      <div class="container">
        <button class="tablinks" onclick="openCity(event, 'profile')">
          Profile
        </button>
        <button class="tablinks" onclick="openCity(event, 'my_posts')">
          My posts
        </button>
        <button class="tablinks" onclick="openCity(event, 'posts_I_Liked')">
          Posts I Liked
        </button>
      </div>
    </div>

    <div id="profile" class="tabcontent">
      <div class="container">
        <h2><br/>Informations sur le profil</h2>
            <p>name</p>  
            <div class="field name_field">
                    <asp:TextBox ID="TextBox1" type="text" name="email" class="input" Text="Lorem, ipsum" placeholder="Email" runat="server" required></asp:TextBox>
            </div>
            <p>bio</p>
            <div class="field bio_field">
                <textarea name="bio" class="input" id="" cols="50" rows="5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic error labore fuga nobis. Non fuga ipsa sit nulla atque? Ipsa eos atque quaedolore eligendi harum ratione voluptatum aliquid consequuntur?</textarea>
            </div>
            <asp:Button class="button"  ID="Button2" runat="server" Text="mettre à jour le profil" />
        <h2><br/>Changer le mot de passe</h2>
            <div class="field">
                    <asp:TextBox ID="TextBox2" type="password" class="input" placeholder="Ancien mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                    <asp:TextBox ID="TextBox3" type="password" class="input" placeholder="Nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <div class="field">
                    <asp:TextBox ID="TextBox4" type="password" class="input" placeholder="Confirmer le nouveau mot de passe" runat="server" ></asp:TextBox>
            </div>
            <asp:Button class="button" ID="Button1" runat="server" Text="mettre à jour le mot de passe" />
        <h2><br />Zone dangereuse</h2>
            <asp:Button class="button danger" ID="Button3" runat="server" Text="supprimer mon compte" />
      </div>
    </div>

    <div id="my_posts" class="tabcontent">
    <div class="box"></div>
        <div class="container">
          <div class="filter">
            <label for="cars">Choose a type:</label>
            <select name="option" id="option">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>
           </div>
        <div class="grid">
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
        </div>
      </div>
    </div>

    <div id="posts_I_Liked" class="tabcontent">
      <div class="box"></div>
        <div class="container">
          <div class="filter">
            <label for="cars">Choose a type:</label>
            <select name="option" id="Select1">
              <option value="web">web</option>
              <option value="design">design</option>
              <option value="server side">server side</option>
              <option value="mobile">mobile</option>
            </select>
           </div>
        <div class="grid">
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
          <div class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </div>
        </div>
      </div>
    </div>
    
    <div class="box"></div>
    <script src="js/index.js" lang="javascript" type="text/javascript" ></script>
</form>
</body>
</html>
