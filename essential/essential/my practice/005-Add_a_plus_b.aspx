<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

    <title>Add</title>
</head>
<body>
    <h2>Adding 2 numbers</h2>
    <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page implements a form in ASP.NET. The 
         runat server element ensures that the value entered is stored at the server. The form field gets highlighted when
         the box next to it is clicked.
         </p>
        <hr />
    <form id="form1" runat="server">
    <div class="container">
    <h1>Add A and B</h1>
         A = <input id ="A" runat="server" /> <br />
         B = <input id ="B" runat="server" /> <br />
        <button>Add A and B</button>
    </div>
        <h4>Code Snippet</h4>
        <pre>
            A = &lt;input id ="Text1" runat="server" /> &lt;br />
            B = &lt;input id ="Text2" runat="server" /> &lt;br />
            &lt;button>Add A and B&lt;button>
        </pre>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/005-Add_a_plus_b.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
        
        </form>
</body>
</html>
