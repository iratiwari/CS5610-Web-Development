<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic Loops</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Dynamic Loops</h1>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page embeds C# code into an ASPX page. 
         A dynamic loop is implemented for displaying an array of courses. 
         </p>
    </div>
        <hr />
        <ul>
        <% 
            string[] courses = { "Java", "C#", "NodeJS", "AngularJS" };
            
            for(var i=0; i<courses.Length ; i++)
            {
            %>    <li><% =courses[i]%></li>
            <%}
            
            
            %>
            </ul>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
            &lt;ul>
        &lt;% 
            string[] courses = { "Java", "C#", "NodeJS", "AngularJS" };
            
            for(var i=0; i< courses.Length ; i++)
            {
            %>    &lt;li>&lt;% =courses[i]%>&lt;/li>
            &lt;%}
            
            
            %>
            &lt;/ul>
        </pre>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/002-dynamic_loops.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </form>
</body>
</html>
