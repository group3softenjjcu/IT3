<%@ Page Title="" Language="C#" MasterPageFile="~/ABC/Admin/ABCAdmin.Master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="University.ABC.ViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .label
    {
        	float:left;
        	font-size:13px;
        	font-weight:bold;
        	padding:6px 0px;
        	height:20px;    
        	color:Blue; 
        	width:100px;   	
    }
    .style1
    {
        width: 110px;
    }
    .textbox
    {
        height:30px;
        width:220px;	
    }
</style>    
    
           
           <div class="gadget">            
                <div class="titlebar vertsortable_head">
                    <a href="#" class="hidegadget" rel="hide_block"><img src="images/spacer.gif" alt="picture" width="19" height="33" /></a>
                    <h3>Profile</h3>
                </div>
           </div>      
           <div class="gadgetblock">   
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate> 
                        <table style="width:100%; display:block;" >
            <tr>
                <td class="style1"><label for="Username" class="label">UserName: </label></td>
                <td><asp:Label ID="LabelUsername" runat="server" CssClass="label"></asp:Label></td>                
                <td />
            </tr>            
            <tr>
                <td class="style1"><label for="Name" class="label">Full Name: </label></td>
                <td><input id="TextName" name="Name" class="textbox"  runat="server" type="text" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Not Null!!!" Text="Name not null" ControlToValidate="TextName" ></asp:RequiredFieldValidator>
                </td>
            </tr>            
            <tr>
                <td class="style1"><label for="Phone" class="label">Phone: </label></td>
                <td><input id="TextPhone" name="Phone" class="textbox"  runat="server" type="text" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Not Null!!!" Text="Phone not null!!!" ControlToValidate="TextPhone" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" 
             ControlToValidate="TextPhone" ValidationExpression="^\d{8}$" Text="Phone is wrong format!!!"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1"><label for="Email" class="label">Email: </label></td>
                <td><input id="TextEmail" name="Email" class="textbox"  runat="server" type="text" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Not Null!!!" Text="Email not null" ControlToValidate="TextEmail" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1"><label for="CurrentPicture" class="label">Current Photo: </label></td>
                <td><p><asp:Image ID="ImageCurrentPhoto" runat="server" Width="140" Height="140" /></p></td>
                <td />
            </tr>
            <tr>
                <td class="style1"><label for="Picture" class="label">New Photo: </label></td>
                <td><asp:FileUpload ID="FileUploadImage" runat="server" /></td>
                <td />
            </tr>
            <tr>
                <td class="style1"><label for="Department" class="label">Department: </label></td>
                <td>
                    <asp:Label ID="LabelDepartment" runat="server" CssClass="label"></asp:Label>
                </td>
                <td />
            </tr>
            
            <tr>                
                <td class="style1"><label for="Department_head" class="label">Head: </label></td>
                <td>
                    <asp:CheckBox ID="CheckBoxHead" Enabled="false" runat="server" Checked="false" />
                </td>
                <td />
            </tr>            
            <tr>    
                <th></th>            
                <td><asp:ImageButton ID="ImageButtonUpdate" runat="server"  ImageUrl="~/Admin/images/function/update.jpg" OnClick="ImageButtonUpdate_Click"/></td>                                 
                </td>                
            </tr>
            <tr>                
                <td colspan="3">
                    <asp:HiddenField ID="HiddenFieldImage" runat="server" />
                    <asp:HiddenField ID="HiddenFieldPassword" runat="server" />
                     <asp:HiddenField ID="HiddenFieldGender" runat="server" />
                    <asp:HiddenField ID="HiddenFieldDeID" runat="server" />
                    <asp:HiddenField ID="HiddenFieldActive" runat="server" />
                </td>
            </tr>
          </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
          </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
