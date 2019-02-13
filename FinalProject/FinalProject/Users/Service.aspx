<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="FinalProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="ServicePage" runat="server">
        <ItemTemplate>
            <table style="height: 225px; width: 374px">
                <tr>
                     <td style="width: 179px; height: 55px">Service Name : </td>
                    <td style="height: 55px"></td>
                    <td class="servHeading" style="height: 55px">
                        <%#Eval("ServiceName") %>
                    </td>
                </tr>
                <tr>
                    <td style="width: 179px; height: 55px">Service Description : </td>
                    <td style="height: 55px"></td>
                   <td style="height: 55px" >
                      <%#Eval("ServiceDesc") %>
                   </td>
                </tr>
                <tr>
                     <td style="width: 179px; height: 55px">Service Cost : </td>
                    <td style="height: 55px"></td>
                    <td style="height: 55px">
                        <%#Eval("ServiceCost") %>

                    </td>
                </tr>
                <tr>
                    <td style="width: 179px"></td>
                    <td></td>
                    <td>
                        <asp:LinkButton runat="server" Text="Get more Info..."></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
