<%@ Page Title="Store Locator" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="StoreLocator.aspx.cs" Inherits="FinalProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="width: 755px; height: 189px">
        <asp:Image ID="Image3" runat="server" Height="471px" ImageUrl="~/Images/googleMap.PNG" style="margin-top: 0px" Width="717px" />
    </p>
    <p style="width: 755px; height: 189px">
        &nbsp;</p>
    <p style="width: 755px; height: 29px; margin-top: 95px;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com/maps/@43.7197834,-79.3340727,15z">Google Maps</asp:HyperLink>
    </p> 
</asp:Content>
