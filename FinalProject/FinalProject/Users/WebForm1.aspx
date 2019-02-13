<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FinalProject.Users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Photo Gallery" />
    <br />
    <br />
    <asp:Image ID="Image3" runat="server" Width="500px" Height="500px"/>
</asp:Content>
