<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
  protected void Page_Load (object sender, EventArgs e)
  {
        messageLabel.Text = (string)Session["message"];
  }

  protected void rememberButton_Click(object sender, EventArgs e)
  {
      Session["message"] = messageField.Text ;
      messageLabel.Text = (string)Session["message"];
  }

  protected void forgetButton_Click(object sender, EventArgs e)
  {
      Session.RemoveAll();
      messageLabel.Text = null;
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sessions in ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Session</h2>
        <hr />
    <h4>About the experiment</h4>
        <p>
        This experiment was done in conjunction with Prof. Jose's video lecture. This page demonstrates the use of 
        a session in ASP.net. Clicking on the remember button in this page will remember the text being entered 
        in the textbox, and clicking on the forget button removes the text. This is done by creating event handlers
        for each button.

         </p>
        <hr />

        <asp:TextBox ID="messageField" runat="server"></asp:TextBox> <br /> <br />
        <asp:Button ID="rememberButton" runat="server" Text="Remember" OnClick="rememberButton_Click"/>
        <asp:Button ID="forgetButton" runat="server" Text="Forget" OnClick="forgetButton_Click"/> <br />
        <asp:Label ID="messageLabel" runat="server"></asp:Label>

        <hr />
        <h4>Code Snippet</h4>
        <pre>
  protected void Page_Load (object sender, EventArgs e)
  {
       messageLabel.Text = (string)Session["message"];
  }

  protected void rememberButton_Click(object sender, EventArgs e)
  {
      Session["message"] = messageField.Text ;
      messageLabel.Text = (string)Session["message"];
  }

  protected void forgetButton_Click(object sender, EventArgs e)
  {
      Session.RemoveAll();
      messageLabel.Text = null;
  }
        </pre>
        <hr />

        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/012-Session.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </div>
    </form>
</body>
</html>
