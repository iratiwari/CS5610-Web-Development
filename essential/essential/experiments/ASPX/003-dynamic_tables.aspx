<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

    <title>Dynamic Tables</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>Dynamic Tables</h1>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page embeds C# code into an ASPX page. 
         A dynamic table is implemented for displaying an array of courses and their prices. 
         </p>
        <hr />
        <%
            string[] courses = { "Java", "C#", "NodeJS" };
            double[] prices = { 1002, 2003, 3004 };
             %>
        <table class="table table-striped">
            <% for(int i = 0; i < courses.Length; i++)
               { %>
            <tr>
                <td>
                    <% = courses[i] %>
                </td>
                <td>
                    <% = prices[i] %>
                </td>
            </tr>
            <%} %>
        </table>
    </div>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
            &lt;%
            string[] courses = { "Java", "C#", "NodeJS" };
            double[] prices = { 1002, 2003, 3004 };
             %>
        &lt;table class="table table-striped">
            &lt;% for(int i = 0; i < courses.Length; i++)
               { %>
            &lt;tr>
                &lt;td>
                    &lt;% = courses[i] %>
                &lt;/td>
                &lt;td>
                    &lt;% = prices[i] %>
                &lt;/td>
            &lt;/tr>
            &lt;%} %>

        </pre>
         <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/003-dynamic_tables.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
        </form>
</body>
</html>
