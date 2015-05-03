<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void addButton_Click(object sender, EventArgs e)
    {
        string aStr = afld.Text;
        string bStr = bfld.Text;
        
        double aDbl = Convert.ToDouble(aStr) ;
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl + bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }

    protected void subButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl - bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
        
    }

    protected void mulButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl * bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }

    protected void divButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl / bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple calculator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2> Simple calculator</h2>
        <h4>About the experiment</h4>
        <p>
        This experiment was done in conjunction with Prof. Jose's video lecture. A simple calculator was implemented
        by using what I learned to handle events on clicking buttons, and changing labels dynamically. Clicking on 
        each button displays the corresponding values. 
         </p>
        <hr />
        A = <asp:Textbox ID="afld" runat="server"></asp:Textbox> <br />
        B = <asp:TextBox ID="bfld" runat="server"></asp:TextBox> <br />
        C = <asp:Label ID="cLabel" runat="server"></asp:Label> <br />

        <asp:Button ID="addButton" runat="server" Text="Add A and B" OnClick="addButton_Click" /> 
        <asp:Button ID="subButton" runat="server" Text="Subtract A and B" OnClick="subButton_Click" /> 
        <asp:Button ID="mulButton" runat="server" Text="Multiply A and B" OnClick="mulButton_Click" /> 
        <asp:Button ID="divButton" runat="server" Text="Divide A and B" OnClick="divButton_Click" />
    </div>
        <hr />
        <h4>Code Snippet</h4>
        <pre>
            protected void addButton_Click(object sender, EventArgs e)
    {
        string aStr = afld.Text;
        string bStr = bfld.Text;
        
        double aDbl = Convert.ToDouble(aStr) ;
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl + bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }

    protected void subButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl - bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
        
    }

    protected void mulButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl * bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }

    protected void divButton_Click(object sender, EventArgs e)
    {

        string aStr = afld.Text;
        string bStr = bfld.Text;

        double aDbl = Convert.ToDouble(aStr);
        double bDbl = Convert.ToDouble(bStr);

        double cDbl = aDbl / bDbl;

        string cStr = Convert.ToString(cDbl);

        cLabel.Text = cStr;
    }

        </pre>
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/009-calculator.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </form>
</body>
</html>
