<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tattoo_Studio.User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <main class="hero-section">
        <div>
          <h1 class="fs-250 fs-poppins">
            Try Your
            <span class="block lineheight fs-500 bold-700 big-wireless fs-poppins">Tattoo In</span>
            <span class="text-white fs-600 uppercase lineheight-2 bold-bolder fs-poppins">Real-Time</span>
          </h1>
          <img src="./Home_image/pngegg1.png" alt="" />
        </div> 
        <div class="hero-inner flex">
          <div>
            
            <button type="button" class="large-btn text-white fs-poppins fs-50" onclick="location.href='AboutUs.aspx'">
              About Us
            </button> 
          </div>
          <div class="hero-info">
            <h4 class="fs-montserrat">Get Your Dream as You Want</h4>
            <p class="fs-montserrat">
              You can choose any tattoo that you want.We have provided verius tattoo desigs
            </p>
          </div>
        </div>
      </main>
  
    <!-------------------Design section--------------------->

<!--category 1 -->
<section class="product-section">
    <div class="category grid">
      <div>
        <h3 class="text-white fs-300 fs-montserrat bold">
          Geometric <span class="block fs-300 fs-poppins bold">Tattoos</span>
          <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
        </h3>
        <button type="button" class="prdduct-btn large-btn text-white bg-red fs-montserrat" onclick="location.href='View_design.aspx?category=1'">
          Browse
        </button>
      </div>

        <img class="product-img1" src="./Home_image/ctg img1 .jpg" alt="" />
      
    </div>

<!--category2-->
    <div class="category grid">
        <div>
          <h3 class="text-white fs-300 fs-montserrat bold">
            Colour<span class="block fs-300 fs-poppins bold">Tattoos</span>
            <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
          </h3>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-montserrat" onclick="location.href='View_design.aspx?category=2'">
            Browse
          </button>
        </div>
        
          <img class="product-img2" src="./Home_image/PO-8.jpg" alt="" />
        
      </div>

<!--category 3 -->
      <div class="category grid">
        <div>
          <h3 class="text-white fs-300 fs-montserrat bold">
           Portraiture <span class="block fs-300 fs-poppins bold">Tattoos</span>
            <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
          </h3>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-montserrat" onclick="location.href='View_design.aspx?category=3'">
            Browse
          </button>
        </div>
        
          <img class="product-img3" src="./Home_image/ctg img (2).jpg" alt="" />
        
      </div>

<!--category 4 -->

      <div class="category grid">
        <div>
          <h3 class="text-white fs-300 fs-montserrat bold">
            Small <span class="block fs-300 fs-poppins bold">Tattoos</span>
            <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
          </h3>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-montserrat" onclick="location.href=View_design.aspx?category=4'">
            Browse
          </button>
        </div>

          <img class="product-img4" src="./Home_image/ctg img (4).jpg" alt="" />

      </div>

<!--category 5-->
      <div class="category grid">
        <div>
          <h3 class="text-white fs-300 fs-montserrat bold">
            Pet <span class="block fs-300 fs-poppins bold">Tattoos</span>
            <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
          </h3>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-montserrat" onclick="location.href='View_design.aspx?category=5'">
            Browse
          </button>
        </div>

          <img class="product-img5" src="./Home_image/PE-10.jpg" alt="" />

      </div>

<!--category 6 -->
      <div class="category grid">
        <div>
          <h3 class="text-white fs-300 fs-montserrat bold">
            Couple <span class="block fs-300 fs-poppins bold">Tattoos</span>
            <span class="earphone uppercase fs-400 fs-montserrat bold-900 lineheight">Inkstar</span>
          </h3>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-montserrat" onclick="location.href='View_design.aspx?category=6'">
            Browse
          </button>
        </div>

          <img class="product-img6" src="./Home_image/CU-19.jpg" alt="" />

      </div>

