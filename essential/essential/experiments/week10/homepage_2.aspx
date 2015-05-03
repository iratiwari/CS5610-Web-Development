<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>

  <head runat="server">
      <title>BookPlanet</title><link rel="icon" type="image/png" href="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" />
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
    
  </head>

  <body>
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="http://net4.ccs.neu.edu/home/ira025/images/project/loveBooks.png" /></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Search</a></li>
        </ul>
        <ul class="pull-right">
          <li><a href="#">Sign Up</a></li>
          <li><a href="#">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>

    <div class="jumbotron">
      <div class="container">
        <h1>Find a book to read.</h1>
        <p>Search for books online, shelve your books, search for book-lovers near you!</p>
        <a href="#">Learn More</a>
      </div>
    </div> 
    <div class="book-guides">
      <div class="container">
       <h2>Getting started</h2>
        <p>Not sure where to start? Click on search above and find any book you want!</p>
     <div class="row">
      <div class="col-md-4">
        <div class="thumbnail">
         <a href="#"><img src="http://net4.ccs.neu.edu/home/ira025/images/project/review-writing.jpeg"></a>
          </div>
          </div>
         <div class="col-md-4">
        <div class="thumbnail">
         <a href="#"><img src="http://net4.ccs.neu.edu/home/ira025/images/project/shelve-books.jpg"></a>
          </div>
          </div>
         <div class="col-md-4">
        <div class="thumbnail">
         <a href="#"><img src="http://net4.ccs.neu.edu/home/ira025/images/project/book-lover.jpg"></a>
          </div>
          </div>
         </div>
     </div>
    </div>

    <div class="learn-more">
	  <%--<div class="container">--%>
	  <div class="row">
		<div class="col-md-4">
			<h2>Write Reviews</h2>
			<p>Write about the books you have read, let other users know what you thought about them!</p>
			<h5>"Writing became such a process of discovery" <br /> - Sharon O'Brien</h5>
	      </div>
		  <div class="col-md-4">
			<h2>Shelve your books</h2>
			<p>Add the books you like or read to your profile.</p>
			<h5>"True power is held by the person who possesses the largest bookshelf" <br />-Anthony J. D'Angelo</h5>
		  </div>
		  <div class="col-md-4">
			<h2>Discover other book lovers</h2>
			<p>Find people who love books as much as you do!</p>
			<h5>"You're the same today as you'll be in five years except for the people you meet and the books you read"<br />
                - Charlie "Tremendous" Jones</h5>
		  </div>
	    </div>
	  </div>
      <div id="Documentation">
          <hr />
          <h4>About the experiment</h4>
        <p>
        This experiment shows the basic rendering of the homepage of my project. It is a single page application where the user
         can search for a ook, find out its details, login and like and review books. At the title there is an icon of the website.
         </p>
        <hr />
        <h4>Code Snippet</h4>
        <pre> 
          &lt;div class="nav">
      &lt;div class="container">
        &lt;ul class="pull-left">
          &lt;li>&lt;img src="/images/loveBooks.png" />&lt;/li>
          &lt;li>&lt;a href="#">Profile&lt;/a>&lt;/li>
          &lt;li>&lt;a href="searchbooks.aspx">Search&lt;/a>&lt;/li>
        &lt;/ul>
        &lt;ul class="pull-right">
          &lt;li>&lt;a href="login.aspx">Sign Up&lt;/a>&lt;/li>
          &lt;li>&lt;a href="login.aspx">Log In&lt;/a>&lt;/li>
          &lt;li>&lt;a href="#">Documentation&lt;/a>&lt;/li>
        &lt;/ul>
        &lt;/div>
      &lt;/div>

    &lt;div class="jumbotron">
      &lt;div class="container">
        &lt;h1>Find a book to read.&lt;/h1>
        &lt;p>Search for books online, shelve your books, search for book-lovers near you!&lt;/p>
        &lt;a href="#">Learn More&lt;/a>
      &lt;/div>
    &lt;/div> 
    &lt;div class="book-guides">
      &lt;div class="container">
       &lt;h2>Getting started&lt;/h2>
        &lt;p>Not sure where to start? Click on search above and find any book you want!&lt;/p>
     &lt;div class="row">
      &lt;div class="col-md-4">
        &lt;div class="thumbnail">
         &lt;a href="#">&lt;img src="/images/review-writing.jpeg">&lt;/a>
          &lt;/div>
          &lt;/div>
         &lt;div class="col-md-4">
        &lt;div class="thumbnail">
         &lt;a href="#">&lt;img src="/images/shelve-books.jpg">&lt;/a>
          &lt;/div>
          &lt;/div>
         &lt;div class="col-md-4">
        &lt;div class="thumbnail">
         &lt;a href="#">&lt;img src="/images/book-lover.jpg">&lt;/a>
          &lt;/div>
          &lt;/div>
         &lt;/div>
     &lt;/div>
    &lt;/div>


        </pre>
      <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/week10/homepage_2.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <a href="https://developers.google.com/books/docs/v1/using" target="_blank">Using the Google Books API</a>
        <hr />
        </div>

  </body>
</html>
