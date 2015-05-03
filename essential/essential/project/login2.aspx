<%@ Page Language="C#"  %>

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
    <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
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
          <li><img src="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" /></li>
          <li><a href="home.aspx">Home</a></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="signup2.aspx">Sign Up</a></li>
          <li><a href="login2.aspx">Log In</a></li>
          <li><a href="../../story/whatisnext.htm?../project/documentation/story.txt">Documentation</a></li>
        </ul>
        </div>
      </div>
        <div class="jumbotron">
            <div class="container">
                
                <div class="col-md-6">
                <h3>Already registered? Sign-in to access your profile!</h3> <br /><br />
                 <h4>E-mail :</h4>
                    <asp:TextBox runat="server" type="email" id="email_sign" placeholder="E-mail" />
                     <asp:RequiredFieldValidator ID="rfvemailSignup" ErrorMessage="*Required Please enter your email" ControlToValidate="email_sign" runat="server" />
                     

                    <h4>Password:</h4>
                    <asp:TextBox id="pass_sign" runat="server" type="password"  placeholder="Password" />
                    <asp:RequiredFieldValidator ID="rfvpassSignup" ErrorMessage="*Required Please enter your password" ControlToValidate="pass_sign" runat="server" />
                   

                    <br /><br />
                    <asp:Button runat="server" Text="Login" id="login_button" CssClass="btn btn-success" />
            </div>
                <div class="col-md-6">
                    <h3>Not registered yet? <a href="signup2.aspx">Sign Up</a> to access more!</h3> 
         </div>
        </div>
            </div>
        </form>
</body>
</html>
