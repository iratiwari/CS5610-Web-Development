<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Embedding C#</title>
</head>
<body>
    <div>
    <h1>Embedding C#</h1>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page embeds C# code into an ASPX page.   
         </p>
        <hr />
    <form id="form1" runat="server">
    </div>
        <% var x = 1000;
           var y = 20000;
           var z = x + y; %>
        z = <%=z %>

        <br />

        <script>
            var x = 1000;
            var y = 20000;
            var z = x + y;
            document.write("z = " + z);
        </script>
    <hr />
        <h4>Code Snippet</h4>
        <pre>
            &lt;% var x = 1000;
           var y = 20000;
           var z = x + y; %>
        z = &lt;%=z %>

        &lt;br />

        &lt;script>
            var x = 1000;
            var y = 20000;
            var z = x + y;
            document.write("z = " + z);
        &lt;/script>
        
        </pre>
    <hr />
    <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/001-embed-cs-code.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />

    </form>
</body>
</html>
