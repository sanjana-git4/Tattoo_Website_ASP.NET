<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="Tattoo_Studio.User.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="category/artist.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <!-- ===================Artists Start Section============================ -->

    <section class="artist-starter bg-gray grid">
        <h2 class="fs-poppins fs-300 bold-700">Artists</h2>
    </section>


    <div class="artist">
  
        <section class="recent-artist grid">
          <div class="artist-con grid">
            <img src="./Home_image/artist1.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">Mil Inked</h2>
            <p class="fs-montserrat padding-inline fs-100" style="font: 700">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
      
          <div class="artist-con grid">
            <img src="./Home_image/artist2.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">Tiki Chalo</h2>
            <p class="fs-montserrat padding-inline fs-100">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
      
          <div class="artist-con grid">
            <img src="./Home_image/artist4.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">Yash Niko</h2>
            <p class="fs-montserrat padding-inline fs-100">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
        </section> 

        <!---------------------------------->

        <section class="recent-artist grid">
          <div class="artist-con grid">
            <img src="./Home_image/artist5.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">Roxy Checl</h2>
            <p class="fs-montserrat padding-inline fs-100">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
      
          <div class="artist-con grid">
            <img src="./Home_image/artist3.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">Michel Chila</h2>
            <p class="fs-montserrat padding-inline fs-100">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
      
          <div class="artist-con grid">
            <img src="./Home_image/artist6.jpg" alt="">
            <h2 class="fs-poppins padding-inline fs-200 blod-600">John Zick</h2>
            <p class="fs-montserrat padding-inline fs-100">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper s ...</p>
          </div>
        </section>
    </div>



</asp:Content>
