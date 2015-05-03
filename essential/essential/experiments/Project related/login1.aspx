<%@ Page Language="C#" %>

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
    <form id="form1" ng-app="myApp" runat="server"  name="myForm" >
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="/images/loveBooks.png" /></li>
          <li><a href="homepage 2.aspx">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>
        <div class="jumbotron">
            <div class="container">
                <div class="col-md-6">
                    <h3>Not registered yet? Sign-up to access more!</h3> 
                    <h4>First Name:</h4>
                    <input type="text" name="firstName" placeholder="First name" data-ng-model="firstName" />
                    <span style="color:red" data-ng-show="myForm.firstName.$dirty && myForm.firstName.$invalid">
                      <span data-ng-show="myForm.firstName.$error.required">First name is required.</span></span>
                    <h4>Last Name:</h4>
                    <input type="text" id="textbox3" placeholder="Last name" />
                    <h4>E-mail :</h4>
                    <input type="email" id="textbox4" placeholder="E-mail" />
                    <h4>Password:</h4>
                    <input type="password" id="textbox5" placeholder="Password" />
                    <button type="button" id="register_button" class="btn btn-primary">Register</button>

                </div>
                <div class="col-md-6">
                <h3>Already registered? Sign-in to access your profile!</h3> <br /><br />
                 <h4>E-mail :</h4>
                    <asp:TextBox runat="server" type="email" id="email" placeholder="E-mail" />
                    <h4>Password:</h4>
                    <input type="password" id="textbox7" placeholder="Password" /><br /><br />
                    <asp:Button runat="server" Text="Login" id="login_button" CssClass="btn btn-success" />
            </div>
         </div>
        </div>
        </form>
    <script>
        var app = angular.module('myApp', []);
        app.controller('validateCtrl', function ($scope) {
            $scope.user = '';
            $scope.email = '';
        });
</script>
</body>
</html>
