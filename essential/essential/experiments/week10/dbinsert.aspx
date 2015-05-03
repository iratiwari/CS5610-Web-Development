<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQL - Insert</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

    <script runat="server">
        protected static readonly string IraCS = ConfigurationManager.ConnectionStrings["IraCS"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            int studentID = Convert.ToInt32(Id.Text);
            string firstName = firstname.Text;
            string lastName = lastname.Text;
            float GPA = (float)Convert.ToDouble(gpa.Text);

            try
            {
                using (SqlConnection connection = new SqlConnection(IraCS))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(null, connection);

                    command.CommandText = "INSERT INTO ira025.student (studentid,firstname,lastname,gpa) " + "VALUES (@studentid, @firstname, @lastname, @gpa)";
                    SqlParameter Param1 = new SqlParameter("@studentid", SqlDbType.Int, 10);
                    SqlParameter Param2 = new SqlParameter("@firstname", SqlDbType.NChar, 10);
                    SqlParameter Param3 = new SqlParameter("@lastname", SqlDbType.NChar, 10);
                    SqlParameter Param4 = new SqlParameter("@gpa", SqlDbType.Float, 10);
                    command.Parameters.Add(Param1);
                    command.Parameters.Add(Param2);
                    command.Parameters.Add(Param3);
                    command.Parameters.Add(Param4);
                    Param1.Value = studentID;
                    Param2.Value = firstName;
                    Param3.Value = lastName;
                    Param4.Value = GPA;
                    command.Prepare();
                    command.ExecuteNonQuery();
                    connection.Close();
                    GridView.DataBind();

                }
            }
            catch (Exception ex)
            {
                runresult.Text = ex.ToString();
            }
        }

    </script>
</head>
<body>
    <div class="container">
        <h3>SQL - Insert Data into Database</h3>
        <hr />
        <h4>Description: In this experiment, I am using SQL to insert and displaying the details after that.</h4>
          <br/>
       <h4>The User Enters the Details for a New Student and sees it being displayed in the Student Table</h4>
            <br/>
        <div class="demo">
            <form id="Form1" runat="server">
                <table>
                    <tr>
                        <td>
                            <h5>Student ID:</h5>
                        </td>
                        <td>
                            <asp:TextBox ID="Id" runat="server" Text="Student ID"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h5>First Name:</h5>
                        </td>
                        <td>
                            <asp:TextBox ID="firstname" runat="server" Text="First Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h5>Last Name:</h5>
                        </td>
                        <td>
                            <asp:TextBox ID="lastname" runat="server" Text="Last Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h5>GPA:</h5>
                        </td>
                        <td>
                            <asp:TextBox ID="gpa" runat="server" Text="0"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="runresult" runat="server" Text=" "></asp:Label>
                <hr />
                <h4>Student Table:</h4>
              
        <asp:GridView ID="GridView" runat="server" DataSourceID="student" AllowPaging="True" AutoGenerateColumns="False"
             BackColor="#0FD8F7" BorderColor="Black" BorderStyle="None" BorderWidth="2px" 
             CellPadding="3" CellSpacing="2" Height="280px" Width="374px">
                <Columns>
                    <asp:BoundField DataField="studentid" HeaderText="Student ID" SortExpression="studentid" />
                    <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                    <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa" />
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
        <asp:SqlDataSource ID="student" runat="server" ConnectionString="<%$ ConnectionStrings:IraCS %>"
                SelectCommand="SELECT * FROM ira025.student Order By studentid"></asp:SqlDataSource>
    
           </form>
            <hr />

        </div>
        <hr />
        <h3>Source Code:</h3>
        <a href="http://net4.ccs.neu.edu/home/ira025/fileview/Default.aspx?~/experiments/week10/dbinsert.aspx" target="_blank">ASPX Source Code</a>
        <br />
        <br />
        <h3>Reference:</h3>
        <a href="https://www.connectionstrings.com/sql-server/" target="_blank">Connectionstrings.com</a><br />
        <br />
    </div>
</body>
</html>