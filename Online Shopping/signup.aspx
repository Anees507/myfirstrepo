<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Library_Managemant.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
      footer{
          background-color:#f2f2f2;
          padding: 25px;
      }
      .carousel-inner img{
          width:100%;
          min-height:200px;
      }
      /* Hide the Carousel text when the screen is less than 600 pixels wide*/
      @media (max-width:600px){
          .carousel-caption{
              display:none;
          }
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center"; style="margin-bottom:2px; background-image:url('Logo/background3.jpg'); background-repeat:no-repeat; background-size:cover";>
              <h1>Online Fashion</h1>
               <p>The Real Indian Online Shopping Site!</p>
               </div>
       <nav class="navbar navbar-inverse">
           <div class="container-fluid">
               <div class="navbar-header">
                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     </button>
                    <a class="navbar-brand" href="WebForm1.aspx">Online Fashion</a>
                   </div>
               <div class="collapse navbar-collapse" id="myNavbar">
                     <ul class="nav navbar-nav">
                       <li class="active"><a href="WebForm1.aspx">Home</a></li>
                         <li><a href="#">About</a></li>
                         <li><a href="#">Contact</a></li>
                         <li><a href="#">Blog</a></li>
                         <li><a href="#">Product</a></li>
                         </ul>
                   <ul class="nav navbar-nav navbar-right">
                       <li><a href="signup.aspx"><span class="glyphicon glyphicon-log-in"> SignUp</span></a></li>
                   </ul>
                   </div>
               </div>
        </nav>
        <div class="container">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">SignUp</div>
                    <div class="panel-body">
                      <div class="row">
                          <div class="col-sm-12">
                              <div class="form-group">
                                  <label>Firstname</label> 
                                  <asp:TextBox ID="txtFirstname" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtFirstname" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group">
                                  <label>Lastname</label>
                                  <asp:TextBox ID="txtLastname" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtLastname" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group">
                                  <label>Email</label>
                                  <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                               </div>
                              <div class="form-group">
                                  <label>Username</label>
                              <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group">
                                  <label>Password</label>
                                  <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group">
                                  <asp:Button ID="btnSignup" CssClass="btn btn-success" runat="server" Text="Register" onclick="btnSignup_Click" />
                              </div>
                      </div>
                    </div>
                        </div>            
                </div>
            </div>
            </div>
        <hr />
         <div class="panel-footer">Panel Footer</div>
           <footer class="container-fluid text-center jumbotron">
               <p>copyright@2021 www.onlinefashion.inc</p>
           </footer>
    </form>
</body>
</html>
