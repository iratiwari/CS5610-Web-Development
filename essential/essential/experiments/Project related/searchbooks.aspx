<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script src="book_search.js"></script>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="main.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" /></li>
          <li><a href="homepage 2.aspx">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="signup.aspx">Sign Up</a></li>
          <li><a href="login.aspx">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>
    <div class="jumbotron">
     <center>
      <div class="container">
        <h2>Search for a book.</h2>
        <input type="text" id="textbox1" placeholder="Search by title" size="32" />
        <button type="button" id="search_button" class="btn btn-primary btn-lg" onclick="scroll('searchResults')">
            <span class="glyphicon glyphicon-search"></span>Search</button>
          <div id="searchResults">

        </div>
       </div>
     </center>
    </div>
        
        </form>
</body>
    <script type="text/javascript">
        function scroll(val) {
           //alert(document.getElementById(val));
            document.getElementById(val).click();
        }
</script>
    </html>
