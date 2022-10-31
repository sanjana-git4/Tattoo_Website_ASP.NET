<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Tattoo_Studio.User.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="category/blog.css" />
          <link rel="stylesheet" href="category/Home1.css" />
    <style type="text/css">
          
        .btn{
            margin-left:250px;
            border-radius:5px;
        }
        .grid1
        {
            margin-left:auto;
            margin-right:auto;

        }
  
        .auto-style1 {
            width: 35%;
            height: 74px;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            width: 340px;
        }
        .auto-style6 {
            width: 155px;
            height: 51px;
        }
        .auto-style7 {
            width: 340px;
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section class="blog-starter bg-gray grid">
          <h2 class="fs-poppins fs-300 bold-700">Confirm Your Cart</h2>
        </section>
            <br />
            <br />
        </div>
        <table class="auto-style1" style="margin-left:40%">
            <tr>
                <td class="auto-style6">Order ID</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    Order Date</td>
                <td class="auto-style3">
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>


        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="321px" ShowFooter="True" Width="1000px" CssClass="grid1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="designid" HeaderText="Design Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="design" HeaderText="Design">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="designname" HeaderText="Design Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>


        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" CssClass="btn" ForeColor="#FF9900" Height="35px" Width="253px" Font-Bold="True" Font-Size="20px"/>
        <br />
        <br />
        <br />

    

    </form>
</body>
</html>
