<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="FinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <table style="border: 1px ridge #999999; width: 450px;">
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1">&nbsp;&nbsp; </span>
                        <asp:Label ID="lable1" runat="server" Forecolor="#0033CC" Text="Log In Page" CssClass="auto-style1" />
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%;">
                        LoginId :
                    </td>
                    <td style="width: 50%;">
                        <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td style="width: 50%;">
                        Password :
                    </td>
                    <td style="width: 50%;">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td style="width: 50%;">
                       &nbsp;
                    </td>
                    <td style="width: 50%;">
                        <asp:Button ID="btnLogin" runat="server" text="Log In" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 50%;">
                        <hr />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblAlert" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>     
</asp:Content>
