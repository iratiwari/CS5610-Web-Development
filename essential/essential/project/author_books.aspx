<%@ Page Language="C#" AutoEventWireup="true" CodeFile="author_books.aspx.cs" Inherits="project_author_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="main.css"/>
    <script type="text/javascript">
        var formatteddata = '';
        var b_id, b_image;

        function onload() {
            var param = {
                "author_id": "<%= Request.Params["aid"] %>",
                "key": "a3w9Coho28OUro8i2Xagg"
            };
            $.ajax({
                type: "POST",
                url: "AuthorBooksHandler.ashx",
                data: param,
                success: extractBookId,
                error: function (xhr, status, err) {
                    document.getElementById('authorBooksDisplay').innerHTML = '<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>';
                }
            });

        }
        function extractBookId(xmldata) {

            formatteddata += '<center><h1>Author Books</h1><br/><br/><div id="relatedBooks"><br/><br/>';
            var b_title;
            $(xmldata).find('book').each(function () {
                b_id = $(this).find('id').first().text();
                b_image = $(this).find('image_url').first().text();
                b_title = $(this).find('title').first().text();

                formatteddata += '<a href="sim_book_details.aspx?bid=' + b_id + '" target="_blank">';
                formatteddata += '<img src="' + b_image + '" id="authBooksImages" alt="' + b_title + '" title="' + b_title + '"/></a>';
            });
            formatteddata += '</div></center>';
            document.getElementById('authorBooksDisplay').innerHTML = formatteddata;

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
        <div id="jumbotron">
        <div id="authorBooksDisplay">

        </div>
            </div>
      </form>
</body>
</html>
