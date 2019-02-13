<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="FinalProject.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ListView ID="productList" runat="server" DataKeyNames="ProductID">
        <EmptyDataTemplate>
            <table>
                <tr>
                    <td>No data was returned</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td runat="server">
                <table>
                    <tr>
                        <td>
                            <a href="ProductDetails.aspx?productID=<%#Eval("ProductID")%>">
                                <img src="//<%#Eval("ProductID") %>"
                                    width="100" height="75" style="border: solid"/></a>
                        </td>
                    </tr>
                </table>
            </td>
        </ItemTemplate>
    </asp:ListView>--%>
    <asp:DataList ID="ProductsPage" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <table>
                <tr>
                    <td style="height: 26px; width: 238px">Product Name : </td>
                    <td style="height: 26px; width: 253px">
                        <%#Eval("ProductName") %>
                    </td>
                    <td rowspan="3">
                        <img src="<%# Eval("ImageUrl") %>" height="100" width="100" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 53px; width: 238px">Product Description : </td>
                    <td style="height: 53px; width: 253px">
                        <%# Eval("ProductDesc") %>
                    </td>
                </tr>
                <tr>
                    <td style="height: 33px; width: 238px">Product price : </td>
                    <td style="height: 33px; width: 253px">$<%# Eval("ProductPrice") %></td>
                </tr>
                <tr>
                    <td style="height: 47px; width: 238px">
                        <%--<asp:HiddenField runat="server" ID="hdnFldProductID" Value="<%#Eval("ProductID")%>" />--%>
                    </td>
                    <td style="height: 47px; width: 253px">
                        <br />
                        <br />
                    </td>
                    <td style="height: 47px">
                        <asp:Button runat="server" CommandName="AddToCart" Text="Add to cart" ID="btnAddCart" OnClick="OnClick_btnAddToCart" OnCommand="btnAddCart_Command" /></td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
