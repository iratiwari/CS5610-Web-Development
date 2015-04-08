<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Embedding C#</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Embedding C#</h1>
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

    </form>
</body>
</html>
