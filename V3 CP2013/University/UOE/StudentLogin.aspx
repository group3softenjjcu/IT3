<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/UOE/StudentLogin.aspx.cs" Inherits="University.UOE.StudentLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
    <head>
        <title>Student Login</title>     
        <link rel="stylesheet" href="css/base.css">
	    <link rel="stylesheet" href="css/skeleton.css">
	    <link rel="stylesheet" href="css/layout.css">
    </head>
    <body>		
        <div class="notice">
		    <a href="" class="close">close</a>
		
	    </div>

        <!-- Primary Page Layout -->

	<div class="container">
		
		<div class="form-bg">
			<form runat="server" id="formlogin">
				<h2>Student Login</h2>                                                     
                <p><asp:TextBox ID="TextBoxUserName" placeholder="Name" runat="server"></asp:TextBox></p>           				                
                <p><asp:TextBox ID="TextBoxEmail" placeholder="Email" runat="server"></asp:TextBox></p>           				                                
                <p><asp:TextBox ID="TextBoxPhone" placeholder="Phone" runat="server"></asp:TextBox></p>           				                
                <p><asp:TextBox ID="TextBoxPassword" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox></p>                				
				<label for="remember">
				  <input type="checkbox" id="remember" value="remember" />
				  <span>Remember me on this computer | <a href="StudentHome.aspx"><b>Back Home</b></a></span>
				</label>
                <asp:Button ID="ButtonLogin" runat="server" Text="." CssClass="submit-login" OnClick="ButtonLogin_Click" />
			</form>
		</div>

	
		<p class="forgot">Forgot your password? <a href="">Click here to reset it.</a></p>


	</div><!-- container -->
    <!-- JS  -->
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script type="text/javascript">window.jQuery || document.write("<script src='js/jquery-1.5.1.min.js'>\x3C/script>")</script>
	<script src="js/app.js" type="text/javascript"></script>
    </body>
</html>


