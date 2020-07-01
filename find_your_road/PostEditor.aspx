<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostEditor.aspx.cs" Inherits="find_your_road.PostEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css/simplemd.min.css" />
     <link rel="stylesheet" href="css/edit_post.css" />
     <style>
        .select {
            border: 1px solid #333;
            margin-left: 0.4rem;
            border-radius: 2rem;
            font-family: 'Montserrat', sans-serif;
            padding: 0.5rem 1rem;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">  
        
          
    <a  class="home_link" href="Home.aspx">Home</a>
        
    <h1 id="h1" style="">Post Editor</h1>
    <div class="container no">
        <hr />
       <b>titre</b>  
       <div class="field name_field">
            <asp:TextBox ID="Post_Title" type="text" name="email" class="input" 
                placeholder="Post titre" runat="server" required></asp:TextBox>
       </div>
        <br />
       <h4>info</h4>
       <div class="field bio_field">
            <textarea name="bio" class="input" 
                id="Post_Dis" cols="50" rows="2" runat="server" 
                placeholder="Post description" required></textarea>
       </div>
        <br />
        <b>type</b>  
        <asp:DropDownList ID="Post_Type" class="select" runat="server" required></asp:DropDownList>
        <br />
        <br />
        <br />
        <i>markdown editor</i>
      <textarea name="" id="markdown"></textarea>
    </div>
    <div class="container">
        <%--<div class="filter">--%>
<%--            <b>Choisissez un type:</b>
            <asp:TextBox ID="Type" name="email" class="input" 
                Text="Lorem, ipsum" placeholder="Email" runat="server" required></asp:Tex--tBox>--%>
            <%--<asp:DropDownList ID="Select" class="select" runat="server">
            </asp:DropDownList>--%>
<%--            <select name="option" id="option">
                <option value="web">web</option>
                <option value="design">design</option>
                <option value="server side">server side</option>
                <option value="mobile">mobile</option>
            </select>--%>
        <%--</div>--%>
        <br />
        <hr style="margin-bottom: 2rem;"/>
        <!--<asp:Button class="button" ID="Button1" runat="server" Text="téléverser un fichier" />-->
        <asp:Button class="button btnGreen" ID="Button2" runat="server" 
            Text="enregistrer et publier" OnClick="Button2_Click" />
    </div> 
        
        
    <asp:HiddenField runat="server" ID="post_Details" Value="" />
    <div class="box"></div>
    </form>
    <script src="js/simplemd.min.js"></script>
    <script src="js/mdtohtml.min.js"></script>
    <script>
        var md = new Remarkable({
            html: false, // Enable HTML tags in source            xhtmlOut: false, // Use '/' to close single tags (<br />)            breaks: false, // Convert '\n' in paragraphs into <br>            linkify: false, // Autoconvert URL-like text to links            // Enable some language-neutral replacement + quotes beautification            typographer: false,            // Double + single quotes replacement pairs, when typographer enabled,            // and smartquotes on. Set doubles to '«»' for Russian, '„“' for German.            quotes: "“”‘’",
        });

        var simplemde = new SimpleMDE({ element: document.getElementById("markdown") });

        var btn = document.querySelector("#Button2");
        var postDetails = document.querySelector("#post_Details");

        simplemde.codemirror.on("change", function () {
            //console.log(simplemde.value());
            postDetails.value = `${md.render(simplemde.value()).replace(/'/g, "’")}`;
            console.log(postDetails.value)
        });

        //btn.addEventListener("click", 
        //function Set_Post_detail(e) {
        //    e.preventDefault();
        //    postDetails.value = md.render(simplemde.value());
        //    console.log(postDetails.value)
        //}
        //)
    </script>
</body>
</html>
