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
        Course : <input type="text" runat="server"/> <br />
        Price : $<input runat="server"/> <br />
        <button> Submit </button>

    </div>
        </form>
</body>
</html>
