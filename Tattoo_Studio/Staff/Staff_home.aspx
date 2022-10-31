<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Staff_home.aspx.cs" Inherits="Tattoo_Studio.Staff.Staff_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <link rel="stylesheet" href="./css/Style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<br />
     <br />
     <br />
     <div class="artist">
        <section class="recent-artist grid">
         <a href="Add_Design.aspx">  <div class="artist-con grid">
              <img src="./images/img3.jpg" alt="">
              <h2 class="fs-poppins padding-inline fs-200 blod-600">Add Design</h2>
              
            </div></a> 
        
            <a href="View_appointment.aspx"><div class="artist-con grid">
              <img src="./images/img1.jpg" alt="">
              <h2 class="fs-poppins padding-inline fs-200 blod-600">View Appointments</h2>
              
            </div></a>
        
           <a href="View_review.aspx"> <div class="artist-con grid">
              <img src="./images/img7.jpg" alt="">
              <h2 class="fs-poppins padding-inline fs-200 blod-600">View Reviews</h2>
              
            </div></a>
          </section>
        </div>

</asp:Content>
