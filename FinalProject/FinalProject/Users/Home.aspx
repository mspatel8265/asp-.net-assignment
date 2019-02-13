<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified" style="margin-right: 63px">
        <tr>
            <td style="width: 1718px" class="modal-lg">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 1718px; text-align: center; font-size: medium; color: #FF0066;" class="modal-lg"><strong><span style="color: #CC00CC"><span class="auto-style1">Welcome to the Twin Boys website.!!!</span><br />
                </span>Here we would like to provide with all the possible support we can.<br />
                You will get the best furniture here and we are glad to help you at our best.<br />
                We provide quality furniture at reasonable prices and are ready to provide you the best service at affordable price as well.
                <br />
                Here we fix the old furniture and during the special exchange offer you can exchange your old furniture with the new one...<br />
                Hope you will have a great experience and we would like to meet you again and again....<br />
                Have a great tour of our website and our store....<br />
                ENJOY !!!!</strong></td>
            <td style="height: 330px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="ImgTimer" runat="server" Interval="2000" OnTick="ImgTimer_Tick"></asp:Timer>
                        <asp:Image ID="ImgRotator" Height="447px" Width="330px" runat="server" style="margin-left: 112px; margin-right: 73px; margin-top: 0px;" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1718px" class="modal-lg">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1718px" class="modal-lg">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
