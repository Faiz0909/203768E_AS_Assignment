<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loggedin.aspx.cs" Inherits="_203768E_AS_Assignment.Loggedin" %>

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
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
    <style>
          a.logout{
            text-decoration: none;
            color: #ffffff;
          }
          a.logout:hover{
            color: orange;
          }
    </style>

</head>
<body>

<!--    <header>
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
</header> -->
    <br />
    <br />
    <br />
    <h1 style="text-align:center;">Yay, you're logged in!</h1>
    <br />
    <br />
    <br />
        
<div class="container">
<div class="row flex-lg-nowrap">
  <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
    <div class="card p-3">
      <div class="e-navlist e-navlist--active-bg">
        <ul class="nav">
          <li class="nav-item"><a class="nav-link px-2" href="/Loggedin.aspx"><i class="fa fa-fw fa-cog mr-1"></i><span>Settings</span></a></li>        </ul>
      </div>
    </div>
  </div>

  <div class="col">
    <div class="row">
      <div class="col mb-3">
        <div class="card">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                  <div class="text-center text-sm-left mb-2 mb-sm-0">
                    <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap"><label runat="server" id="UserEmail" class="form-control" type="text" name="name"></label></h4>
                    <p class="mb-0"></p>
                  </div>
                  <div class="text-center text-sm-right">
                    <span class="badge badge-secondary" style="color:black">User</span>
                    <div class="text-muted"><small>Joined 8 Feb 2022</small></div>
                  </div>
                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="nav-item"><a href="/Loggedin.aspx" class="active nav-link">Settings</a></li>
              </ul>
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  
                  <form class="form" method="POST" action="/user/update" novalidate="">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>User Name</label>
                              <label class="form-control" type="text" name="name">{{ session['user']['username'] }}</label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-3 mb-3">
        <div class="card mb-3">
          <div class="card-body">
            <div class="px-xl-3">
                <form runat="server" >               
                <i class="fa fa-sign-out"></i>
                <asp:Button class="btn btn-block btn-secondary" ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click"/>
                </form>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-body">
            <h6 class="card-title font-weight-bold">Support</h6>
            <p class="card-text">Get fast, free help from our friendly assistants.</p>
            <a type="button" class="btn btn-primary" href="/Loggedin.aspx">Contact Us</a>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
</div>

    
</body>
</html>