<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="find_your_road.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body class="dropbtn">
    <form id="form1" runat="server">
    <nav>
      <a href="PostEditor.aspx" class="new_post">+ new post</a>
      <div class="dropdown">
        <img src="imgs/avatar.jpg" alt="avatar" width="55" height="55" class="dropbtn img" />
        <div class="dropdown-content">
          <a href="UserInfo.aspx">profile</a>
          <a href="PostEditor.aspx">new post</a>
          <a href="Sign In.aspx">log out</a>
        </div>
      </div>
    </nav>
    <main>
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
    </main>
    </form>
</body>
</html>
