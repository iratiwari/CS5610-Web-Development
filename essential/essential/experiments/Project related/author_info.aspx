<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookPlanet</title><link rel="icon" type="image/png" href="/images/loveBooks.png" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
   
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="main.css"/>
    <script type="text/javascript">

        var author_name;
        var author;
        var srch;
        var aid;
        var formatteddata = '';
        function onload() {
            var param = {
                "author_name": "<%= Request.Params["id"] %>",
                "key": "K3jsXr7UrSTmjMTCDxdCew"
            };

            $.ajax({
                type: "POST",
                url: "AuthorSearchHandler.ashx",
                data: param,
                success: displayAuthorDetails,
                error: function () {
                    $('#searchAuthorResults').append("<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>");
                }
            });
        }

        function displayAuthorDetails(xmldata, status) {
            author = xmldata.getElementsByTagName('author');
            for (var i = 0; i < author.length; i++) {
                aid = author[i].getAttribute('id');
            }
            if (aid != '') {
                var a_name;
                var a_desc;
                var a_dob;
                var a_hometown;
                var a_img_url;

                $.ajax({
                    url: "AuthorDetailsHandler.ashx",
                    type: "POST",
                    data: { "author_id": aid, "key": "K3jsXr7UrSTmjMTCDxdCew" },
                    success: format_data,
                    error: function () {
                        var message = "<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>";
                        $("#searchAuthorResults").append(message);
                    }
                });

                function format_data(xmldata, status) {
                    a_desc = $(xmldata).find('about').first().text();
                    a_name = $(xmldata).find('name').first().text();
                    a_dob = $(xmldata).find('born_at').first().text();
                    a_img_url = $(xmldata).find('image_url').first().text();
                    a_hometown = $(xmldata).find('hometown').first().text();

                    show_details();
                }

                function show_details() {

                    formatteddata += '<center><div id="author_info"><div id="author_name"><h3>' + a_name + '</h3></div>';
                    formatteddata += '<div id="author_image"><img src="' + a_img_url + '" id="a_image"/></div>';
                    formatteddata += '<div id="author_dob"><b>Date Of Birth : </b>' + a_dob + '</br>';
                    formatteddata += '<b>Home Town : </b>' + a_hometown + '</br></br>';
                    formatteddata += '<b><a href="author_books.aspx?aid=' + aid + '" id="authBookLink" target="_blank">Books by this Author</a></b><br/><br/>';
                    formatteddata += '<br/><div id="desc">' + a_desc + '</div></div></div></center>';
                    formatteddata += '<div class="clear"></div>';

                    $("#searchAuthorResults").append(formatteddata);
                }
            }
            else {
                var message = "<div id='messageID'><div>No author found. Please try for another author.</h2></div>";
                $("#searchAuthorResults").append(message);
            }

        }


    </script>
    
</head>
<body onload="onload()">
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
      </div>
        <div id="searchAuthorResults">

             </div>
    </form>
</body>
</html>
