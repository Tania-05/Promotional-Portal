<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ViewAD.aspx.vb" Inherits="Portal.ViewAD" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title>Promotional Portal</title>  
   

     <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet"/>

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"/>
    <link rel="stylesheet" href="css/nice-select.css" type="text/css"/>
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <style>
       
  
    .horizontal-scroll {
        width: 100%; /* Ensure the div takes up the available width */
        overflow-x: auto; /* Allow horizontal scrolling */
        white-space: nowrap; /* Prevent content from wrapping */
    }




       .custom-dropdown {
    height: 40px;
    width: 230px;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 5px 10px;
    font-size: 16px;
    background-color: #f9f9f9;
    color: #333;
}
.hamburger {
    display: inline-block;
    width: 20px;
    height: 3px;
    background-color: navy;
    margin-left: 5px; /* Adjust spacing as needed */
    position: relative;
}

.hamburger::before,
.hamburger::after {
    content: "";
    display: block;
    width: 100%;
    height: 100%;
    background-color: inherit;
    position: absolute;
}

.hamburger::before {
    top: -8px;
}

.hamburger::after {
    top: 8px;
}


#preview{
position:absolute;
border:3px solid #ccc;
background:#333;
padding:5px;
display:none;
color:#fff;
box-shadow: 4px 4px 3px rgba(103, 115, 130, 1);
}


    </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
</script>
<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        ShowImagePreview();
    });
    // Configuration of the x and y offsets
    function ShowImagePreview() {
        xOffset = -20;
        yOffset = 40;

        $("a.preview").hover(function (e) {
            this.t = this.title;
            this.title = "";
            var c = (this.t != "") ? "<br/>" + this.t : "";
            $("body").append("<p id='preview'><img src='" + this.href + "' alt='Image preview' />" + c + "</p>");
            $("#preview")
            .css("top", (e.pageY - xOffset) + "px")
            .css("left", (e.pageX + yOffset) + "px")
            .fadeIn("slow");
        },

        function () {
            this.title = this.t;
            $("#preview").remove();
        });

        $("a.preview").mousemove(function (e) {
            $("#preview")
            .css("top", (e.pageY - xOffset) + "px")
            .css("left", (e.pageX + yOffset) + "px");
        });
    };

</script>
</head>  
<body>  
      <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
    </div>
        <div class="humberger__menu__widget">

            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        </div>
    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> adsportal@gmail.com</li>
                               <%-- <li>Free Shipping for all Order of $99</li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="img/language.png" alt="">
                                <div>English</div>
                               <%-- <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>--%>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="Sign In.aspx"><i class="fa fa-user"></i> Sign In</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html">
        <img src="img/logo.png" alt="">
                            </a>
      <b style="color: #012970; font-size: 20px;">BrandBlitz</b>


    
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                       <%-- <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>--%>
                       <%-- <div class="header__cart__price">item: <span>$150.00</span></div>--%>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <form id="form1" runat="server">  
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                  
<span class="hamburger" style="vertical-align: middle;"></span>
<span style="color: #7fad39; display: inline-block; vertical-align: middle; margin-right: 5px;"><b style="font-size: 20px";>All Categories</b></span>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" CssClass="custom-dropdown" style="vertical-align: middle;">
</asp:DropDownList>




                    <%--<div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>--%>
                </div>
                 <div class="col-lg-6" style="margin-top:32px">
                     <div class="row">
                              <form action="#">
                            
                              <div class="col-lg-6" > <asp:TextBox ID="TextBox1" runat="server"  placeholder="What do yo u need?" Height="38px" ForeColor="Silver" BorderColor="Silver" BackColor="#CCCCCC"></asp:TextBox> </div> <div class="col-lg-5" style="margin-left:15px"><asp:Button ID="Button1" runat="server" Text="Search" Height="38px" BackColor="#7FAD39" BorderColor="#7FAD39" Width="70px" />
                               </div> 
                           </form>
                         </div>
                 </div>
                 <div class="col-lg-3">
                              <div class="hero__search" style="margin-top:30px">
                       <%-- <div class="hero__search__form">--%>
                             
                           <%-- <form action="#">--%>
                                <%--<div class="hero__search__categories">--%>
                                   <%-- All Categories--%>
                                   
                            
                                   <%-- <span class="arrow_carrot-down"></span>--%>
                                <%--</div>--%>
                               <%-- <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>--%>
                           <%-- </form>--%>
                       <%-- </div>--%>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>9846579932</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                     </div>

                <div class="col-lg-12">
           
                   <div class="hero__item set-bg" data-setbg="img/dp.jpg" style="height: 670px;">
    <div class="hero__text">
      <span style="font-family:'Roboto', sans-serif;"><b style="font-size: 20px;">BrandBlitz</b></span>


        <br />
        <br />
        <h5><b style="color: #012970";>"Where brands meet dreams, </br> and consumers find their desires..."</b> </h5>
       <%-- <p>Free Pickup and Delivery Available</p>--%>
       <%-- <a href="#" class="primary-btn">Read More</a>--%>
    </div>
