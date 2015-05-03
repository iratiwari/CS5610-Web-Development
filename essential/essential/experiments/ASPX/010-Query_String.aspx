<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Query String</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Parsing parameters from a query string</h2>
        <h4>About the experiment</h4>
        <p>
        This experiment was done in conjunction with Prof. Jose's video lecture. This page demonstrates the parsing of 
        parsing of parameters in a query string. If you type ?message=*some text here* after .aspx at the title bar,
        you can see that this message is returned and displayed. There is a built-in Request variable in .NET for the same,
        which returns the parameters passed to the query string in the server.
         </p>
        <hr />
        <%= Request["message"] %> 
        <hr />
        <h4>Code Snippet</h4>
        <pre>
             &lt;%= Request["message"] %>
        </pre>
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/010-Query_String.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </div>
    </form>
</body>
</html>
