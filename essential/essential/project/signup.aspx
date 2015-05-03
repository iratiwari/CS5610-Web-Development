<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="/images/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
   
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    <link rel="stylesheet" href="main.css"/>
    <script runat="server">
        protected static readonly string IraCS = ConfigurationManager.ConnectionStrings["IraCS"].ConnectionString;
        protected void register_button_Click(object sender, EventArgs e)
        {
            string firstname = firstName.Text;
            string lastname = lastName.Text;
            string email = email_reg.Text;
            string password = pass_reg.Text;

            try
            {
                using (SqlConnection connection = new SqlConnection(IraCS))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(null, connection);

                    command.CommandText = "INSERT INTO ira025.users (firstname,lastname,email,password) " + "VALUES (@firstname, @lastname, @email, @password)";
                    SqlParameter Param1 = new SqlParameter("@firstname", SqlDbType.VarChar, 50);
                    SqlParameter Param2 = new SqlParameter("@lastname", SqlDbType.VarChar, 50);
                    SqlParameter Param3 = new SqlParameter("@email", SqlDbType.VarChar, 50);
                    SqlParameter Param4 = new SqlParameter("@password", SqlDbType.VarChar, 50);
                    command.Parameters.Add(Param1);
                    command.Parameters.Add(Param2);
                    command.Parameters.Add(Param3);
                    command.Parameters.Add(Param4);
                    Param1.Value = firstName;
                    Param2.Value = lastName;
                    Param3.Value = email_reg;
                    Param4.Value = pass_reg;
                    command.Prepare();
                    command.ExecuteNonQuery();
                    connection.Close();

                }
            }
            catch (Exception ex)
            {
               ex.ToString();
            }
        }
   
    </script>

    
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="/images/loveBooks.png" /></li>
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
                    <h3>Not registered yet? Sign-up to access more!</h3> 
                    <h4>First Name:</h4>
                    <asp:Textbox id="firstName" runat="server" placeholder="First name"  />
                    <asp:RequiredFieldValidator ID="rfvfirstName" ErrorMessage="*Required Please enter your first name" ControlToValidate="firstName" runat="server" />
                    
                    <h4>Last Name:</h4>
                    <asp:Textbox id="lastName" runat="server" placeholder="Last name" />
                    <asp:RequiredFieldValidator ID="rfvlastName" ErrorMessage="*Required Please enter your last name" ControlToValidate="lastName" runat="server" />
                    
                    <h4>E-mail :</h4>
                    <asp:Textbox id="email_reg" runat="server" type="email"  placeholder="E-mail" />
                    <asp:RequiredFieldValidator ID="rfvemailReg" ErrorMessage="*Required Please enter your email" ControlToValidate="email_reg" runat="server" />
                    
                    <h4>Password:</h4>
                    <asp:Textbox id="pass_reg" runat="server" type="password"  placeholder="Password" />
                    <asp:RequiredFieldValidator ID="rfvpass_reg" ErrorMessage="*Required Please enter your password" ControlToValidate="pass_reg" runat="server" />
                    
                    <br />
                    <asp:Button id="register_button" runat="server" type="button"  class="btn btn-primary" Text="Register" OnClick="register_button_Click"></asp:Button>
                    
                    <asp:SqlDataSource ID="users" runat="server" ConnectionString="<%$ ConnectionStrings:IraCS %>"></asp:SqlDataSource>
    
                </div>
                
         </div>
        </div>
        </form>
</body>
</html>
