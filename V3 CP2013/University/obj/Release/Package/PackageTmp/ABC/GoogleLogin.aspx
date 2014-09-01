<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleLogin.aspx.cs" Inherits="University.ABC.GoogleLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Google Login</title>
    <link href="styles/Site.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
.btngoogle
{
    background-image:url(images/google+login+button.png);
    border:1px solid white;
    cursor:pointer;
    }
</style>
<script type="text/javascript">
    function showimage() {
        var i = document.getElementById("imggoogle");
        i.src = "images/google+logout+button.png";
        i.style.border = "1px solid white";
    }

</script>
</head>
<body>
    <form id="Form1" runat="server"> 
    <div class="page">               
        <div class="main">            
            <div id="loginform">
        <div id="NotLoggedIn" runat="server">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <asp:Button ID="btnLoginToGoogle" runat="server" OnCommand="OpenLogin_Click" 
                            ToolTip="Google_Login" CssClass="btngoogle"
                            CommandArgument="https://www.google.com/accounts/o8/id" Height="34px" 
                            Width="143px" />
                    </td>
                </tr>
            </table>
            <p />
            <asp:Label runat="server" ID="lblAlertMsg" />
        </div>
    </div>
        </div>        
        <asp:Label ID="lblname" runat="server"></asp:Label>
    <asp:Label ID="lblemail" runat="server"></asp:Label>
    <asp:Label ID="lblbirthdate" runat="server"></asp:Label>
    <asp:Label ID="lblphone" runat="server"></asp:Label>
    <asp:Label ID="lblgender" runat="server"></asp:Label>
    <a id="btngmaillogout" runat="server" onserverclick="btngmaillogout_click">   
        <img src="http://accounts.google.com/logout" id="imggoogle" title="Google_LogOut" onerror="javascript:return showimage();" /> 
    </a>
    </div>
  
    </form>
</body>
</html>
