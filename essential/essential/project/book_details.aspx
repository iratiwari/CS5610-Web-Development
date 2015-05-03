<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_details.aspx.cs" Inherits="project_bookdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
   
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="main.css"/>
    
<script type="text/javascript" >
    function onload() {
        var param = {
            q: "<%= Request.Params["id"] %>",
        maxResults: "1"
    };
    $.ajax({
        url: "https://www.googleapis.com/books/v1/volumes?",
        data: param,
        dataType: "jsonp",
        success: function (response) {
            format_data(response);
        },
        error: function (xhr, status, err) {
            document.getElementById('bookDetails').innerHTML =
                '<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>';
        }
    });

}

function format_data(JSONResponse) {
    console.log(JSONResponse);
    var tbody = "<div id='detailsBlock'>";

    tbody += "<br/>";
    var item = JSONResponse.items;
    if (typeof item != 'undefined') {
        var identifier = JSONResponse.items[0].volumeInfo.industryIdentifiers;
        if (typeof identifier != 'undefined') {
            var isbn = JSONResponse.items[0].volumeInfo.industryIdentifiers[0].identifier;
            tbody += "ISBN:  " + isbn + "<br/>";
        }
        tbody += "<br/>";
        var book_name = JSONResponse.items[0].volumeInfo.title;
        tbody += book_name;

        var authorobj = JSONResponse.items[0].volumeInfo.authors;
        if (typeof authorobj != 'undefined') {
            tbody += "<br/><br/>";
            var authors = "";
            for (var j = 0; j < JSONResponse.items[0].volumeInfo.authors.length; j++) {
                authors += JSONResponse.items[0].volumeInfo.authors[j];
            }
            tbody += "Author:  " + authors;
        }


        var desc = JSONResponse.items[0].volumeInfo.description;
        if (desc != undefined) {
            tbody += "<br/>";
            tbody += "Summary:  " + desc + "<br/>";
        }

        tbody += "<br/>";
        tbody += "</div>";
        tbody += "<br/>";
        tbody += '<a href="login2.aspx"' + '<button type=button ; id=fav_button; class= "btn btn-success";> <span class="glyphicon glyphicon-star"></span>Add to Favourites </button>';
        tbody += "<br/>";
        tbody += '<a href="login2.aspx"' + '<button type=button ; id=review_button; class= "btn btn-danger";> <span class="glyphicon glyphicon-pencil"></span>Add a Review </button>';
        


        var imageobj = JSONResponse.items[0].volumeInfo.imageLinks;
        if (typeof imageobj != 'undefined') {
            var divImage = "<div id='imageDiv'>";
            var thumbNail = JSONResponse.items[0].volumeInfo.imageLinks.thumbnail;
            var thumbNailProcessed = "<br/><br/><img src=" + thumbNail + " id='image'>";
            divImage += thumbNailProcessed;
            divImage += "</div>";
        }
        else {
            var divImage = "<div id='imageDiv'>";
            divImage += "<img src='../images/no_image.jpg' id='noImage'/></div>";
        }
    }
    else {
        tbody += "<p>No Description found for this book</p>";
        var divImage = "<div id='imageDiv'>";
        divImage += "<img src='no_thumbnail.jpg' id='noImage3'/></div>";
    }
    document.getElementById('bookDetails').innerHTML = divImage + tbody;
}

</script>
</head>
<body onload="onload()">
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
          <li><a href="http://net4.ccs.neu.edu/home/ira025/story/index.htm?../project/documentation/story.txt">Documentation</a></li>
        </ul>
        </div>
      </div>
        <div id="wrapper">
            <div id="bookDetails"> 
        </div>
            </div>
    </form>
</body>
</html>
