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
          <li><a href="homepage_2.aspx">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Search</a></li>
        </ul>
        <ul class="pull-right" >
          <li><a href="#">Sign Up</a></li>
          <li><a href="#">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>
    <div class="jumbotron">
     <center>
      <div class="container">
        <h2>Search for a book.</h2>
        <input type="text" id="textbox1" placeholder="Search by title" size="32" />
        <button type="button" id="search_button" class="btn btn-primary" onclick="scroll('searchResults')">Search</button>
          <div id="searchResults">

        </div>
       </div>
     </center>
    </div>
         <div id="Documentation">
          <hr />
          <h4>About the experiment</h4>
        <p> This experiment demonstrates the retrieval of data from an API. The first 10 search results from Google books
            API have been displayed along with the book image and author name.
        </p>
        <h4>Code Snippet</h4>
        <pre>
            var APIurl;
$(document).ready(function () {

    $("#search_button").click(function () {

        document.getElementById('searchResults').innerHTML = "";

        title = $("input#textbox1").val().trim();
        CallAPI(title);
    });

    $('input#textbox1').keydown(function (e) {
        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
        if (key == 13) {
            e.preventDefault();
            document.getElementById('searchResults').innerHTML = "";

            title = $("input#textbox1").val().trim();
            CallAPI(title);
        }
    });
});

function CallAPI(title) {
    var param = { q: title };
    $.ajax({
        url: "https://www.googleapis.com/books/v1/volumes?",
        data: param,
        dataType: "jsonp",
        success: function (response) {
            format_data(response);
        },
        error: function (xhr, status, err){
            document.getElementById('searchResults').innerHTML = '<br/><center><h2>The API is not responding right now..Please try again later..</h2></center>';
        }
    });
}


</pre>
             <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/week10/searchbooks2.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <a href="https://developers.google.com/books/docs/v1/using" target="_blank">Using the Google Books API</a>
        <hr />
      
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
