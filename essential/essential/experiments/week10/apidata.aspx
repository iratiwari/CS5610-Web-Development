<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
        <h1>Google Books API results</h1>
    <script>
        function handleResponse(response) {
            for (var i = 0; i < response.items.length; i++) {
                var item = response.items[i];
                // in production code, item.text should have the HTML entities escaped.
                document.getElementById("content").innerHTML += "<br>" + item.volumeInfo.title;
            }
        }
    </script>
      <script src="https://www.googleapis.com/books/v1/volumes?q=harry+potter&callback=handleResponse"></script>
        <hr />
        <div id="Documentation">
        <h4>About the experiment</h4>
        <p>
        In this experiment I performed a search for 'Harry Potter' in Google Books API and displayed the top 10 results. The data
        from the google books API is in JSON format.
         </p>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
            function handleResponse(response) {
            for (var i = 0; i < response.items.length; i++) {
                var item = response.items[i];
                // in production code, item.text should have the HTML entities escaped.
                document.getElementById("content").innerHTML += "<br>" + item.volumeInfo.title;
            }
        }

        </pre>
        <hr />
            </div>
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/week10/apidata.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <a href="https://developers.google.com/books/docs/v1/using" target="_blank">Using the Google Books API</a>
        <hr />
        </div>
    </form>
</body>
</html>
