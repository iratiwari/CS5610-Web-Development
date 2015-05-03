<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
protected void Page_Load (object sender, EventArgs e)
    {
      if(IsPostBack)
      {
          messageLabel.Text = "Hello Again";
      }
    else
      {
          messageLabel.Text = "Hello for the first time";
      }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demonstrating PostBack</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Demonstrating PostBack</h2>
        <h4>About the experiment</h4>
        <p>
        This experiment was done in conjunction with Prof. Jose's video lecture. This page demonstrates the use of 
        the IsPostBack flag in order to determine if the user has visited the page for the first time or not. Clicking
        on the button shows the relevant message. 
         </p>
        <hr />
    <asp:Label ID="messageLabel" runat="server"></asp:Label>
    <asp:Button ID="messageButton" runat="server" text="Post Back"/>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
         protected void Page_Load (object sender, EventArgs e)
       {
          if(IsPostBack)
       {
          messageLabel.Text = "Hello Again";
      }
      else
      {
          messageLabel.Text = "Hello for the first time";
      }
    }
        </pre>
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/011-IsPostBack.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </div>
    </form>
</body>
</html>
