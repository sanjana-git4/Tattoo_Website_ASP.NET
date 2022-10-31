<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="View_cart.aspx.cs" Inherits="Tattoo_Studio.User.View_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:DataList ID="d1" runat="server">
                <HeaderTemplate>
                    <table border="1">
                        <tr style="background-color:silver; color:white; font:weight:bold">
                            <td>Design image</td>
                                <td>Design name</td>
                                <td>Price</td> 
                                <td>delete</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                     
                    <tr>
                        <td><img src="../images/<%#Eval("image") %>" height="100" width="100" /></td>
                        <td><%#Eval("design_name") %></td>
                        <td>$<%#Eval("price") %></td>
                        
                        <td><a href="Delete_cart.aspx?id=<%#Eval("designId") %>">delete</a></td>
                    </tr>

</ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
           <br />
            <p align="center">
                <asp:Label ID="l1" runat="server" Text=""></asp:Label>
            </p>
</asp:Content>
