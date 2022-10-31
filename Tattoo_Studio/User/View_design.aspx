<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="View_design.aspx.cs" Inherits="Tattoo_Studio.User.View_design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="category/shop.css" />
     <script src="category/shop.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="shop-feature bg-gray grid">
      <div>
       
      </div>
      <h2 class="fs-poppins fs-300 bold-700">Category Designs</h2>
    </section>

    
    <main class="shop-main-container grid">
  <asp:Repeater ID="c3" runat="server">
       <HeaderTemplate>
      <div>
     <div class="shop-title flex">
          <div>
            <h2 class="fs-poppins fs-300">Tattoo Style</h2>
            <p class="fs-montserrat">Showing 1-11 of 12 results</p>
          </div>
         </div>
        <!-- ==============Designs====================== -->

        <section class="shop-product grid">
            </HeaderTemplate>
      <ItemTemplate>
          <div class="product-list grid">
          <img src="./image/<%#Eval("image")%>" alt="" /></a>
            <p class="fs-montserrat bold-600"><%#Eval("design_name")%></p>
            <div class="shop-btn flex">
            <button class="bg-red text-white fs-montserrat">
               <a href="Add_To_Cart.aspx?id=<%#Eval("designId")%>"> Add To Cart</a>
              </button>
              <p class="fs-montserrat bold-700">$ <%#Eval("price")%></p>
            </div>

          </div>
          </ItemTemplate>
         <FooterTemplate>
        </section>

      </div>
              </FooterTemplate>
                    </asp:Repeater>
      <!-- ==============Shop-product====================== -->
      <section>
        <div class="sidebar-search text-black bg-gray flex">
            <asp:TextBox ID="txtsearch" runat="server"  placeholder="Search Here"
            Cssclass="fs-montserrat bg-gray"></asp:TextBox>
          
          <div>
              <asp:Button ID="Button1" runat="server" Text="Click" width="80px" height="50px" OnClick="Button1_Click1"/>
          </div>
        </div>

        <aside class="sidebar-category">
          <div class="category-list flex">
            <h3 class=" fs-poppins bold-700 fs-200">Tattoo Categories</h3>
            <i id="arrow" class="uil uil-angle-right" data-category="false"></i>
          </div>

          <div class="shop-category-list">
            <ul id="side-nav" class="sidebar-nav grid" data-category="false">
                <asp:DataList ID="cat" runat="server">
                    <ItemTemplate>
              <li>
                <a class="fs-montserrat text-black bold-500" href="View_design.aspx?category=<%#Eval("categoryId")%>"
                  ><%#Eval("category_name")%></a
                >
              </li>
                        </ItemTemplate>
            </asp:DataList>
            </ul>
          </div>
        </aside>
      </section>
    </main>


</asp:Content>
