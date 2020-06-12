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

        .home_link:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <a  class="home_link" href="Home.aspx">Home</a>
    <div class="container">
        <h1>post info</h1>
    </div>
    </form>
</body>
</html>
