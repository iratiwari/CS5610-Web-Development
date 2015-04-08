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
        </form>
</body>
</html>
