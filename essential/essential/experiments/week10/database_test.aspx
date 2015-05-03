<%@ Page Language="C#"%>

<!DOCTYPE html>
<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1, minimum-scale=1">
    <meta charset="utf-8" />
    <title>SQL Database Retrieval</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div  class="form-control">
    <h3>Experiment 1 - </h3>
        <h2>Description:</h2>
        <p>In this experiment, I successfully connected to the SQLServer database from IIS server and retrieved the read-only table Northwind from the ASP.NET system. 
        </p>
        <br/>
        <p>

        </p>
    <br />
    <h3>Data from Northwind Table</h3>
    <form runat="server" >
        <asp:GridView ID="grid1" runat="server" DataSourceID="employees" AllowPaging="True" AutoGenerateColumns="False"
             BackColor="#0FD8F7" BorderColor="Black" BorderStyle="None" BorderWidth="2px" 
             CellPadding="3" CellSpacing="2" Height="280px" Width="374px">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#0FD8F7" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="middle"/>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="middle"/>
                <SelectedRowStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        <asp:SqlDataSource ID="employees" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindCS %>"
                SelectCommand="SELECT * FROM employees Order By EmployeeID"></asp:SqlDataSource>
    </form>
    <hr />
        <h3>Source Code:</h3>
        <a href="http://net4.ccs.neu.edu/home/ira025/fileview/Default.aspx?~/experiments/week10/database_test.aspx" target="_blank">ASPX Source Code</a>
        <br />
        <br />
        <h3>Reference:</h3>
        <a href="http://www.ccs.neu.edu/teaching/web/accessing_sql.htm" target="_blank">Prof. Rasalas Website for Accessing SQL</a><br />
        <a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm" target="_blank">Prof. Rasalas Website for Connection Strings</a>
        <br />
</div>
</body>
</html>