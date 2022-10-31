<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Tattoo_Studio.User.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
     <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
               
        </HeaderTemplate>
        <ItemTemplate>
     
     <div style="height:300px; width:600px; border-style:solid; border-width:1px;">

    <div style="height:300px; width:200px; float:left; border-style:solid; border-width:1px;">
         <img src='./image/<%#Eval("image")%>' height="300" width="200" alt="" /></div>


     <div style="height:300px; width:395px; float:left; border-style:solid; border-width:1px;">
         item name=<%#Eval("design_name") %><br />product desciption=<%#Eval("price") %><br /></div>

</div>
        </ItemTemplate>

        <FooterTemplate>
            
        </FooterTemplate>
         </asp:Repeater>
    <asp:Button ID="btn" runat="server" Text="Button" OnClick="btn_Click" />
</asp:Content>
