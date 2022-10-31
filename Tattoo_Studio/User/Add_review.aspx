 <%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Add_review.aspx.cs" Inherits="Tattoo_Studio.User.Add_review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="category/review.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
<h2>ADD YOUR REVIEW</h2>

    <div>
<div class="container">


  <div class="row">
   
    <div class="col-80">
        <asp:TextBox ID="txtcomment" runat="server" placeholder="Write your review....." style="height:200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcomment" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

    </div>
  </div>
  <br>
  <div class="row">
      <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
  </div>
      
</div>
         
        </div>
   
    <br />

    <br />

</asp:Content>
