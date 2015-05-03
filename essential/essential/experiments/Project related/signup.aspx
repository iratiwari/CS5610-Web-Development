<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="experiments_Project_related_Default" %>

<!DOCTYPE html>

<script runat="server">

   /* protected void login_button_Click(object sender, EventArgs e)
    {
        UserDAO dao = new UserDAO();
        User user = dao.findUserByEmail(email.Text);
        if(user != null)
        {
            Session["currentUser"] = user;
            Response.Redirect("profile.aspx");
        }
        else
        {
            errorLbl.Text = "Cant login";
    * OnClick="login_button_Click"
        }
    }*/
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="/images/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
   
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    <link rel="stylesheet" href="main.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="/images/loveBooks.png" /></li>
          <li><a href="homepage 2.aspx">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="signup.aspx">Sign Up</a></li>
          <li><a href="login.aspx">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>
        <div class="jumbotron">
            <div class="container">
                <div class="col-md-6">
                    
                    <h3>Not registered yet? Sign-up to access more!</h3> 
                    <h4>First Name:</h4>
                    <asp:Textbox id="firstName" runat="server" type="text" placeholder="First name"  />
                    <asp:RequiredFieldValidator ID="rfvfirstName" ErrorMessage="Please enter your first name" ControlToValidate="firstName" runat="server" />
                    <h4>Last Name:</h4>
                    <asp:Textbox id="lastName" runat="server" type="text"  placeholder="Last name" />
                    <asp:RequiredFieldValidator ID="rfvlastName" ErrorMessage="Please enter your first name" ControlToValidate="lastName" runat="server" />
                    <h4>E-mail :</h4>
                    <input type="email" id="email_reg" placeholder="E-mail" />
                    <h4>Password:</h4>
                    <input type="password" id="pass_reg" placeholder="Password" />
                    <button type="button" id="register_button" class="btn btn-primary">Register</button>
                    
                </div>
                
         </div>
        </div>
        </form>
</body>
</html>
