<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addProducts.aspx.cs" Inherits="FinalProject.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Add Products
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            height: 500px;
        }
    </style>
<style type="text/css">
    .auto-style6 {
        font-size: x-large;
    }
</style>
    <style type="text/css">
        .auto-style5 {
            margin-top: 0px;
        }
    </style>
    <style type="text/css">
        .auto-style5 {
            width: 221px;
        }
        .auto-style6 {
            width: 224px;
        }
        .auto-style7 {
            width: 385px;
        }
        .auto-style8 {
            width: 427px;
        }
        .auto-style9 {
            width: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
     <table class="auto-style8">
                                <tr>
                                    <td class="auto-style6" colspan="2"><strong>Add new Product&#39;s information</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Product Name :</td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Product Description :</td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="txtProdDesc" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Product Price :</td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="txtProdPrice" runat="server" OnTextChanged="txtProdPrice_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Product Image :</td>
                                    <td class="auto-style7">
                                        <asp:FileUpload ID="FileUploadProduct" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">
                                        <asp:Button ID="btnAddProduct" runat="server" OnClick="btnAddProduct_Click" Text="Add Product" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style7">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
</asp:Content>