</section>

    
<!-------------------Service section--------------------->

  <!-- =============Service section============== -->

  <section class="service-section">
    <div class="service">
      <img src="./Home_image/smile.svg" alt="" />
      <div class="service-info">
        <h3 class="fs-poppins fs-200">Customer Satisfaction</h3>
        <p class="fs-montserrat fs-50">100% Customer Satisfaction</p>
      </div>
    </div>
    <div class="service">
      <img src="./Home_image/stopwatch.svg" alt="" />
      <div class="service-info">
        <h3 class="fs-poppins fs-200">On-Time Service</h3>
        <p class="fs-montserrat fs-50">Save Your Valuable Time</p>
      </div>
    </div>
    <div class="service">
      <img src="./Home_image/credit-card.svg" alt="" />
      <div class="service-info">
        <h3 class="fs-poppins fs-200">Secure Payment</h3>
        <p class="fs-montserrat fs-50">All Cards Accepted</p>
      </div>
    </div>
    <div class="service">
      <img src="./Home_image/phone-volume.svg" alt="" />
      <div class="service-info">
        <h3 class="fs-poppins fs-200">Provide Support</h3>
        <p class="fs-montserrat fs-50">Talk To Us Anytime</p>
      </div>
    </div>
  </section>

        <!-- ===================Feature Section============= -->

    <section class="feature-section">
        <div class="feature-one grid">
          <img src="./Home_image/feature img.jpg" alt="" />
          <p class="text-white uppercase"></p>
          <p class="font-size lineheight fs-600 text-white fs-poppins bold-800 uppercase">
             Fine<span class="smile"> Smile</span>
          </p>
          <p class="text-white fs-poppins fs-50"></p>
        </div>
        <div class="feature-info">
          <h2 class="fs-200 text-white fs-poppins bold-500"></h2>
          <p class="fs-poppins fs-300 bold-800 text-white"></p>
          <p class="fs-montserrat text-white fs-200">
            "Cover Your Body Without Any Commitment"
          </p>
          <button type="button" class="prodduct-btn large-btn text-white bg-white fs-poppins" onclick="location.href='Appointment.aspx'">
            More
          </button>
        </div>
      </section>

          <!-- ===========================Heading======================== -->
      <section class="best-Seller">
        <div class="product grid">
          <img src="./Home_image/best prdct img (8).jpg" alt="" />
          <p class="fs-poppins bold-500">Geometric Tattoo</p>
        </div>


        <div class="product grid">
            <img src="./Home_image/best prdct img7.jpg" alt="" />
            <p class="fs-poppins bold-500">Small Tattoo</p>
        </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img6.jpg" alt="" />
            <p class="fs-poppins bold-500">Cover Tattoo</p>
          </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img5.jpg" alt="" />
            <p class="fs-poppins bold-500">Geometric Tattoo</p>
          </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img4.jpg" alt="" />
            <p class="fs-poppins bold-500">Small Tattoo</p>
          </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img3.jpg" alt="" />
            <p class="fs-poppins bold-500">Potrait Tattoo</p>
          </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img2.jpg" alt="" />
            <p class="fs-poppins bold-500">Geometric Tattoo</p>
          </div>

          <div class="product grid">
            <img src="./Home_image/best prdct img1.jpg" alt="" />
            <p class="fs-poppins bold-500">Potrait Tattoo</p>
          </div>


      </section>

    

      <!-- =========================================== -->
    <section class="feature-section">
        <div class="feature-green feature-one grid">
          <img src="./Home_image/feature green.jpg" alt="" />
          <p class="text-white uppercase"></p>
          <p
            class="font-size lineheight fs-500 text-white fs-poppins bold-900 uppercase"
          >
            HAPPY <span class="smile">HOURS</span>
          </p>
          <p class="text-white fs-poppins fs-50"></p>
        </div>
        <div class="feature-info">
          <h2 class="fs-200 text-white fs-poppins bold-500"></h2>
          <p class="fs-poppins fs-300 bold-800 text-white"></p>
          <p class="fs-montserrat text-white fs-200">
           "Get inspired for your next tattoo"
          </p>
          <button type="button" class="prdduct-btn large-btn text-white bg-white fs-poppins" onclick="location.href='View_design.aspx'">
            More
          </button>
        </div>
      </section>




        <!-- =================Heading recent News================================ -->
    <section class="best-product container">
        <h2 class="letter-spacing bold-bolder fs-300 fs-poppins">New Trends</h2>
        <p class="fs-montserrat fs-100">Get In Touch With The Trends</p>
      </section>
      <!-- ============Recent News=========================== -->
  
      <section class="recent-news grid">
        <div class="news grid">
          <img src="./Home_image/trends1.jpg" alt="" />
          <div class="fs-montserrat fs-100 flex padding-inline">
          </div>
          <h2 class="fs-poppins padding-inline fs-200 blod-600">
            Micro Realism
          </h2>
          <p class="fs-montserrat padding-inline fs-100">
             Micro realism tattoos execute the photorealistic 
            approach in tattooing while only covering a small area of the skin
          </p>
        </div>


        <div class="news grid">
            <img src="./Home_image/trends2.jpg" alt="" />
            <div class="fs-montserrat fs-100 flex padding-inline">
            </div>
            <h2 class="fs-poppins padding-inline fs-200 blod-600">
              Colorful Creations
            </h2>
            <p class="fs-montserrat padding-inline fs-100">
             Even though traditionally tattoos were black and
                grey, color is the new trend to look out for this year
            </p>
          </div>


          <div class="news grid">
            <img src="./Home_image/trend3.jpg" alt="" />
            <div class="fs-montserrat fs-100 flex padding-inline">
            </div>
            <h2 class="fs-poppins padding-inline fs-200 blod-600">
             Abstract Beauty
            </h2>
            <p class="fs-montserrat padding-inline fs-100">
             Tattoos are meant to be an expressive and free space
                to create whatever you want with ink on your skin
            </p>
          </div>
      </section>




</asp:Content>
