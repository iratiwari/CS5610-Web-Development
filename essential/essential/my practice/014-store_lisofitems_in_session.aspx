<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

protected void Page_Load (object sender, EventArgs e)
    {
        Item shoes = new Item(2, 100, "Black leather shoes");
        Item socks = new Item(1, 10, "Red socks");
        Item pants = new Item(1, 200, "Linen pants");

        List<Item> shoppingCart = new List<Item>();

        shoppingCart.Add(shoes);
        shoppingCart.Add(socks);
        shoppingCart.Add(pants);

        Session["shoppingCart"] = shoppingCart;
            
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
        <table>
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Item> shoppingCart = new List<Item>() ;
                    for (var i = 0; i<shoppingCart.Count; i++)
                    {
                        Item item = shoppingCart.ElementAt(i) ;
                %>
                <tr>
                    <td><%=item.description %></td>
                    <td><%=item.quantity %></td>
                    <td><%=item.price %></td>
                    <td><%=item.quantity * item.price %></td>
                </tr>

                <%        
                    }
                     %>
            </tbody>
        </table>

        Description : <asp:Label ID="descriptionLabel" runat="server"></asp:Label>
        Quantity : <asp:Label ID="qtyLabel" runat="server"></asp:Label> 
        Price : <asp:Label ID="priceLabel" runat="server"></asp:Label> 
    </div>
    </form>
</body>
</html>
