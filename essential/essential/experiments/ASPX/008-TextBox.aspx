<%@ Page Language="C#" AutoEventWireup="true"  %>

<!DOCTYPE html>
<script runat="server">

    protected void setMessageButton_Click(object sender, EventArgs e)
    {
        messageLabel.Text = messageField.Text;
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TextBox Component</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>TextBox Component</h2>
        <h4>About the experiment</h4>
        <p>
         This experiment was done in conjunction with Prof. Jose's video lecture. The use of a 
            textbox and an event handler for clicking has been demonstrated here. 
            The label "messageLabel" is dynamically modified, it displays the text of the text typed in the textbox on clicking.
         </p>
        <hr />
        Label : <asp:label ID="messageLabel" runat="server"> </asp:label>
        <asp:Button ID="setMessageButton" runat="server" Text="Set Message" OnClick="setMessageButton_Click" />
        <asp:TextBox ID="messageField" runat="server"></asp:TextBox>
    </div>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
         &lt;script runat="server">

             protected void setMessageButton_Click(object sender, EventArgs e)
              {
                messageLabel.Text = messageField.Text;
              }
         &lt;/script>
        Label : &lt;asp:label ID="Label1" runat="server"> &lt;/asp:label>
        &lt;asp:Button ID="Button1" runat="server" Text="Set Message" OnClick="setMessageButton_Click" />
        &lt;asp:TextBox ID="TextBox1" runat="server">&lt;/asp:TextBox>
</pre>
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/008-TextBox.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />


    </form>
</body>
</html>
