<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>

  <head runat="server">
      <title>BookPlanet</title><link rel="icon" type="/image/png" href="/images/loveBooks.png" />
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
    
  </head>

  <body>
    <div class="nav">
      <div class="container">
        <ul class="pull-left">
          <li><img src="/images/loveBooks.png" /></li>
          <li><a href="#">Profile</a></li>
          <li><a href="searchbooks.aspx">Search</a></li>
        </ul>
        <ul class="pull-right">
          <li><a href="login.aspx">Sign Up</a></li>
          <li><a href="login.aspx">Log In</a></li>
          <li><a href="#">Documentation</a></li>
        </ul>
        </div>
      </div>

    <div class="jumbotron">
      <div class="container">
        <h1>Find a book to read.</h1>
        <p>Search for books online, shelve your books, search for book-lovers near you!</p>
        <a href="#book-guides">Learn More</a>
      </div>
    </div> 
    <div class="book-guides">
      <div class="container">
       <h2>Getting started</h2>
        <p>Not sure where to start? Click on search above and find any book you want!</p>
     <div class="row">
      <div class="col-md-4">
        <div class="thumbnail">
         <a href="login.aspx"><img src="/images/review-writing.jpeg"></a>
          </div>
          </div>
         <div class="col-md-4">
        <div class="thumbnail">
         <a href="login.aspx"><img src="/images/shelve-books.jpg"></a>
          </div>
          </div>
         <div class="col-md-4">
        <div class="thumbnail">
         <a href="login.aspx"><img src="/images/book-lover.jpg"></a>
          </div>
          </div>
         </div>
     </div>
    </div>

    <div class="learn-more">
	  <div class="container">
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

  </body>
</html>
