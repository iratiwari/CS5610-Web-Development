<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<script runat="server">

    protected void myButton_Click(object sender, EventArgs e)
    {

        message.Text = "Hello World";
    }
</script>
<head runat="server">
    <!-- Latest compiled and minified CSS -->

    <title>Button</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>Button</h1>
        <h2>Button, displays text dynamically on clicking</h2>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. An event handler for clicking has been
         demonstrated here. The button "myButton" is dynamically modified, it displays the text of myLabel on clicking.
         </p>
    <hr />
        <asp:Label ID="message" runat="server"></asp:Label>
        <asp:Button ID="myButton" runat="server" text="My Button" OnClick="myButton_Click"/> 
    </div>
        <h4>Code Snippet</h4>
        <pre>
&lt;script runat="server">

    protected void myButton_Click(object sender, EventArgs e)
    {

        message.Text = "Hello World";
    }
&lt;/script>
        &lt;asp:Label ID="Label1" runat="server">&lt;/asp:Label>
        &lt;asp:Button ID="Button1" runat="server" text="My Button" OnClick="myButton_Click"/> 
        </pre>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/007-button.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    
        </form>

</body>
</html>
