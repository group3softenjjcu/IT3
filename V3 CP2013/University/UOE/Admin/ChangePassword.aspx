<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/UOE/Admin/ChangePassword.aspx.cs" Inherits="University.UOE.ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Change Password System</title>
    <link href="../../Employees/css/screen.css" rel="stylesheet" type="text/css" /> 
</head>
<body id="login-bg">
<form id="form1" runat="server">


<!-- Start: login-holder -->
<div id="login-holder">

	<!-- start logo -->
	<div id="logo-login">
		<a href="#"></a>
	</div>
	<!-- end logo -->
	
	<div class="clear"></div>
	
	<!--  start loginbox ................................................................................. -->
	<div id="loginbox">
	
	<!--  start login-inner -->
	<div id="login-inner2">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr style="">
			<td style="width:200px; padding-bottom:20px; padding-top:20px;"><b style="font-size:14px;">Old Password:* </b></td>
			<td>
                <asp:TextBox ID="TextBoxOldPass" runat="server" CssClass="login-inp" TabIndex="1" TextMode="Password"></asp:TextBox>
			    <!-- html <input type="text"  class="login-inp" /> -->
	        </td>
		</tr>        
		<tr>
			<td style="width:200px; padding-bottom:20px; padding-top:20px;"><b style="font-size:14px;">New Password:*</b></td>
			<td>
			    <!-- html pass <input type="password" value="************"  onfocus="this.value=''" class="login-inp" /> -->
			    <asp:TextBox ID="TextBoxNewPass" runat="server" TextMode="Password" 
                    CssClass="login-inp" TabIndex="2"  ></asp:TextBox>    
		    </td>
		</tr>	

        <tr>
			<td style="width:200px; padding-bottom:20px; padding-top:20px;"><b style="font-size:14px;">Confirm New Password:*</b></td>
			<td>
			    <!-- html pass <input type="password" value="************"  onfocus="this.value=''" class="login-inp" /> -->
			    <asp:TextBox ID="TextBoxConfirmNewPass" runat="server" TextMode="Password" 
                    CssClass="login-inp" TabIndex="2"  ></asp:TextBox>    
		    </td>
		</tr>	
        <tr>
            <td colspan="3" />
            
        </tr>
		<tr>
			<th></th>
			<td>
                <asp:Button ID="Button_Submit" runat="server" Text="Submit" 
                    CssClass="submit-login" OnClick="Button_Submit_Click" />
			</td>
		</tr>
        
        <tr>
            <td colspan="3">
                <asp:HiddenField ID="HiddenFieldUsername" runat="server" />
                <asp:HiddenField ID="HiddenFieldPassword" runat="server" />
                <asp:HiddenField ID="HiddenFieldFullname" runat="server" />
                <asp:HiddenField ID="HiddenFieldPhone" runat="server" />
                <asp:HiddenField ID="HiddenFieldGender" runat="server" />
                <asp:HiddenField ID="HiddenFieldPicture" runat="server" />
                <asp:HiddenField ID="HiddenFieldDeid" runat="server" />
                <asp:HiddenField ID="HiddenFieldDehead" runat="server" />
                <asp:HiddenField ID="HiddenFieldActive" runat="server" />
            </td>
        </tr>
		</table>
	</div>
 	<!--  end login-inner -->
	<div class="clear"></div>
	<a href="../../Admin/Home.aspx" class="forgot-pwd">Index | Home</a>
 </div>
 <!--  end loginbox -->
 
	<!--  start forgotbox ................................................................................... -->
	<div id="forgotbox">
		<div id="forgotbox-text">Please type in your email and we'll reset your password.</div>
		<!--  start forgot-inner -->
		<div id="forgot-inner">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th>Email address:</th>
			<td><input type="text" value=""   class="login-inp" /></td>
		</tr>
		<tr>
			<th> </th>
			<td><input type="button" class="submit-login"  /></td>
		</tr>
		</table>
		</div>
		<!--  end forgot-inner -->
		<div class="clear"></div>
		<a href="" class="back-login">Back to login</a>
	</div>
	<!--  end forgotbox -->

</div>
<!-- End: login-holder -->
</form>
</body>
</html>
