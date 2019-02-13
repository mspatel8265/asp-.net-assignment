<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FinalProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="nav-justified" style="height: 459px">
        <tr>
            <td colspan="3" style="height: 92px"><h1 class="text-center">Registration Page</h1>&nbsp;</td>
        </tr>
        <tr>
            <td>First Name :</td>
            <td>
                <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfName" ErrorMessage="First Name is required "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name :</td>
            <td>
                <asp:TextBox ID="txtlName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">Address :</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email :</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is incorrect " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Password :</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a Password"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should contain at least one uppercase letter, one lowercase letter, one number and one special character" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ErrorMessage="Both passord must be the same" ControlToValidate="TextBox6"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnRegister" runat="server" OnClick="Button1_Click" Text="Register" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

