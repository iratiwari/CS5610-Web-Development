<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="project_profile" %>

<!DOCTYPE html>

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
          <li><img src="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" /></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right">
          <li><a href="home.aspx">Logout</a></li>
          <li><a href="http://net4.ccs.neu.edu/home/ira025/story/index.htm?../project/documentation/story.txt">Documentation</a></li>
        </ul>
        </div>
      </div>
        <div class="jumbotron">
            <div class="container">
                <div id ="userdetails">
                   <!--display user first name, e-mail here
                      will be extracted from the users table -->
                </div>
                <div id="userfavourites">
                    <!--//display user favourite books here
                    // will be extracted from the favourites table ; or can add to the table if on the searchresults
                    // the user clicks on add to favourites-->
                </div>
                <div id="userReviews">
                    <!--// add reviews of books the user made
                    // will be extracted from or inserted to the reviews table; depnding on what the user clicks on 
                    // in the details or searchresults page-->
                </div>

                ---> can make this tabbed browsing <--- for the user favourites and reviews
            </div>
        </div>
    </form>
</body>
</html>
