<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_203768E_AS_Assignment.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stationary Store</title>
    <!--ALL  LINKS HERE-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="~/css/main.css"/>
    <link rel="stylesheet" href="~/css/styles.css"/>
</head>
<body>

    <header>
    <div class="main-menu">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="navbar-item  ">
                            <a href="/Index.aspx" class="nav-link">Home</a>
                        </li>
                        <li class="navbar-item">
                            <a href="/Login.aspx" class="nav-link">Login</a>
                        </li>
                        <li class="navbar-item">
                            <a href="/Register.aspx" class="nav-link">Register</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>
    <br />
    <br />
    <br />

<section class="features-sec">
    <div class="container">
        <ul>
            <li>
                <span class="icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                <h3>SAFE SHOPPING</h3>
                <h5>Safe Shopping Guarantee</h5>
                <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
            </li>
            <li>
                <span class="icon return"><i class="fa fa-reply-all" aria-hidden="true"></i></span>
                <h3>30- DAY RETURN</h3>
                <h5>Moneyback guarantee</h5>
                <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
            </li>
            <li>
                <span class="icon chat"><i class="fa fa-comments" aria-hidden="true"></i></span>
                <h3>24/7 SUPPORT</h3>
                <h5>online Consultations</h5>
                <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
            </li>
        </ul>
    </div>
</section>
<section class="offers-sec" style="background:url(images/offers.jpg)no-repeat;">
    <div class="cover"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="detail">
                    <h3>Top 50% OFF on Selected</h3>
                    <h6>We are now offering some good discount
                on selected books go and shop them</h6>
                    <a href="/shop" class="btn blue-btn">view all books</a>
                    <span class="icon-point percentage">
                        <img src="/public/images/precentagae.png" alt="">
                    </span>
                </div>
            </div>
            <div class="col-md-6">
                <div class="detail">
                    <h3>Shop $ 500 Above and Get Extra!</h3>
                    <h6>We are now offering some good discount
                on selected books go and shop them</h6>
                    <a href="/shop" class="btn blue-btn">view all books</a>
                    <span class="icon-point amount"><img src="/public/images/amount.png" alt=""></span>
                </div>
            </div>
        </div>
    </div>
</section>


    
</body>
</html>

