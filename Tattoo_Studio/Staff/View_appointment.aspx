<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="View_appointment.aspx.cs" Inherits="Tattoo_Studio.Staff.View_appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <br />
    <br />
    
      <div class="panel panel-default col-md-8 col-md-offset-2" >

                      <h1>Appointment</h1>
                     <div class="panel-heading">All Appointment</div>
                   
                       <asp:Repeater id="appointment" runat="server">
                         <HeaderTemplate>
                             <table class="table">
                         <thead>
                             <tr>
                                 
                               
                                 <th>Date</th>
                                 <th>Email</th>
                                  <th>Contact</th>   
                                  <th>Customer</th>
                             </tr>
                         </thead>

                         <tbody>
                         </HeaderTemplate>

                         <ItemTemplate>
                                 
                             <tr>
                                 <
                                 <td><%# Eval("A_Date")%></td>
                                  <td><%# Eval("email")%></td>
                                  <th><%# Eval("contact")%></th>
                           
                                  <td><%# Eval("username")%></td>
                        
                                 <td>
                                     <a href="Delete_appointment.aspx?Id=<%#Eval("appointmentId")%>">Delete</a>

                                 </td>
                               
                             </tr>
                         </ItemTemplate>

                         <FooterTemplate>
                               </tbody>
                     </table>
                         </FooterTemplate>
                     </asp:Repeater>

                 </div>
              

</asp:Content>
