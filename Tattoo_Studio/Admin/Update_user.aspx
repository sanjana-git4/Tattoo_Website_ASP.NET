<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Update_user.aspx.cs" Inherits="Tattoo_Studio.Admin.Update_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
             <div>
             <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Update User</h2>
           <hr />

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Username"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtUname" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>


               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Email"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtEmail" CssClass ="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                     <td>     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
               </div>
           </div>
               <div class ="form-group">
               <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label" Text="Contact"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtContact" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContact" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="Invalid number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td>
               </div>
           </div>

             <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                         <asp:Button ID="btnAdd1" CssClass ="btn btn-success " runat="server" Text="Submit" OnClick="btnAdd1_Click1"/>
                        
                    </div>
                </div>
           
           </div>
               
           </div>  
       </div>
        </div>
  </asp:Content>
