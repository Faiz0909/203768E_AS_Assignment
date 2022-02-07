<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_203768E_AS_Assignment.Login" %>

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
    <script src="https://www.google.com/recaptcha/api.js?render=6Lcc3mEeAAAAAEDFKLm_QL_WrYjCDHAy0IZjMQ5U"></script>
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


    <section class="static about-sec">
        <div class="container">
            <h1>My Account / Login</h1>
             <p>Login using your email.</p>
            <label runat="server" ID="errorMsg" style="color:red;"></label>
            <div class="form">
                <form runat="server">
                    <div class="row">
                        <div class="col-md-5">
                            <asp:TextBox  runat="server" placeholder="Enter Email" ID="Email" type="email" required ="required"/>
                        </div>
                        <div class="col-md-5">
                            <asp:TextBox  runat="server" placeholder="Enter Password" ID="password" type="password" required ="required"/>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <asp:Button class="btn btn-black" ID="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Login"/>
                            <h5>not Registered? <a href="Register.aspx">Register here</a></h5>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <h5>Forgot password? <a href="/auth/loginforget">Click here</a></h5>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6Lcc3mEeAAAAAEDFKLm_QL_WrYjCDHAy0IZjMQ5U', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
        });
    </script>

    
</body>
</html>
