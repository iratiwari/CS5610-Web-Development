<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dbpractice.aspx.cs" Inherits="experiments_week10_Dbparctise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    
    <title>DB practise</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Practising CRUD on DB</h1>
    <div class="container">
        First Name : 
        <br />
    <asp:TextBox ID="firstName" runat="server" ></asp:TextBox>
        <br />
        Last Name :
        <br />
     <asp:TextBox ID="lastName" runat="server" ></asp:TextBox>
        <br /> <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="154px" Width="466px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Practise] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Practise] ([Id], [firstName], [lastName]) VALUES (@Id, @firstName, @lastName)" 
            ProviderName="<%$ ConnectionStrings:DB1ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [Id], [firstName], [lastName] FROM [Practise]" 
            UpdateCommand="UPDATE [Practise] SET [firstName] = @firstName, [lastName] = @lastName WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /> <br /> 
        <asp:Button ID="insert" runat="server" Text="Insert to DB"  OnClick="insert_Click"/>
   
    </div>
    </form>
</body>
</html>
