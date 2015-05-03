<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<script runat="server">
 
 protected void Page_Load (object sender, EventArgs e)
    {
        double[] prices = { 10, 20, 30, 40, 50 };
        double total = 0;

        for (int i = 0; i < prices.Length; i++ )
        { 
            total = total + prices[i]; 
        }
            myLabel.Text = "$"+ total;
    }

</script>
<head runat="server">
    <!-- Latest compiled and minified CSS -->

    <title>Add dynamically</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>Labels, adding values dynamically and displaying on a label</h1>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. This page implements a form in ASP.NET. The 
         runat server element ensures that the value entered is stored at the server. The label "myLabel" is dynamically modified,
         it displays the total of an array of prices on page load.
         </p>
        <hr />

         <asp:Label ID="myLabel" runat="server"></asp:Label> 
    </div>
     
        <h4>Code Snippet</h4>
        <pre>
            &lt;script runat="server">
 
 protected void Page_Load (object sender, EventArgs e)
    {
        double[] prices = { 10, 20, 30, 40, 50 };
        double total = 0;

        for (int i = 0; i < prices.Length; i++ )
        { 
            total = total + prices[i]; 
        }
            myLabel.Text = "$"+ total;
    }

&lt;/script>

        </pre>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/006-PageLoad.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    
        </form>

</body>
</html>
