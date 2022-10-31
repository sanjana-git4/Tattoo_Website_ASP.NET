<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_home.aspx.cs" Inherits="Tattoo_Studio.Admin.Admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" href="./css/Style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <br />
    	<br />
    	<br />
		<br />
    	<br />
	
	<div class="artist">
	<section class="recent-artist grid">
		<a href="manage_staff.aspx"><div class="artist-con grid">

		  <img src="./images/img1.jpg" alt="">
		  <h2 class="fs-poppins padding-inline fs-200 blod-600">Manage Staff</h2>
		  
		</div></a>
	
	
	
		<a href="View_review.aspx"><div class="artist-con grid">
		  <img src="./images/img7.jpg" alt="">
		  <h2 class="fs-poppins padding-inline fs-200 blod-600">View Reviews</h2>
		  
		</div></a>
	  </section>
    </div>

		</asp:Content>
