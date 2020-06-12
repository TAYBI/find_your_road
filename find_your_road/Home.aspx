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
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="Link" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink1" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink2" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink3" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink4" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink5" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink6" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink7" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink8" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink9" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink10" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink11" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink12" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink13" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink14" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink15" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink16" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink17" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink18" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink19" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
          <asp:HyperLink NavigateUrl="~/PostInfo.aspx" ID="HyperLink20" runat="server" class="card">
            <h4><b>Lorem, ipsum.</b></h4> 
            <p>Lorem ipsum dolor sit amet.</p> 
          </asp:HyperLink>
        </div>
      </div>
    </div>
    </main>

        
    <div class="box"></div>
    </form>
</body>
</html>
