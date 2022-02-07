<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_203768E_AS_Assignment.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stationary Store</title>
    <!--ALL CSS LINKS HERE-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="~/css/main.css"/>
    <link rel="stylesheet" href="~/css/styles.css"/>
    <script>
    document.getElementById("Password").addEventListener("keyup", validate);
    document.getElementById("passwordStrength").addEventListener("keyup", validate);
    var points = 0;
    function validate() {
        var passwd = document.getElementById("Password")
        if (passwd.value.length < 12) {
            document.getElementById("passwordCheck").innerHTML = "Password must have a minimum of 12 characters"
            points = 0;
        }
        else if (passwd.value.search(/[0-9]/) == -1) {
            document.getElementById("passwordCheck").innerHTML = "Password must have atleast one number"
            points = 0;
        }
        else if (passwd.value.search(/[a-z]/) == -1) {
            document.getElementById("passwordCheck").innerHTML = "Password must have atleast one small case letter"
            points = 0;
        }
        else if (passwd.value.search(/[A-Z]/) == -1) {
            document.getElementById("passwordCheck").innerHTML = "Password must have atleast one upper case letter"
            points = 0;
        }
        else if (passwd.value.search(/[!@@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/) == -1) {
            document.getElementById("passwordCheck").innerHTML = "Password must have atleast one special char"
            points = 0;
        }
        else {
            points += 1;
            document.getElementById("passwordCheck").innerHTML = ""
        }
        if (points == 1) {
            document.getElementById("passwordStrength").innerHTML = "Strong password"
            document.getElementById("passwordStrength").style.color = "Green"
        }
        else if(points == 0){
            document.getElementById("passwordStrength").innerHTML = "Weak password"
            document.getElementById("passwordStrength").style.color = "Red"
        }
    }
    </script>
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



    
    <section class="static about-sec">
        <div class="container">
            <h1>My Account / Register</h1>
             <p>Fill in the details to register.</p>   
            <div class="form">
                <form runat="server">
                    <div class="row">
                        <div class="col-md-4">
                            <asp:TextBox  runat="server" placeholder="Enter First Name" ID="Fname" type="text" required ="required"/>                    
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" placeholder="Enter Last Name" name="Lname" ID="Lname" type="text" required ="required"/>                    
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" placeholder="Enter Credit Card Info" name="credit" ID="credit" type="text" required ="required"/>                    
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" placeholder="Enter Email" name="Email" ID="Email" type="email" required ="required"/>                    
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" placeholder="Enter Password" name="Password" ID="Password" type="password" required ="required" onkeyup="javascript:validate()"/>
                            <label id="passwordCheck" style="color:red;"></label>
                            <label id="passwordStrength"></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" name="DOB" ID="DOB" type="date" required ="required"/>                    
                        </div>
                        <div class="col-md-4">
                            <label style="padding-bottom:40px;">Upload profile picture</label>
                            <asp:FileUpload ID="photo" runat="server" />
                        </div>
                        
                        <div class="col-lg-8 col-md-12">
                            <br><br><br><br><br><br>
                            <asp:Button class="btn black" ID="btnRegister" OnClick="btnRegister_Click" runat="server" Text="Register"/>
                            <h5>Have an account? <a href="/Login.aspx">Login here</a></h5>
                        </div>
                        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>
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
