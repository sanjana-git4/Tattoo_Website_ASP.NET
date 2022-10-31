<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Add_Appointment.aspx.cs" Inherits="Tattoo_Studio.User.Add_Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="category/appointment1.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <h2 style="text-align:center">Make Appointment</h2>
    <div class="container">
  
    <div class="row">
      <div class="col-25">
        <label for="fname">Artist Name</label>
      </div>
      <div class="col-75">
      
     <asp:DropDownList ID="txtartist" CssClass ="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Date</label>
      </div>
      <div class="col-75">
        <asp:textbox id="txtdate" runat="server" placeholder="DD/MM/YYYY" class="input-text"></asp:textbox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Date" ControlToValidate="txtdate" ForeColor="Red" ></asp:RangeValidator>
          MaximumValue="13/10/2029" MinimumValue="13/10/2022"
      </div>
      </div>
   
     <div class="row">
      <div class="col-25">
        <label for="lname">Email</label>
      </div>
      <div class="col-75">
        <asp:textbox id="txtemail" runat="server" placeholder="Email" class="input-text"></asp:textbox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

      </div>
      </div>
      
    
   <div class="row">
      <div class="col-25">
        <label for="lname">Contact</label>
      </div>
      <div class="col-75">
        <asp:textbox id="txtcontact" runat="server" placeholder="Contact" class="input-text"></asp:textbox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Invalid number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
      
      </div>
      </div>

     
    <div class="row">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
    </div>







</asp:Content>