</div>

                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
     <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/wn.jpg">
                            <h5><a href="#">Womenswear</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/mn.jpg">
                            <h5><a href="#">Menswear</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/kids.jpg">
                            <h5><a href="#">Kidswear</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/ft2.jpg">
                            <h5><a href="#">Footwear</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/wr.jpg">
                            <h5><a href="#">Watches</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/jw.jpg">
                            <h5><a href="#">Jewellery</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/makeup.jpg">
                            <h5><a href="#">Make Up</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/pf2.jpg">
                            <h5><a href="#">Perfumes</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/bg.jpg">
                            <h5><a href="#">HandBags</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/bbg.jpg">
                            <h5><a href="#">Backpacks</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/st.jpg">
                            <h5><a href="#">Headset</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/ph.jpg">
                            <h5><a href="#">Mobile Phones</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/home.jpg">
                            <h5><a href="#">Home Appliances</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/coa.jpg">
                            <h5><a href="#">Drink</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/ff.jpg">
                            <h5><a href="#">Food</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/ch.jpg">
                            <h5><a href="#">Candy</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/cake.jpg">
                            <h5><a href="#">Cake & Ice Creams</a></h5>
                        </div>
                    </div>
                     <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/pet.jpg">
                            <h5><a href="#">Pets</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Posted Ads</h2>
                    </div>
                </div>
            </div>

<div style="width: 1150px; overflow-x: auto; height: 600px;"> <!-- Adjust the width and height of the container div as needed -->
    <asp:DataList ID="dtlist" runat="server" RepeatColumns="4" CellPadding="5" CssClass="horizontal-scroll">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" class="preview" ToolTip='<%# Bind("Name") %>' NavigateUrl='<%# Bind("Name", "~/image/{0}") %>' runat="server">
                <asp:Image height="270px" Width="350" ID="Image1" ImageUrl='<%# Bind("Name", "~/image/{0}") %>' runat="server" />
            </asp:HyperLink>
        </ItemTemplate>
        <ItemStyle BorderColor="white" BorderStyle="dotted" BorderWidth="3px" HorizontalAlign="Center" VerticalAlign="Bottom" />
    </asp:DataList>
</div>
        </div>
    </section>
<%------------------------------------------------new di--------------------%>
            <!-- Featured Section Begin -->
   <section class="featured spad">
                <div class="container">
                         <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Free Add</h2>
                    </div>
                </div>
            </div>

         <div style="width: 1150px; overflow-x: auto; height: 600px;"> <!-- Adjust the width and height of the container div as needed -->
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="5" CssClass="horizontal-scroll">
       
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink2" class="preview" ToolTip='<%# Bind("Name")%>' NavigateUrl='<%# Bind("Name", "~/image1/{0}")%>' runat="server">
                <asp:Image height="270px" Width="350" ID="Image2" ImageUrl='<%# Bind("Name", "~/image1/{0}")%>' runat="server" />
            </asp:HyperLink>
        </ItemTemplate>
        <ItemStyle BorderColor="white" BorderStyle="dotted" BorderWidth="3px" HorizontalAlign="Center" VerticalAlign="Bottom" />
    </asp:DataList>
</div>
                    </div>
    </section>

<%--------------------------------------------new div-------------------------%>

    <!-- Featured Section End -->

    <!-- Banner Begin -->
   <%-- <div class="banner">--%>



       <%-- <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/nike.jpg" alt="" width="500px">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                       <img src="img/watch.jpg" alt="" height="280px" width="500px">

                    </div>
                </div>
            </div>
        </div>--%>
   <%-- </div>--%>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top Rated Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Review Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <%--<section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Cooking tips make cooking simple</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Visit the clean farm in the US</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                          
      <b style="color: #012970; font-size: 20px;">BrandBlitz</b>
    </a>
                        </div>
                        <ul>
                           <%-- <li>Address: 60-49 Road 11378 New York</li>--%>
                            <li>Phone: 9846579932</li>
                            <li>Email: adsportal@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <%--<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>--%>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <%--<h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>--%>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Designed By</i> by <a>Tania</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
   
  
   
        <%--<div>  
            <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor="Tomato"  AutoGenerateColumns="False" Height="252px" HorizontalAlign="Center" Width="641px">  
                <Columns>  
                    <asp:BoundField DataField="Description" HeaderText="Busness Details" />  
                    <asp:ImageField DataImageUrlField="Image_Data" HeaderText="Ad Details"></asp:ImageField>                     
                    <asp:ButtonField ButtonType="Button" Text="View Details" />
                </Columns>  

<HeaderStyle BackColor="Tomato"></HeaderStyle>
            </asp:GridView>  
        </div>  --%>
    </form>  
  
</body>  
</html> 
