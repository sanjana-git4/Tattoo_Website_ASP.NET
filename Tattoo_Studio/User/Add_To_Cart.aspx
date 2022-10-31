<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_To_Cart.aspx.cs" Inherits="Tattoo_Studio.User.Add_To_Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="category/blog.css" />
      <link rel="stylesheet" href="category/Home1.css" />
    <style>
        .grid1
        {
            margin-left:auto;
            margin-right:auto;

        }
           .btn{
            margin-left:250px;
            border-radius:5px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <section class="blog-starter bg-gray grid">
          <h2 class="fs-poppins fs-300 bold-700">Cart</h2>
        </section>
             <br />
            <br />
            <br />

           <a href="View_design.aspx"> <h3>Continue to shopping.......</h3></a>

        </div>

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
                          <ControlStyle Height="200px" Width="150px" />
                          <ItemStyle Height="20px" HorizontalAlign="Center" Width="10px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="designname" HeaderText="Design Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
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
        <br />
     
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Out" CssClass="btn" ForeColor="#FF9900" Height="35px" Width="253px" Font-Bold="True" Font-Size="20px"/>
    </form>
</body>
</html>
