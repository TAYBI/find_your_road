<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSingnUp.Master" AutoEventWireup="true" CodeBehind="Singn Up.aspx.cs" Inherits="find_your_road.Singn_Up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sing Up
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sing Up</h2>
    <div class="field">
        <asp:TextBox ID="name" type="name" name="name" class="input" placeholder="Nom" runat="server" required></asp:TextBox>
    </div>

    <div class="field">
        <asp:TextBox ID="email" type="email" name="email" class="input" placeholder="Email" runat="server" required></asp:TextBox>
    </div>

    <div class="field">
        <asp:TextBox ID="password" type="password" name="password" class="input" placeholder="Mot de pass" runat="server" required></asp:TextBox>
    </div>

    <div class="field">
        <asp:TextBox ID="re_password" type="password" name="password" class="input" placeholder="Confirmez le mot de passe" runat="server" required></asp:TextBox>
    </div>
    <br />
    <asp:Button class="button" type="submit" ID="Button1" runat="server" Text="sing up" OnClick="Button1_Click" />
    <%--<button type="submit">sing up</button>--%>
</asp:Content>
