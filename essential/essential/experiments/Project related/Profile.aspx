<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="/images/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
   
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
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
          <li><a href="login.aspx">Sign Up</a></li>
          <li><a href="login.aspx">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
        <div class="jumbotron"></div>
      </div>
    </form>
</body>
</html>
