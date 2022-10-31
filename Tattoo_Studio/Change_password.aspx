<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_password.aspx.cs" Inherits="Tattoo_Studio.Change_password" %>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="log/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<form id="dd" runat="server">

			<div class="col-lg-6 col-md-6 form-container">
				<div class="col-lg-8 col-md-12 col-sm-9 col-xs-12 form-box text-center">
					<div class="logo mt-5 mb-3">
						<img src="log/Capture.JPG" width="150px">
					</div>
					<br />
					<div class="heading mb-3">
						<h4>Change Your Password
						</h4>
					</div>
					
						<br />
						<div class="form-input">
							<span><i class="fa fa-user"></i></span>
							<asp:textbox ID="txtuser" runat="server" placeholder="Username"></asp:textbox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
							
						</div>
						<div class="form-input">
							<span><i class="fa fa-envelope"></i></span>
							<asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Email Address" ></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
							
						</div>
						
						<div class="form-input">
							<span><i class="fa fa-lock"></i></span>
							<asp:textbox ID="pwd" runat="server" TextMode="Password"  placeholder=" New Password"></asp:textbox><br />
						
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
							
						</div>
						<div class="form-input">
							<span><i class="fa fa-lock"></i></span>
							<asp:textbox ID="cpwd" runat="server" TextMode="Password"  placeholder="Confirm Password" ></asp:textbox><br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="Password is not match" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpwd" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
						
						</div>
						
						<div class="row mb-3">
							<div class="col-6 d-flex">
								
							</div>
							
						</div>
						<div class="text-left mb-3">
							<div class="btn">
							<asp:Button ID="Button2" runat="server" Text="Change" style="border-radius:5px " OnClick="Button2_Click" />
								</div>
						</div>
						
						<div class="text-white">
							<a href="SignIn1.aspx" class="register-link"  >Login</a>
						</div>
					
				</div>
			</div>

			<div class="col-lg-6 col-md-6 d-none d-md-block image-container"></div>
		
	</form>
</body>
</html>