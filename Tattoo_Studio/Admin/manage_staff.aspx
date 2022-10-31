<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="manage_staff.aspx.cs" Inherits="Tattoo_Studio.Admin.manage_staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
             <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add Staff Member</h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Username"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtUname" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>


               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label" Text="Password" ></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtpwd" CssClass ="form-control" runat="server" TextMode="Password"  ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="Confirm Password" TextMode="Password"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtC_password" CssClass ="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtC_password" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtC_password" ErrorMessage="Password is not match" ForeColor="Red" ControlToCompare="txtpwd"></asp:CompareValidator>
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

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="Submit" OnClick="btnAdd_Click1" />
                        
                    </div>
                </div>
           
           </div>
                 </div>

              <br />
                 <hr />
                 <div class="panel panel-default col-md-8 col-md-offset-2" >

                      <h1>Users</h1>
                     <div class="panel-heading">All Users</div>
                    

                     <asp:Repeater ID="rptrstaff" runat="server">
                         <HeaderTemplate>
                             <table class="table " >
                         <thead>
                             <tr>
                                 
                                 <th>Username</th>
                                 <th>Email</th>
                                 <th>Contact</th>
                                 <th>Usertype</th>
                                   <th>Action</th>
                                  <th>Action</th>
                             </tr>
                         </thead>

                         <tbody>
                         </HeaderTemplate>

                         <ItemTemplate>
                                 
                             <tr>
                                 
                                 <td><%# Eval("username")%></td>
                                   <td><%# Eval("email")%></td>
                                   <td><%# Eval("contact")%></td>
                                   <td><%# Eval("usertype")%></td>
                                 <td>
                                     <a href="Delete_user.aspx?Id=<%#Eval("userId")%>">Delete</a>

                                 </td>
                                 <td>
                                     <a href="Update_user.aspx?Id=<%#Eval("userId")%>">Update</a>

                                 </td>
                             </tr>
                         </ItemTemplate>

                         <FooterTemplate>
                               </tbody>
                     </table>
                         </FooterTemplate>
                     </asp:Repeater>


                     

                    


                 </div>
                  </div>



        </div>
    
    </asp:Content>