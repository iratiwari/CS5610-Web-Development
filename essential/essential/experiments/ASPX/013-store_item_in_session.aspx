<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

protected void Page_Load (object sender, EventArgs e)
    {
        Item shoes = new Item(2, 100, "Black leather shoes");
        Item socks = new Item(1, 10, "Red socks");
        Item pants = new Item(1, 200, "Linen pants");

        Item shoesInSession = (Item)Session["item"];

        descriptionLabel.Text = shoesInSession.description + "";
        qtyLabel.Text = shoesInSession.quantity + "";
        priceLabel.Text = shoesInSession.price + "";
       
    } 

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Shopping cart</h2>
        <h4>About the experiment</h4>
        <p>
        This experiment was done in conjunction with Prof. Jose's video lecture. An item for a shopping
        cart is displayed. The quantity, price and description of the item can be programmatically modified
        inside the script tag.
         </p>
        <hr />
        Description : <asp:Label ID="descriptionLabel" runat="server"></asp:Label>
        Quantity : <asp:Label ID="qtyLabel" runat="server"></asp:Label> 
        Price : <asp:Label ID="priceLabel" runat="server"></asp:Label> 
        <h4>Code Snippet</h4>
        <pre>
   protected void Page_Load (object sender, EventArgs e)
    {
        Item shoes = new Item(2, 100, "Black leather shoes");
        Item socks = new Item(1, 10, "Red socks");
        Item pants = new Item(1, 200, "Linen pants");

        Item shoesInSession = (Item)Session["item"];

        descriptionLabel.Text = shoesInSession.description + "";
        qtyLabel.Text = shoesInSession.quantity + "";
        priceLabel.Text = shoesInSession.price + "";
       
    } 
    </pre>
        
        <hr />
        <h4><b>Source Code</b></h4>
        <a href="../../fileview/Default.aspx?~/experiments/ASPX/013-store_item_in_session.aspx" target="_blank">View source here</a><br />
        <hr />
        <h4><b>References</b></h4>
        <a href="https://www.youtube.com/user/jannunzi/videos" target="_blank">Prof. Jose's Video Lectures</a><br />
        <hr />
    </div>
    </form>
</body>
</html>
