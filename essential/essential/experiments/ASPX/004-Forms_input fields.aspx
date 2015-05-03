<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

    <title>Forms and input fields</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>Forms and input fields</h1>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page implements a form in ASP.NET. The 
         runat server element ensures that the value entered is stored at the server on clicking the button.
         </p>
        <hr />
        Course : <input type="text" runat="server"/> <br />
        Price : $<input runat="server"/> <br />
        <button> Submit </button>

    </div>
        <hr />
        <div class="container">
        <h4>Code Snippet</h4>
        <pre>
            Course : &lt;input type="text" runat="server"/> &lt;br />
        Price : $&lt;input runat="server"/> &lt;br />
        &lt;button> Submit &lt;/button>
        </pre>
        </div>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/004-Forms_input fields.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
        </form>
</body>
</html>
