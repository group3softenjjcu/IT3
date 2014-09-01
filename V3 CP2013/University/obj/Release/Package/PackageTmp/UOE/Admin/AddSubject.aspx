﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UOE/Admin/Admin.Master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="University.UOE.AddSubject" %>
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
                <h3>New Subject</h3>
              </div>
              <div class="gadgetblock">   
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    
                         <table style="width:100%; display:block;" >
                             <tr>
                                <td class="style1"><label for="Major" class="label">Major: </label></td>
                                <td>
                                    <asp:DropDownList ID="DropDownListMajor" runat="server" Width="180" TabIndex="1">                    
                                    </asp:DropDownList>
                                </td>
                                <td />
                            </tr>
            <tr>
                <td class="style1"><label for="ID" class="label">Subject ID: </label></td>
                <td><input id="TextID" name="ID" class="textbox" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Not Null!!!!" Text="ID not null!!!" ControlToValidate="TextID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1"><label for="Name" class="label">Subject Name: </label></td>
                <td><input id="TextName" name="Name" class="textbox"  runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Not Null!!!" Text="Name not null" ControlToValidate="TextName" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1"><label for="description" class="label">Description: </label></td>
                <td><input id="TextDescription" name="description" class="textbox"  runat="server" type="text" style="width:220px; height:100px;" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Not Null!!!" Text="Not null" ControlToValidate="TextDescription" ></asp:RequiredFieldValidator>
                </td>
            </tr>                                          
            <tr>
                <td class="style1"><label for="Lecturer" class="label">Lecturer: </label></td>
                <td>
                    <asp:DropDownList ID="DropDownListLecturer" runat="server" Width="180" TabIndex="1">                    
                    </asp:DropDownList>
                </td>
                <td />
            </tr>
            <tr>    
                <th></th>            
                <td><asp:ImageButton ID="ImageButtonCreate" runat="server"  ImageUrl="~/UOE/Admin/images/function/create.jpg" OnClick="ImageCreate_Click"/></td>                
                 <td />
            </tr>
          </table>
                    </ContentTemplate>
                  </asp:UpdatePanel>
              </div>
</div>      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
