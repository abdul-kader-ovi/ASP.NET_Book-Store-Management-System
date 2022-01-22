<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BookStore2._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" align="right">
        
            <h2>
            <asp:Label ID="lblLoggedInUser" runat="server" Text=""></asp:Label><asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="btnLogout_Click" Font-Bold="True" Height="36px" Width="105px" />

        </h2>
        
        
    </div>
    <div align="center">
        <h1><span style="color:cornsilk; fill:ButtonFace; border-style:outset; border-width:thick; font-size:100px; border-block-style:ridge; font-style:italic; font-stretch:expanded;">Welcome to Book's Paradise</span></h1>

    </div><br /><br /><br />
    <div align="center">
        <img src="App_Image/openBook.jfif" style="height:300px; width:500px; ime-mode:auto"/>
    </div>
   
</asp:Content>
