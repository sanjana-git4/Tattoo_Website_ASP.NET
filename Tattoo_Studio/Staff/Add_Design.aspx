<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Add_Design.aspx.cs" Inherits="Tattoo_Studio.Staff.Add_Design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div class=" col-td-4 col-md-offset-3" >
             <div >
             <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add Designs</h2>
           <hr />

                <div class ="form-group"3>
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Design name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtdesign" CssClass ="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdesign" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
           </div>

                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Category Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="txtCatID" CssClass ="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Category" ControlToValidate="txtCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>



               <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="Price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtprice" CssClass ="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtprice" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               </div>
           
              

               <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="txtimage" CssClass ="form-control" runat="server" />
               </div>
           </div>

               
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="ADD Product" OnClick="btnAdd_Click"  />
                        
                    </div>
                </div>
           
           </div>
               
           
       </div>
        </div>
</div>
</asp:Content>
