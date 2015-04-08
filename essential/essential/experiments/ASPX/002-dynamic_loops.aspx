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
    </div>
        <ul>
        <% 
            string[] courses = { "Java", "C#", "NodeJS", "AngularJS" };
            
            for(var i=0; i<courses.Length ; i++)
            {
            %>    <li><% =courses[i]%></li>
            <%}
            
            
            %>
            </ul>
    </form>
</body>
</html>
