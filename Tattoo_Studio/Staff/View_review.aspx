<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="View_review.aspx.cs" Inherits="Tattoo_Studio.Staff.View_review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    
      <div class="panel panel-default col-md-8 col-md-offset-2" >

                      <h1>Reviews</h1>
                     <div class="panel-heading">All Reviews</div>
                   
                       <asp:Repeater id="review" runat="server">
                         <HeaderTemplate>
                             <table class="table">
                         <thead>
                             <tr>
                                 
                                 <th>Customer</th>
                                 <th>Review</th>
                                 <th>R_date</th>
                                  <th>Action</th>
                             </tr>
                         </thead>
                                  
                         <tbody>
                         </HeaderTemplate>

                         <ItemTemplate>
                                 
                             <tr>
                                 <th><%# Eval("username")%></th>
                                 <td><%# Eval("description")%></td>
                                   <td><%# Eval("R_date")%></td>
                        
                                 <td>
                                     <a href="Delete_review.aspx?Id=<%#Eval("reviewId")%>">Delete</a>

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
