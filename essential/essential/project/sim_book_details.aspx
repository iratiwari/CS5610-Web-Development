<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sim_book_details.aspx.cs" Inherits="project_sim_book_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="main.css"/>
    <script type="text/javascript">
        var i = 0;
        var book_author, book_author_id;
        var formatteddata = '';
        var formattedimage = '';
        function onload() {
            var param = {
                "book_id": "<%= Request.Params["bid"] %>",
                "key": "a3w9Coho28OUro8i2Xagg"
            };
            $.ajax({
                url: "SimBookDetailsHandler.ashx",
                data: param,
                success: displaySimBookDetails,
                error: function (xhr, status, err) {
                    document.getElementById('authorBookDetails').innerHTML = '<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>';
                }
            });

        }

        function displaySimBookDetails(xmldata) {
             
            var book_title = $(xmldata).find('title').first().text();
            var book_desc = $(xmldata).find('description').first().text();
            var book_rating = $(xmldata).find('average_rating').first().text();
            var book_image = $(xmldata).find('image_url').first().text();
            //author??
            formattedimage += '<div id="book_image"><img src="' + book_image + '" id="simBookImage"/></div>';
            formatteddata += '<div id="book_details"><b>Title:  </b>' + book_title;
            if (book_desc != '')
            { formatteddata += '<br/><br/><b>Description:  </b><br/>' + book_desc + '<br/></div>'; }
            else
            { formatteddata += '<br/><br/>No description found for this book.</div>'; }
            formatteddata += "<br/>";
            formatteddata += '<a href="login2.aspx"' + '<button type=button ; id=fav_button; class= "btn btn-success";> <span class="glyphicon glyphicon-star"></span>Add to Favourites </button>';
            formatteddata += "<br/>";
            formatteddata += '<a href="login2.aspx"' + '<button type=button ; id=review_button; class= "btn btn-danger";> <span class="glyphicon glyphicon-pencil"></span>Add a Review </button>';
            document.getElementById('authorBookDetails').innerHTML = formattedimage + formatteddata;
            
        }
</script>
</head>
<body onload="onload()">
    <form id="form1" runat="server">
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><a href="home.aspx"><img src="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" /></a></li>
          <li><a href="home.aspx">Home</a></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="signup2.aspx">Sign Up</a></li>
          <li><a href="login2.aspx">Log In</a></li>
          <li><a href="http://net4.ccs.neu.edu/home/ira025/story/index.htm?../project/documentation/story.txt">Documentation</a></li>
        </ul>
        </div>
      </div>
            <div id="authorBookDetails">

            </div>
    
    </form>
</body>
</html>
