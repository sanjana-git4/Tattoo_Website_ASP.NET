<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Tattoo_Studio.User.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <link rel="stylesheet" href="category/payment.css"/>
   
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"/>
     <style>
        .grid1
        {
            margin-left:auto;
            margin-right:auto;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 
        <div class="container">
        <h1>Confirm Your Payment</h1>
        <div class="first-row">
            <div class="owner">
                <h3>Owner</h3>
                <div class="input-field">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="cvv">
                <h3>CVV</h3>
                <div class="input-field">
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="second-row">
            <div class="card-number">
                <h3>Card Number</h3>
                <div class="input-field">
                 <asp:TextBox ID="TextBox3" runat="server" placeholder="xxxx xxxx xxxx xxxx"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="third-row">
            <h3>Card Number</h3>
            <div class="selection">
                <div class="date">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>01</asp:ListItem>
                         <asp:ListItem>02</asp:ListItem>
                         <asp:ListItem>03</asp:ListItem>
                         <asp:ListItem>04</asp:ListItem>
                         <asp:ListItem>05</asp:ListItem>
                         <asp:ListItem>06</asp:ListItem>
                         <asp:ListItem>07</asp:ListItem>
                         <asp:ListItem>08</asp:ListItem>
                         <asp:ListItem>09</asp:ListItem>
                         <asp:ListItem>10</asp:ListItem>
                         <asp:ListItem>11</asp:ListItem>
                         <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                     
                     <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                  
                    </asp:DropDownList>
               
                </div>
                <div class="cards">
                    <img src="image/mc.png" alt=""/>
                    <img src="image/vi.png" alt=""/>
                   
                </div>
            </div>    
        </div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
