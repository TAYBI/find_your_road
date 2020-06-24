<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostInfo.aspx.cs" Inherits="find_your_road.PostInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/main.css" />
    <style>
        .home_link {
            text-decoration: none;
            padding: 0.75rem 1.5rem;
            background: #333;
            color: white;
            position: fixed;
            border-radius: 25px;
            right: 2rem;
            top: 0.7rem;
            transition: all ease-in 0.3s;
            box-shadow: 4px 8px 22px -22px rgba(128, 128, 128, 0.45);
        }

        h1, h2{
            margin: 1rem 0rem;
        }

        h3, h4, h5, h6 {
            margin: 0.5rem 0rem;        
        }

        .home_link:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="box"></div>
    <a  class="home_link" href="Home.aspx">Home</a>
    <div class="container" id="container" runat="server">
        <h1>post info</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="box"></div>
    </form>
        <!--<script>             //Actual default values            var md = new Remarkable({                html: false, // Enable HTML tags in source                xhtmlOut: false, // Use '/' to close single tags (<br />)                breaks: false, // Convert '\n' in paragraphs into <br>                linkify: false, // Autoconvert URL-like text to links                // Enable some language-neutral replacement + quotes beautification                typographer: false,                // Double + single quotes replacement pairs, when typographer enabled,                // and smartquotes on. Set doubles to '«»' for Russian, '„“' for German.                quotes: "“”‘’",            });
    </script>-->
</body>
</html>
