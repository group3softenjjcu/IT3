<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBChoice.aspx.cs" Inherits="University.DBChoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>University selection</title>    
</head>
<body>
    <form id="form1" runat="server" style="background-color:aqua">
    <div>        
        <label style="font-size:40px; font-family:Andalus">Select your University</label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownListDB" runat="server">
            <asp:ListItem>Choose...</asp:ListItem>
            <asp:ListItem>UOE_University</asp:ListItem>
            <asp:ListItem>ABC_University</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />        
        <asp:Button ID="ButtonConnect" runat="server" Text="Connect" OnClick="ButtonConnect_Click" /> 
    </div>
    </form>
</body>
</html>

